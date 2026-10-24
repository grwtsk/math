# isConservativeFamilyOfPoints_pointSmallEtale'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ee2cfa39c3953ac7596439105ec6dff6a9587cd2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 148,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/6498c14e4e2789c882d5ca6fc16f5a443252073c86c5d89d931d29ff7a5d9308.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e55e72a2-9f8d-9a5f-9122-4aae554ec592",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:49295514-b8f8-eba9-58c7-92cf5aee954b",
  "kind": "lemma",
  "lexical_name": "isConservativeFamilyOfPoints_pointSmallEtale'",
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
  "slug": "isconservativefamilyofpoints-pointsmalletale--24ff67b2045ab29526af46a0",
  "source": {
    "blob": "ee2cfa39c3953ac7596439105ec6dff6a9587cd2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 148,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/EtalePoint/Variant6498c14e4e2789c882d5ca6fc16f5a443252073c86c5d89d931d29ff7a5d9308.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24ff67b2045ab29526af46a063af2a85da268277758827601c4dda1bef2938fd",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/EtalePoint/Variant6498c14e4e2789c882d5ca6fc16f5a443252073c86c5d89d931d29ff7a5d9308.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49295514-b8f8-eba9-58c7-92cf5aee954b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isConservativeFamilyOfPoints_pointSmallEtale' (S : Scheme.{u}) :
    (ObjectProperty.ofObj (fun (s : S) ↦ pointSmallEtale
      ((SpecToEquivOfField (SeparableClosure (S.residueField s)) _).2
        ⟨s, CommRingCat.ofHom
          (algebraMap (S.residueField s) _)⟩))).IsConservativeFamilyOfPoints :=
  isConservative_pointSmallEtale _ (by
    ext s
    simp only [Equiv.invFun_as_coe, Set.mem_iUnion, Set.mem_range, Set.mem_univ, iff_true]
    exact ⟨s, default, by simp [SpecToEquivOfField]⟩)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/EtalePoint/Variant6498c14e4e2789c882d5ca6fc16f5a443252073c86c5d89d931d29ff7a5d9308.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/EtalePoint/Variant6498c14e4e2789c882d5ca6fc16f5a443252073c86c5d89d931d29ff7a5d9308.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee2cfa39c3953ac7596439105ec6dff6a9587cd2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
