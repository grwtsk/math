# TendstoLocallyUniformlyOn.congr_inseparable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:331730e0-21f0-4223-9ff7-d755a4b39cb6",
  "kind": "theorem",
  "lexical_name": "TendstoLocallyUniformlyOn.congr_inseparable",
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
  "slug": "tendstolocallyuniformlyon-congr-inseparable--67f2d0e3f20c6987dce85ab4",
  "source": {
    "blob": "10609935c04dad50b1809882a3466c13694fec00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 321,
    "line": 311,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyUniformConvergence/Variant711ed634256603f465c40cc36bedce211a7bb27baa36e0d2be749c1aa2c50def.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67f2d0e3f20c6987dce85ab40addc11d2797a310de6fb3c8c200378459fa2fd9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocallyUniformConvergence/Variant711ed634256603f465c40cc36bedce211a7bb27baa36e0d2be749c1aa2c50def.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:331730e0-21f0-4223-9ff7-d755a4b39cb6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–321.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem TendstoLocallyUniformlyOn.congr_inseparable {G : ι → α → β}
    (hf : TendstoLocallyUniformlyOn F f p s)
    (hg : ∀ᶠ n in p, ∀ x ∈ s, Inseparable (F n x) (G n x)) : TendstoLocallyUniformlyOn G f p s := by
  have hg : ∀ᶠ x in p ×ˢ 𝓟 s, Inseparable (F x.1 x.2) (G x.1 x.2) := by
    simpa using eventually_prod_principal_iff.2 hg
  rw [tendstoLocallyUniformlyOn_iff_forall_tendsto] at hf ⊢
  refine forall₂_imp (fun x hx hf => ?_) hf
  rw [uniformity_hasBasis_open.tendsto_right_iff] at hf ⊢
  exact fun i hi => (hf i hi).mp ((hg.filter_mono (prod_mono_right p inf_le_right)).mono
    fun x hg hf => ((Inseparable.rfl.prod hg).mem_open_iff hi.2).1 hf)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyUniformConvergence/Variant711ed634256603f465c40cc36bedce211a7bb27baa36e0d2be749c1aa2c50def.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyUniformConvergence/Variant711ed634256603f465c40cc36bedce211a7bb27baa36e0d2be749c1aa2c50def.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10609935c04dad50b1809882a3466c13694fec00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
