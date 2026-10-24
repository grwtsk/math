# smulCommClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0d0987d5f63a02bf934229afa48d515c517b3bad6e76b8af01f7ac97ce4bacbf",
  "kind": "instance",
  "lexical_name": "smulCommClass",
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
  "slug": "smulcommclass--3f7390516bbc7e4ae3e2f0e6",
  "source": {
    "blob": "3b2f791841f83e82dc7548bc1f08e5c7dbba5071",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 81,
    "path": "GRWTSK/Algebra/UniversalAlgebra/SMulWithZero/Variant91284b966fd37c32545842946e2746521cd4632d25b8dfe2b70d0dd5a1a9a6ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3f7390516bbc7e4ae3e2f0e6fab079206137ccb207f4ab02e8f6e139be68148d",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/SMulWithZero/Variant91284b966fd37c32545842946e2746521cd4632d25b8dfe2b70d0dd5a1a9a6ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0d0987d5f63a02bf934229afa48d515c517b3bad6e76b8af01f7ac97ce4bacbf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance smulCommClass [Zero M] [SMulZeroClass R M] [SMulZeroClass S M] [SMulCommClass R S M] :
  SMulCommClass R S (α →₀ M) where
  smul_comm _ _ _ := ext fun _ => smul_comm _ _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/SMulWithZero/Variant91284b966fd37c32545842946e2746521cd4632d25b8dfe2b70d0dd5a1a9a6ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/SMulWithZero/Variant91284b966fd37c32545842946e2746521cd4632d25b8dfe2b70d0dd5a1a9a6ef.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b2f791841f83e82dc7548bc1f08e5c7dbba5071` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
