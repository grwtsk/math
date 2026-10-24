# SMulCommClass.symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e04a20d-5d4f-03c3-545f-a4bf64724b41",
  "kind": "lemma",
  "lexical_name": "SMulCommClass.symm",
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
  "slug": "smulcommclass-symm--3cdee6e33bf00b1148aee4a8",
  "source": {
    "blob": "8423ea7068ff282e60c77c5fd1acfc86bea0b348",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 186,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variant06c38ecb64d7f24301992ab16e50f5d816ae5334d40c61a4139a2e1c19129af2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3cdee6e33bf00b1148aee4a8e879b6966b2e000117a117ee02f0daf0b70b6f4c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variant06c38ecb64d7f24301992ab16e50f5d816ae5334d40c61a4139a2e1c19129af2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e04a20d-5d4f-03c3-545f-a4bf64724b41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma SMulCommClass.symm (M N α : Type*) [SMul M α] [SMul N α] [SMulCommClass M N α] :
    SMulCommClass N M α where smul_comm a' a b := (smul_comm a a' b).symm

/-- Commutativity of additive actions is a symmetric relation. This lemma can't be an instance
because this would cause a loop in the instance search graph. -/
add_decl_doc VAddCommClass.symm

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variant06c38ecb64d7f24301992ab16e50f5d816ae5334d40c61a4139a2e1c19129af2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variant06c38ecb64d7f24301992ab16e50f5d816ae5334d40c61a4139a2e1c19129af2.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8423ea7068ff282e60c77c5fd1acfc86bea0b348` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
