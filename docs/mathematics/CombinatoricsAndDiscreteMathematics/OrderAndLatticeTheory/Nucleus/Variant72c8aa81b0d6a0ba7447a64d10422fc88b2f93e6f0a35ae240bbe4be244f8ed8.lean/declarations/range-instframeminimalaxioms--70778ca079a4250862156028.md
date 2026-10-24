# range.instFrameMinimalAxioms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0abe112d274f5f3bb6d04752720f4513659b84aaaf2317481b3eab89f72078cd",
  "kind": "instance",
  "lexical_name": "range.instFrameMinimalAxioms",
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
  "slug": "range-instframeminimalaxioms--70778ca079a4250862156028",
  "source": {
    "blob": "e351a5e3dce69328246d5276067106f435282a51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 211,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nucleus/Variant72c8aa81b0d6a0ba7447a64d10422fc88b2f93e6f0a35ae240bbe4be244f8ed8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:70778ca079a42508621560285e1ccb0db9f44dfd5001dcc9fe9aa246093c192d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nucleus/Variant72c8aa81b0d6a0ba7447a64d10422fc88b2f93e6f0a35ae240bbe4be244f8ed8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0abe112d274f5f3bb6d04752720f4513659b84aaaf2317481b3eab89f72078cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance range.instFrameMinimalAxioms : Frame.MinimalAxioms (range n) where
  inf_sSup_le_iSup_inf a s := by
    simp_rw [← Subtype.coe_le_coe, iSup_subtype', iSup, sSup, n.giAux.gc.u_inf]
    rw [rangeFactorization_coe, ← mem_range.1 a.prop, ← map_inf]
    apply n.monotone
    simp_rw [inf_sSup_eq, sSup_image, iSup_range, iSup_image, iSup_subtype', n.giAux.gc.u_inf,
      le_rfl]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nucleus/Variant72c8aa81b0d6a0ba7447a64d10422fc88b2f93e6f0a35ae240bbe4be244f8ed8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nucleus/Variant72c8aa81b0d6a0ba7447a64d10422fc88b2f93e6f0a35ae240bbe4be244f8ed8.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e351a5e3dce69328246d5276067106f435282a51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
