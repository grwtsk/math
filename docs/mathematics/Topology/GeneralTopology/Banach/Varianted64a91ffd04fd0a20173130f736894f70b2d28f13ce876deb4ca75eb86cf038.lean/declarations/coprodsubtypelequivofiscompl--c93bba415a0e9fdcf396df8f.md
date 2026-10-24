# coprodSubtypeLEquivOfIsCompl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8ea46ee7b534e7126e897a2b54170b93c7c57e2c2f75ace1459222ff2e8959e5",
  "kind": "def",
  "lexical_name": "coprodSubtypeLEquivOfIsCompl",
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
  "slug": "coprodsubtypelequivofiscompl--c93bba415a0e9fdcf396df8f",
  "source": {
    "blob": "53e450e01f99cb80b27652433fc3aba66945a8d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 479,
    "line": 469,
    "path": "GRWTSK/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c93bba415a0e9fdcf396df8fbc0bd7f142a053e20debc56847f50a35c8e148ba",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8ea46ee7b534e7126e897a2b54170b93c7c57e2c2f75ace1459222ff2e8959e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 469–479.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def coprodSubtypeLEquivOfIsCompl {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    [CompleteSpace F] (f : E →L[𝕜] F) {G : Submodule 𝕜 F}
    (h : IsCompl (LinearMap.range f) G) [CompleteSpace G] (hker : ker f = ⊥) : (E × G) ≃L[𝕜] F :=
  ContinuousLinearEquiv.ofBijective (f.coprod G.subtypeL)
    (by
      rw [ker_coprod_of_disjoint_range]
      · rw [hker, Submodule.ker_subtypeL, Submodule.prod_bot]
      · rw [Submodule.range_subtypeL]
        exact h.disjoint)
    (by simp only [range_coprod, Submodule.range_subtypeL, h.sup_eq_top])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean#L469).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53e450e01f99cb80b27652433fc3aba66945a8d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
