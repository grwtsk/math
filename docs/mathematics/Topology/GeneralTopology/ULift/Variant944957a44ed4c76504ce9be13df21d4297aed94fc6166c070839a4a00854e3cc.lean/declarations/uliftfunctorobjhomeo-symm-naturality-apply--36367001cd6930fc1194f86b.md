# uliftFunctorObjHomeo_symm_naturality_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9ff68353edc80a641ccade7acb839f4b942446bb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 47,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/944957a44ed4c76504ce9be13df21d4297aed94fc6166c070839a4a00854e3cc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a4441a9d-c2a8-8d9a-5c57-572fd6a8418b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c5b4a59f-825e-e452-9de9-6ff970b29fb1",
  "kind": "lemma",
  "lexical_name": "uliftFunctorObjHomeo_symm_naturality_apply",
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
  "slug": "uliftfunctorobjhomeo-symm-naturality-apply--36367001cd6930fc1194f86b",
  "source": {
    "blob": "9ff68353edc80a641ccade7acb839f4b942446bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 47,
    "path": "GRWTSK/Topology/GeneralTopology/ULift/Variant944957a44ed4c76504ce9be13df21d4297aed94fc6166c070839a4a00854e3cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36367001cd6930fc1194f86beaa0f0f9d8845623cfba399f0fc2b4a118a82715",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ULift/Variant944957a44ed4c76504ce9be13df21d4297aed94fc6166c070839a4a00854e3cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5b4a59f-825e-e452-9de9-6ff970b29fb1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma uliftFunctorObjHomeo_symm_naturality_apply {X Y : TopCat.{u}} (f : X ⟶ Y)
    (x : uliftFunctor.{v}.obj X) :
    Y.uliftFunctorObjHomeo.symm (uliftFunctor.{v}.map f x) =
      f (X.uliftFunctorObjHomeo.symm x) :=
  rfl

/-- The `ULift` functor on categories of topological spaces is compatible
with the one defined on categories of types. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ULift/Variant944957a44ed4c76504ce9be13df21d4297aed94fc6166c070839a4a00854e3cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ULift/Variant944957a44ed4c76504ce9be13df21d4297aed94fc6166c070839a4a00854e3cc.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ff68353edc80a641ccade7acb839f4b942446bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
