# HasInversePNTReindexBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:21a5dd2edc16b6daed95ef2ea7d13da668035675363a181544b47010b05a3b56",
  "kind": "def",
  "lexical_name": "HasInversePNTReindexBound",
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
  "slug": "hasinversepntreindexbound--927cad891963010cd7e71ce3",
  "source": {
    "blob": "b8d95eceac5a4e7755bba3c675895979527ea8b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 176,
    "path": "GRWTSK/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variant978d121bf8ed0de1fc089941c0c1febe41cb9e6f19e1fe5447f25b0aad717063.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:927cad891963010cd7e71ce3be342143c4ed0ef6879986e25b6c9dc9f60ed2bb",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variant978d121bf8ed0de1fc089941c0c1febe41cb9e6f19e1fe5447f25b0aad717063.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:21a5dd2edc16b6daed95ef2ea7d13da668035675363a181544b47010b05a3b56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def HasInversePNTReindexBound (cutoffAtEligibleIndex : ℕ → ℕ) : Prop :=
  ∃ C : ℝ, 0 ≤ C ∧ ∃ K₀ : ℕ, 2 ≤ K₀ ∧
    ∀ K : ℕ, K₀ ≤ K →
      (cutoffAtEligibleIndex K : ℝ) ≤
        C * (K : ℝ) * Real.log (K : ℝ)

/-- Exact logarithmic measure of the integer cell `[n,n+1]`. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variant978d121bf8ed0de1fc089941c0c1febe41cb9e6f19e1fe5447f25b0aad717063.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variant978d121bf8ed0de1fc089941c0c1febe41cb9e6f19e1fe5447f25b0aad717063.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8d95eceac5a4e7755bba3c675895979527ea8b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
