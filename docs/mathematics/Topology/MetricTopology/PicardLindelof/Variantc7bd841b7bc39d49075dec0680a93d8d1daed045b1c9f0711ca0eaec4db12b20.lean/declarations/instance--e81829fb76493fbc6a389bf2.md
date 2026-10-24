# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:774089a7f2ed7abdaa715ca49f7513a9e43e53a5ffc21a477c7743dd6ea8b67d",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--e81829fb76493fbc6a389bf2",
  "source": {
    "blob": "453afc79087439710666327a609f0f22e9a6d64c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 93,
    "path": "GRWTSK/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e81829fb76493fbc6a389bf2ce1917954c3e4fd5ebaa38b618582a5ae8e80a6b",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:774089a7f2ed7abdaa715ca49f7513a9e43e53a5ffc21a477c7743dd6ea8b67d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : Inhabited (PicardLindelof E) :=
  ⟨⟨0, 0, 0, ⟨0, le_rfl, le_rfl⟩, 0, 0, 0, 0,
      { ht₀ := by rw [Subtype.coe_mk, Icc_self]; exact mem_singleton _
        hR := le_rfl
        lipschitz := fun t _ => (LipschitzWith.const 0).lipschitzOnWith _
        cont := fun _ _ => by simpa only [Pi.zero_apply] using continuousOn_const
        norm_le := fun t _ x _ => norm_zero.le
        C_mul_le_R := (zero_mul _).le }⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `453afc79087439710666327a609f0f22e9a6d64c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
