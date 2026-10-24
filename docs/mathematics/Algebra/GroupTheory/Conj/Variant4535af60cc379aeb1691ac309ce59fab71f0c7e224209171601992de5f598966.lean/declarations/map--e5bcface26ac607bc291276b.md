# map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:233fcae8b02c656e1bfa76f4fa88f75ab8292326db07f85eab9bf895a4d1b5c5",
  "kind": "def",
  "lexical_name": "map",
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
  "slug": "map--e5bcface26ac607bc291276b",
  "source": {
    "blob": "d22ffdea080d876b8ff67ca2f449315b0c0b12a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 213,
    "path": "GRWTSK/Algebra/GroupTheory/Conj/Variant4535af60cc379aeb1691ac309ce59fab71f0c7e224209171601992de5f598966.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e5bcface26ac607bc291276bfe6a20db65c17ac0bdaf6fe8c5bf946293ee56c2",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Conj/Variant4535af60cc379aeb1691ac309ce59fab71f0c7e224209171601992de5f598966.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:233fcae8b02c656e1bfa76f4fa88f75ab8292326db07f85eab9bf895a4d1b5c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def map (f : α →* β) : ConjClasses α → ConjClasses β :=
  Quotient.lift (ConjClasses.mk ∘ f) fun _ _ ab => mk_eq_mk_iff_isConj.2 (f.map_isConj ab)
#align conj_classes.map ConjClasses.map

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Conj/Variant4535af60cc379aeb1691ac309ce59fab71f0c7e224209171601992de5f598966.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Conj/Variant4535af60cc379aeb1691ac309ce59fab71f0c7e224209171601992de5f598966.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d22ffdea080d876b8ff67ca2f449315b0c0b12a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
