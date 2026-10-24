# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5d803173dda075b26b7e1ff685dd64f0aa7116fe441ce3ade11270a5b6245a76",
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
  "slug": "instance--98d228ae6ebcd1e4efe6d7a9",
  "source": {
    "blob": "ef65b7291e25696524a52bbf78901a8cba675e46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 99,
    "path": "GRWTSK/Topology/GeneralTopology/NoetherianSpace/Variant72420a3baba3c356e4601216cbbed2d41e2c8f9c49219f22b98628616dc0a87b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:98d228ae6ebcd1e4efe6d7a95c6e615e2356c33e739e7b9c7ecc993482b72882",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NoetherianSpace/Variant72420a3baba3c356e4601216cbbed2d41e2c8f9c49219f22b98628616dc0a87b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5d803173dda075b26b7e1ff685dd64f0aa7116fe441ce3ade11270a5b6245a76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance {α} : NoetherianSpace (CofiniteTopology α) := by
  simp only [noetherianSpace_iff_isCompact, isCompact_iff_ultrafilter_le_nhds,
    CofiniteTopology.nhds_eq, Ultrafilter.le_sup_iff, Filter.le_principal_iff]
  intro s f hs
  rcases f.le_cofinite_or_eq_pure with (hf | ⟨a, rfl⟩)
  · rcases Filter.nonempty_of_mem hs with ⟨a, ha⟩
    exact ⟨a, ha, Or.inr hf⟩
  · exact ⟨a, hs, Or.inl le_rfl⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NoetherianSpace/Variant72420a3baba3c356e4601216cbbed2d41e2c8f9c49219f22b98628616dc0a87b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NoetherianSpace/Variant72420a3baba3c356e4601216cbbed2d41e2c8f9c49219f22b98628616dc0a87b.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef65b7291e25696524a52bbf78901a8cba675e46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
