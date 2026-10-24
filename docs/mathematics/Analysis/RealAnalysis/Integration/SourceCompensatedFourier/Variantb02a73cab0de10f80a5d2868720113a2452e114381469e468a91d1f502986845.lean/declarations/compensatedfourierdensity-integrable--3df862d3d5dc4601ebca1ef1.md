# compensatedFourierDensity_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4c80d39c-07ac-9f50-f1a6-10d5eadb9c34",
  "kind": "theorem",
  "lexical_name": "compensatedFourierDensity_integrable",
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
  "slug": "compensatedfourierdensity-integrable--3df862d3d5dc4601ebca1ef1",
  "source": {
    "blob": "8b13ed25b500fba6c99cb6b160e2299019060dbc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 102,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceCompensatedFourier/Variantb02a73cab0de10f80a5d2868720113a2452e114381469e468a91d1f502986845.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3df862d3d5dc4601ebca1ef1a4c25fee5966137d824422ee4c6289bd8177421b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceCompensatedFourier/Variantb02a73cab0de10f80a5d2868720113a2452e114381469e468a91d1f502986845.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c80d39c-07ac-9f50-f1a6-10d5eadb9c34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compensatedFourierDensity_integrable (A : ℝ) (f : ComplexL2) :
    Integrable (fun ξ => compensatedFourierSymbol A ξ * Complex.normSq (f ξ)) := by
  apply ((L2.integrable_inner (𝕜 := ℂ) f (compensatedFourierMultiplier A f)).re).congr
  filter_upwards [compensatedFourierMultiplier_coe_ae A f] with ξ hξ
  rw [hξ]
  exact inner_real_multiplier _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceCompensatedFourier/Variantb02a73cab0de10f80a5d2868720113a2452e114381469e468a91d1f502986845.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceCompensatedFourier/Variantb02a73cab0de10f80a5d2868720113a2452e114381469e468a91d1f502986845.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b13ed25b500fba6c99cb6b160e2299019060dbc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
