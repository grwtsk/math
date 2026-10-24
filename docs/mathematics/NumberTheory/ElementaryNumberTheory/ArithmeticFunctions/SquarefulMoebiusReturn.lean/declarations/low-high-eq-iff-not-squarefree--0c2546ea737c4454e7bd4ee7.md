# low_high_eq_iff_not_squarefree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:be9d5ba8-3a00-19ac-2503-dd6bc69eef8b",
  "kind": "theorem",
  "lexical_name": "low_high_eq_iff_not_squarefree",
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
  "slug": "low-high-eq-iff-not-squarefree--0c2546ea737c4454e7bd4ee7",
  "source": {
    "blob": "c87aec058ab6ac87d894b33ce8944e59f78ca61b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 20,
    "path": "GRWTSK/NumberTheory/ArithmeticFunctions/SquarefulMoebiusReturn.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c2546ea737c4454e7bd4ee7c686452432c1cda553965dec1a6117f7ec0eb19f",
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

Occurrence: `result:be9d5ba8-3a00-19ac-2503-dd6bc69eef8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem low_high_eq_iff_not_squarefree (U n : ℕ) (hU : U < n) :
    lowMoebiusCoefficient U n = highMoebiusCoefficient U n ↔ ¬Squarefree n := by
  have hreturn := moebius_low_high_coefficient_return U n hU
  have hzero : (μ n : ℤ) = 0 ↔ ¬Squarefree n := by
    simpa only [not_not] using not_congr
      (ArithmeticFunction.moebius_ne_zero_iff_squarefree (n := n))
  constructor
  · intro heq
    apply hzero.mp
    simpa [heq] using hreturn
  · intro hsq
    rw [hzero.mpr hsq] at hreturn
    omega

/-- Every finite weighted squareful-output block cancels in the scalar return.
Both complete source coefficients remain in the literal expression. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefulMoebiusReturn.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ArithmeticFunctions/SquarefulMoebiusReturn.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c87aec058ab6ac87d894b33ce8944e59f78ca61b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
