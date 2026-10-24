# withDensityᵥ_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:48dc4f76-007d-351a-2d72-4858c55b9bfb",
  "kind": "theorem",
  "lexical_name": "withDensityᵥ_add",
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
  "slug": "withdensity-add--ab2cbd5ff6a243009e92c775",
  "source": {
    "blob": "5f4c007dfc99f21978e24db23e09b2b7e8d8d920",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 87,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/WithDensity/Variant239200bdb65ffa935d0144aea26ab2b8f77cc5b153b0448e76f0a751d2142a3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab2cbd5ff6a243009e92c775e6e0b71ec06064b0f300e82d1444e2f68e547263",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/WithDensity/Variant239200bdb65ffa935d0144aea26ab2b8f77cc5b153b0448e76f0a751d2142a3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48dc4f76-007d-351a-2d72-4858c55b9bfb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem withDensityᵥ_add (hf : Integrable f μ) (hg : Integrable g μ) :
    μ.withDensityᵥ (f + g) = μ.withDensityᵥ f + μ.withDensityᵥ g := by
  ext1 i hi
  rw [withDensityᵥ_apply (hf.add hg) hi, VectorMeasure.add_apply, withDensityᵥ_apply hf hi,
    withDensityᵥ_apply hg hi]
  simp_rw [Pi.add_apply]
  rw [integral_add]
  · exact hf.integrableOn
  · exact hg.integrableOn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/WithDensity/Variant239200bdb65ffa935d0144aea26ab2b8f77cc5b153b0448e76f0a751d2142a3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/WithDensity/Variant239200bdb65ffa935d0144aea26ab2b8f77cc5b153b0448e76f0a751d2142a3d.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f4c007dfc99f21978e24db23e09b2b7e8d8d920` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
