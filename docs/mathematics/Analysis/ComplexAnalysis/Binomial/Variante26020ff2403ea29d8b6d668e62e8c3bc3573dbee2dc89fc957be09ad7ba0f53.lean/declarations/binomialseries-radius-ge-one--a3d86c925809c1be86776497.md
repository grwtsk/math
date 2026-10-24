# binomialSeries_radius_ge_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:43e27fa6-8b95-18cd-c74c-924caa869756",
  "kind": "theorem",
  "lexical_name": "binomialSeries_radius_ge_one",
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
  "slug": "binomialseries-radius-ge-one--a3d86c925809c1be86776497",
  "source": {
    "blob": "9621a5307a46a4cdccd35bf6435e45dd5058a973",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 98,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Binomial/Variante26020ff2403ea29d8b6d668e62e8c3bc3573dbee2dc89fc957be09ad7ba0f53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3d86c925809c1be867764972fa7d6666abd7015be7fa4d18c579e60270b8dff",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Binomial/Variante26020ff2403ea29d8b6d668e62e8c3bc3573dbee2dc89fc957be09ad7ba0f53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43e27fa6-8b95-18cd-c74c-924caa869756`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem binomialSeries_radius_ge_one {𝕂 : Type*} [RCLike 𝕂] {𝔸 : Type*} [NormedDivisionRing 𝔸]
    [NormedAlgebra 𝕂 𝔸] {a : 𝕂} :
    1 ≤ (binomialSeries 𝔸 a).radius := by
  by_cases ha : ∀ (k : ℕ), a ≠ k
  · rw [binomialSeries_radius_eq_one ha]
  · push Not at ha
    rcases ha with ⟨k, rfl⟩
    simp [binomialSeries_radius_eq_top_of_nat]

namespace Complex

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Binomial/Variante26020ff2403ea29d8b6d668e62e8c3bc3573dbee2dc89fc957be09ad7ba0f53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Binomial/Variante26020ff2403ea29d8b6d668e62e8c3bc3573dbee2dc89fc957be09ad7ba0f53.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9621a5307a46a4cdccd35bf6435e45dd5058a973` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
