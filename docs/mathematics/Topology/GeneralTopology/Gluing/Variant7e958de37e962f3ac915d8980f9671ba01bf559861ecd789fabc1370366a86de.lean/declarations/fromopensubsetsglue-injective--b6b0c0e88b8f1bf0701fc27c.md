# fromOpenSubsetsGlue_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c123373-778a-0811-6071-3375380ed7f0",
  "kind": "theorem",
  "lexical_name": "fromOpenSubsetsGlue_injective",
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
  "slug": "fromopensubsetsglue-injective--b6b0c0e88b8f1bf0701fc27c",
  "source": {
    "blob": "802ab5a48fc2bafc2785400233ac230009dd09c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 487,
    "line": 473,
    "path": "GRWTSK/Topology/GeneralTopology/Gluing/Variant7e958de37e962f3ac915d8980f9671ba01bf559861ecd789fabc1370366a86de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6b0c0e88b8f1bf0701fc27c4ea078bf0d75739820c6c6a45f68d273aaa25544",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Gluing/Variant7e958de37e962f3ac915d8980f9671ba01bf559861ecd789fabc1370366a86de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c123373-778a-0811-6071-3375380ed7f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 473–487.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fromOpenSubsetsGlue_injective : Function.Injective (fromOpenSubsetsGlue U) := by
  intro x y e
  obtain ⟨i, ⟨x, hx⟩, rfl⟩ := (ofOpenSubsets U).ι_jointly_surjective x
  obtain ⟨j, ⟨y, hy⟩, rfl⟩ := (ofOpenSubsets U).ι_jointly_surjective y
  -- porting note: now it is `erw`, it was `rw`
  -- see the porting note on `ι_fromOpenSubsetsGlue`
  erw [ι_fromOpenSubsetsGlue_apply, ι_fromOpenSubsetsGlue_apply] at e
  change x = y at e
  subst e
  rw [(ofOpenSubsets U).ι_eq_iff_rel]
  right
  exact ⟨⟨⟨x, hx⟩, hy⟩, rfl, rfl⟩
set_option linter.uppercaseLean3 false in
#align Top.glue_data.from_open_subsets_glue_injective TopCat.GlueData.fromOpenSubsetsGlue_injective

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Gluing/Variant7e958de37e962f3ac915d8980f9671ba01bf559861ecd789fabc1370366a86de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Gluing/Variant7e958de37e962f3ac915d8980f9671ba01bf559861ecd789fabc1370366a86de.lean#L473).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `802ab5a48fc2bafc2785400233ac230009dd09c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
