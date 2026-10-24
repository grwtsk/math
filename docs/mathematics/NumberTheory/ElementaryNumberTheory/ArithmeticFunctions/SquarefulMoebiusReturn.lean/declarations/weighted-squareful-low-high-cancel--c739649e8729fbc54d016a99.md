# weighted_squareful_low_high_cancel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fa68cce8-4ab6-a324-02d7-0210600c2721",
  "kind": "theorem",
  "lexical_name": "weighted_squareful_low_high_cancel",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "weighted-squareful-low-high-cancel--c739649e8729fbc54d016a99",
  "source": {
    "blob": "c87aec058ab6ac87d894b33ce8944e59f78ca61b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 36,
    "path": "GRWTSK/NumberTheory/ArithmeticFunctions/SquarefulMoebiusReturn.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c739649e8729fbc54d016a994e5c1d743f13b2924200f58f12d08f0ae715ddd4",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefulMoebiusReturn.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa68cce8-4ab6-a324-02d7-0210600c2721`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_squareful_low_high_cancel (U : ℕ) (S : Finset ℕ) (c : ℕ → ℝ)
    (hS : ∀ n ∈ S, U < n ∧ ¬Squarefree n) :
    ∑ n ∈ S, c n * (Int.cast (highMoebiusCoefficient U n - lowMoebiusCoefficient U n) : ℝ) =
      0 := by
  apply Finset.sum_eq_zero
  intro n hn
  have heq := (low_high_eq_iff_not_squarefree U n (hS n hn).1).mpr (hS n hn).2
  have hdiff : highMoebiusCoefficient U n - lowMoebiusCoefficient U n = 0 :=
    sub_eq_zero.mpr heq.symm
  simp only [hdiff, Int.cast_zero, mul_zero]

end GRWTSK.NumberTheory.ArithmeticFunctions
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefulMoebiusReturn.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ArithmeticFunctions/SquarefulMoebiusReturn.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c87aec058ab6ac87d894b33ce8944e59f78ca61b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
