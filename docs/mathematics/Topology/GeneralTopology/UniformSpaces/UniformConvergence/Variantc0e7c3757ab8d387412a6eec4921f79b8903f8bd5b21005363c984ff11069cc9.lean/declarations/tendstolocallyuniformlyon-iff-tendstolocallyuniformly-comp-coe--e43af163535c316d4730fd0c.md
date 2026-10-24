# tendstoLocallyUniformlyOn_iff_tendstoLocallyUniformly_comp_coe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:95dcefac-757a-1e6f-9c19-9419a1d010f1",
  "kind": "theorem",
  "lexical_name": "tendstoLocallyUniformlyOn_iff_tendstoLocallyUniformly_comp_coe",
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
  "slug": "tendstolocallyuniformlyon-iff-tendstolocallyuniformly-comp-coe--e43af163535c316d4730fd0c",
  "source": {
    "blob": "1f1740433b5b510b7e927aaa21ca658432fb9cf1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 642,
    "line": 636,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergence/Variantc0e7c3757ab8d387412a6eec4921f79b8903f8bd5b21005363c984ff11069cc9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e43af163535c316d4730fd0ca6bc007e376af08e50385bd2637808bfbf180b29",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/UniformConvergence/Variantc0e7c3757ab8d387412a6eec4921f79b8903f8bd5b21005363c984ff11069cc9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95dcefac-757a-1e6f-9c19-9419a1d010f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 636–642.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendstoLocallyUniformlyOn_iff_tendstoLocallyUniformly_comp_coe :
    TendstoLocallyUniformlyOn F f p s ↔
      TendstoLocallyUniformly (fun i (x : s) => F i x) (f ∘ (↑)) p := by
  simp only [tendstoLocallyUniformly_iff_forall_tendsto, Subtype.forall', tendsto_map'_iff,
    tendstoLocallyUniformlyOn_iff_forall_tendsto, ← map_nhds_subtype_val, prod_map_right]; rfl
#align tendsto_locally_uniformly_on_iff_tendsto_locally_uniformly_comp_coe tendstoLocallyUniformlyOn_iff_tendstoLocallyUniformly_comp_coe

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/UniformConvergence/Variantc0e7c3757ab8d387412a6eec4921f79b8903f8bd5b21005363c984ff11069cc9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergence/Variantc0e7c3757ab8d387412a6eec4921f79b8903f8bd5b21005363c984ff11069cc9.lean#L636).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f1740433b5b510b7e927aaa21ca658432fb9cf1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
