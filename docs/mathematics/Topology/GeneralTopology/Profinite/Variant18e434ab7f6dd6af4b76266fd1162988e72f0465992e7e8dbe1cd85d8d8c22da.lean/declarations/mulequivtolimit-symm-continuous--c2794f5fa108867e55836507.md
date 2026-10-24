# mulEquivToLimit_symm_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30c075fd-061b-9132-bbba-4a89aa9d1a21",
  "kind": "lemma",
  "lexical_name": "mulEquivToLimit_symm_continuous",
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
  "slug": "mulequivtolimit-symm-continuous--c2794f5fa108867e55836507",
  "source": {
    "blob": "20dad200a3109fc423a577894f4fa5b00d2951ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 317,
    "line": 303,
    "path": "GRWTSK/Topology/GeneralTopology/Profinite/Variant18e434ab7f6dd6af4b76266fd1162988e72f0465992e7e8dbe1cd85d8d8c22da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2794f5fa108867e558365070f804162c0fa5b2e6eeed355460e21e16fcfec81",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Profinite/Variant18e434ab7f6dd6af4b76266fd1162988e72f0465992e7e8dbe1cd85d8d8c22da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30c075fd-061b-9132-bbba-4a89aa9d1a21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 303–317.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mulEquivToLimit_symm_continuous [IsGalois k K] : Continuous (mulEquivToLimit k K).symm := by
  apply continuous_of_continuousAt_one _ (continuousAt_def.mpr _ )
  simp only [map_one, krullTopology_mem_nhds_one_iff_of_isGalois, ← MulEquiv.coe_toEquiv_symm,
    ← MulEquiv.toEquiv_eq_coe, ← (mulEquivToLimit k K).image_eq_preimage]
  intro H ⟨L, le⟩
  rw [mem_nhds_iff]
  use mulEquivToLimit k K '' L.1.fixingSubgroup
  simp only [isOpen_mulEquivToLimit_image_fixingSubgroup L]
  simpa [one_mem] using Set.image_subset_iff.mp (Set.image_mono le)

variable (k K)

/-- The `ContinuousMulEquiv` between `K ≃ₐ[k] K` and `lim Gal(L/k)` where `L` is a
  `FiniteGaloisIntermediateField` ordered by inverse inclusion, obtained
  from `InfiniteGalois.mulEquivToLimit` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Profinite/Variant18e434ab7f6dd6af4b76266fd1162988e72f0465992e7e8dbe1cd85d8d8c22da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Profinite/Variant18e434ab7f6dd6af4b76266fd1162988e72f0465992e7e8dbe1cd85d8d8c22da.lean#L303).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20dad200a3109fc423a577894f4fa5b00d2951ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
