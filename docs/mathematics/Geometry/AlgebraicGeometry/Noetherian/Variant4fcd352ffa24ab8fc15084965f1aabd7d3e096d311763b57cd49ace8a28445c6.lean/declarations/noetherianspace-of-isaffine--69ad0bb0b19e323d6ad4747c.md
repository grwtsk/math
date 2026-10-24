# noetherianSpace_of_isAffine

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "14760a6a83ff21c5a23aedd87bbfd551e8eebb8f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 183,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4f/4fcd352ffa24ab8fc15084965f1aabd7d3e096d311763b57cd49ace8a28445c6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:37d69aa0-6aa4-5e5f-dd0e-1f47db427a5a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ad830f89-3d0d-12c4-7bae-eecaacf1855c",
  "kind": "lemma",
  "lexical_name": "noetherianSpace_of_isAffine",
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
  "slug": "noetherianspace-of-isaffine--69ad0bb0b19e323d6ad4747c",
  "source": {
    "blob": "14760a6a83ff21c5a23aedd87bbfd551e8eebb8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 183,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Noetherian/Variant4fcd352ffa24ab8fc15084965f1aabd7d3e096d311763b57cd49ace8a28445c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69ad0bb0b19e323d6ad4747c8cb2f6189b164b41da2eab8110680bf122e818e2",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Noetherian/Variant4fcd352ffa24ab8fc15084965f1aabd7d3e096d311763b57cd49ace8a28445c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad830f89-3d0d-12c4-7bae-eecaacf1855c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma noetherianSpace_of_isAffine [IsAffine X] [IsNoetherianRing Γ(X, ⊤)] :
    NoetherianSpace X :=
  (noetherianSpace_iff_of_homeomorph X.isoSpec.inv.homeomorph).mp inferInstance

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Noetherian/Variant4fcd352ffa24ab8fc15084965f1aabd7d3e096d311763b57cd49ace8a28445c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Noetherian/Variant4fcd352ffa24ab8fc15084965f1aabd7d3e096d311763b57cd49ace8a28445c6.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14760a6a83ff21c5a23aedd87bbfd551e8eebb8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
