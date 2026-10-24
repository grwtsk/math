# isConstant_iff_isIso_counit_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fed3e71146f34e78917b7d66b56abaf7ac866071",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 108,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/4594d84263384cd50eec2549c036e5e257808ea1c2a8aaebc8b350cd671cd150.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7351e8a8-df03-5660-fdca-13fdb94f6859",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4e6344a6-9e9f-51dc-a064-7d324bbc17e9",
  "kind": "lemma",
  "lexical_name": "isConstant_iff_isIso_counit_app",
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
  "slug": "isconstant-iff-isiso-counit-app--7a940e4caa8c98fc945674f3",
  "source": {
    "blob": "fed3e71146f34e78917b7d66b56abaf7ac866071",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 108,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant4594d84263384cd50eec2549c036e5e257808ea1c2a8aaebc8b350cd671cd150.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a940e4caa8c98fc945674f357fd3777ba6a5bf82d5c944a005e9fcded34f3d5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant4594d84263384cd50eec2549c036e5e257808ea1c2a8aaebc8b350cd671cd150.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e6344a6-9e9f-51dc-a064-7d324bbc17e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isConstant_iff_isIso_counit_app [(constantSheaf J D).Faithful] [(constantSheaf J D).Full]
    (F : Sheaf J D) {T : C} (hT : IsTerminal T) :
      IsConstant J F ↔ (IsIso <| (constantSheafAdj J D hT).counit.app F) :=
  ⟨fun _ ↦ inferInstance, fun _ ↦ ⟨_, ⟨asIso <| (constantSheafAdj J D hT).counit.app F⟩⟩⟩

/--
A variant of `isConstant_iff_isIso_counit_app` for a general left adjoint to evaluation at a
terminal object.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant4594d84263384cd50eec2549c036e5e257808ea1c2a8aaebc8b350cd671cd150.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant4594d84263384cd50eec2549c036e5e257808ea1c2a8aaebc8b350cd671cd150.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fed3e71146f34e78917b7d66b56abaf7ac866071` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
