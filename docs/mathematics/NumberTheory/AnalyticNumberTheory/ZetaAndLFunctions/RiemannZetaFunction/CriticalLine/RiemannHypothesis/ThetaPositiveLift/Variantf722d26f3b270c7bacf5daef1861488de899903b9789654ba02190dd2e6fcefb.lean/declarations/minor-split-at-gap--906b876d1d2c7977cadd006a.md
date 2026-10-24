# minor_split_at_gap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6429b92b-d6b9-89da-58e5-10ceb686b210",
  "kind": "theorem",
  "lexical_name": "minor_split_at_gap",
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
  "slug": "minor-split-at-gap--906b876d1d2c7977cadd006a",
  "source": {
    "blob": "7f800c92af212121ac90208265fd4f60f1d94b38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 68,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf722d26f3b270c7bacf5daef1861488de899903b9789654ba02190dd2e6fcefb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:906b876d1d2c7977cadd006aee39b364193781054ec6c7be3f9cdf9e30cfc9e3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf722d26f3b270c7bacf5daef1861488de899903b9789654ba02190dd2e6fcefb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6429b92b-d6b9-89da-58e5-10ceb686b210`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem minor_split_at_gap (a : ℕ → ℝ) {k : ℕ}
    (r c : Fin k ↪o ℕ) (l : ℕ) (hl0 : 0 < l) (hl : l < k)
    (hgap : c ⟨l - 1, by omega⟩ < r ⟨l, hl⟩) :
    minor a r c =
      minor a (Quadratic.take r l hl.le) (Quadratic.take c l hl.le) *
      minor a (Quadratic.drop r l) (Quadratic.drop c l) := by
  apply Quadratic.det_split _ l hl.le
  left
  intro i j
  apply entry_below
  have hj : (⟨j.val, by omega⟩ : Fin k) ≤ ⟨l - 1, by omega⟩ := by
    change j.val ≤ l - 1
    have := j.isLt
    omega
  have hi : (⟨l, hl⟩ : Fin k) ≤ ⟨l + i.val, by omega⟩ := by
    change l ≤ l + i.val
    omega
  exact (c.monotone hj).trans_lt (hgap.trans_le (r.monotone hi))

/-- A non-separated selection is either structurally zero, reducible at an
ordered gap, or a diagonally feasible overlapping residual selection. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf722d26f3b270c7bacf5daef1861488de899903b9789654ba02190dd2e6fcefb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf722d26f3b270c7bacf5daef1861488de899903b9789654ba02190dd2e6fcefb.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f800c92af212121ac90208265fd4f60f1d94b38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
