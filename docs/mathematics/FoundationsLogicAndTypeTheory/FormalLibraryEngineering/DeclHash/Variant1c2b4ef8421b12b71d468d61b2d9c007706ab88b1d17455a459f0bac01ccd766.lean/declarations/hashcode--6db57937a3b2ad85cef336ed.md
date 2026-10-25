# hashCode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:20ee656c5e33d6eee2a16471cebb60e1a1ad76b94238604d469ad11071e180d7",
  "kind": "def",
  "lexical_name": "hashCode",
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
  "slug": "hashcode--6db57937a3b2ad85cef336ed",
  "source": {
    "blob": "c206a9aeae8c49d3b1b4f401c10c038acd4adf1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 39,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclHash/Variant1c2b4ef8421b12b71d468d61b2d9c007706ab88b1d17455a459f0bac01ccd766.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6db57937a3b2ad85cef336ed990628faec947794ffbf64e4c91a240881d4a318",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclHash/Variant1c2b4ef8421b12b71d468d61b2d9c007706ab88b1d17455a459f0bac01ccd766.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:20ee656c5e33d6eee2a16471cebb60e1a1ad76b94238604d469ad11071e180d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def hashCode (code : Code pu) : UInt64 :=
  match code with
  | .let decl k => mixHash (mixHash (hash decl.fvarId) (hash decl.type)) (mixHash (hash decl.value) (hashCode k))
  | .fun decl k _ | .jp decl k =>
    mixHash (mixHash (mixHash (hash decl.fvarId) (hash decl.type)) (mixHash (hashCode decl.value) (hashCode k))) (hash decl.params)
  | .return fvarId => hash fvarId
  | .unreach type => hash type
  | .jmp fvarId args => mixHash (hash fvarId) (hash args)
  | .cases c => mixHash (mixHash (hash c.discr) (hash c.resultType)) (hashAlts c.alts)
  | .sset fvarId i offset y ty k _ =>
    mixHash (mixHash (hash fvarId) (hash i)) (mixHash (mixHash (hash offset) (hash y)) (mixHash (hash ty) (hashCode k)))
  | .oset fvarId offset y k _ =>
    mixHash (mixHash (hash fvarId) (hash offset)) (mixHash (hash y) (hashCode k))
  | .uset fvarId offset y k _ =>
    mixHash (mixHash (hash fvarId) (hash offset)) (mixHash (hash y) (hashCode k))
  | .setTag fvarId cidx k _ =>
    mixHash (hash fvarId) (mixHash (hash cidx) (hashCode k))
  | .inc fvarId n check persistent k _ =>
    mixHash (mixHash (hash fvarId) (hash n)) (mixHash (mixHash (hash persistent) (hash check)) (hashCode k))
  | .dec fvarId n check persistent objs? k _ =>
    mixHash (mixHash (hash fvarId) (hash n)) (mixHash (mixHash (hash persistent) (hash check)) (mixHash (hash objs?) (hashCode k)))
  | .del fvarId k _ =>
    mixHash (hash fvarId) (hashCode k)

end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclHash/Variant1c2b4ef8421b12b71d468d61b2d9c007706ab88b1d17455a459f0bac01ccd766.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclHash/Variant1c2b4ef8421b12b71d468d61b2d9c007706ab88b1d17455a459f0bac01ccd766.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c206a9aeae8c49d3b1b4f401c10c038acd4adf1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
