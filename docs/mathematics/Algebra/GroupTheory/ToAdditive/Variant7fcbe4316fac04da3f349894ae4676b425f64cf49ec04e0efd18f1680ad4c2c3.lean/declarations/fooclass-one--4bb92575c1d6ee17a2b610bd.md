# FooClass_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ced0c799ee9f3ae3a343bff3128242ab51ef6213161604b930090807cd12c449",
  "kind": "instance",
  "lexical_name": "FooClass_one",
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
  "slug": "fooclass-one--4bb92575c1d6ee17a2b610bd",
  "source": {
    "blob": "2fabdae49e9abb464a9e9c1eaeff99852aad0cdb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 279,
    "path": "GRWTSK/Algebra/GroupTheory/ToAdditive/Variant7fcbe4316fac04da3f349894ae4676b425f64cf49ec04e0efd18f1680ad4c2c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4bb92575c1d6ee17a2b610bd45351ea7c13046215449a4c215367264eef3a459",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ToAdditive/Variant7fcbe4316fac04da3f349894ae4676b425f64cf49ec04e0efd18f1680ad4c2c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ced0c799ee9f3ae3a343bff3128242ab51ef6213161604b930090807cd12c449`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance FooClass_one [One α] : FooClass α := ⟨λ _ => rfl ⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ToAdditive/Variant7fcbe4316fac04da3f349894ae4676b425f64cf49ec04e0efd18f1680ad4c2c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ToAdditive/Variant7fcbe4316fac04da3f349894ae4676b425f64cf49ec04e0efd18f1680ad4c2c3.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fabdae49e9abb464a9e9c1eaeff99852aad0cdb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
