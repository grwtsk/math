# Integrable.ae_eq_of_withDensityᵥ_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef3f4584-5a1e-cc29-eed8-6806d226ceea",
  "kind": "theorem",
  "lexical_name": "Integrable.ae_eq_of_withDensityᵥ_eq",
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
  "slug": "integrable-ae-eq-of-withdensity-eq--872ee6432d0ec54382a6fb7a",
  "source": {
    "blob": "f13be07516fd409d36a16c9e5418feb90f4dcbc0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 151,
    "path": "GRWTSK/Analysis/MeasureTheory/WithDensityVectorMeasure/Variantab372a3dc39242b85fa006c912c708c9b6b5fca96a993b3d79b2668cb4583033.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:872ee6432d0ec54382a6fb7a499b49e67abafaaa1e42e18d6fdab33e1f3e6630",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/WithDensityVectorMeasure/Variantab372a3dc39242b85fa006c912c708c9b6b5fca96a993b3d79b2668cb4583033.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef3f4584-5a1e-cc29-eed8-6806d226ceea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Integrable.ae_eq_of_withDensityᵥ_eq {f g : α → E} (hf : Integrable f μ)
    (hg : Integrable g μ) (hfg : μ.withDensityᵥ f = μ.withDensityᵥ g) : f =ᵐ[μ] g := by
  refine' hf.ae_eq_of_forall_set_integral_eq f g hg fun i hi _ => _
  rw [← withDensityᵥ_apply hf hi, hfg, withDensityᵥ_apply hg hi]
#align measure_theory.integrable.ae_eq_of_with_densityᵥ_eq MeasureTheory.Integrable.ae_eq_of_withDensityᵥ_eq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/WithDensityVectorMeasure/Variantab372a3dc39242b85fa006c912c708c9b6b5fca96a993b3d79b2668cb4583033.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/WithDensityVectorMeasure/Variantab372a3dc39242b85fa006c912c708c9b6b5fca96a993b3d79b2668cb4583033.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f13be07516fd409d36a16c9e5418feb90f4dcbc0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
