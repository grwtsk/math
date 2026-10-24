# _root_.GRWTSK.Algebra.GroupTheory.ListProdMem.Variant70861d4fb3a233a944997dca702a529f91b446687f8701b6dab3a3ed4eb8d535.Fintype.card_coeSort_mrange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7076620b-98b1-7f9a-e9a0-08bf44899f6f",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Algebra.GroupTheory.ListProdMem.Variant70861d4fb3a233a944997dca702a529f91b446687f8701b6dab3a3ed4eb8d535.Fintype.card_coeSort_mrange",
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
  "slug": "root-grwtsk-algebra-grouptheory-listprodmem-variant70861d4fb3a233a944997--ab9d45f1de41d2f310f2931d",
  "source": {
    "blob": "89c857948adda130d7c232fd5f32f2d4c1ff7e8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 281,
    "path": "GRWTSK/Algebra/GroupTheory/Finite/Variant6d12cb116159823d78614c45e3584719ade819716b9e9d7a15971030c8643e8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab9d45f1de41d2f310f2931d4c13edc126ebf9aff9828069eb7af95f654e382f",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Finite/Variant6d12cb116159823d78614c45e3584719ade819716b9e9d7a15971030c8643e8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7076620b-98b1-7f9a-e9a0-08bf44899f6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Algebra.GroupTheory.ListProdMem.Variant70861d4fb3a233a944997dca702a529f91b446687f8701b6dab3a3ed4eb8d535.Fintype.card_coeSort_mrange {M N : Type*} [Monoid M] [Monoid N] [Fintype M]
    [DecidableEq N] {f : M →* N} (hf : Function.Injective f) :
    Fintype.card (mrange f) = Fintype.card M :=
  Set.card_range_of_injective hf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Finite/Variant6d12cb116159823d78614c45e3584719ade819716b9e9d7a15971030c8643e8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Finite/Variant6d12cb116159823d78614c45e3584719ade819716b9e9d7a15971030c8643e8c.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89c857948adda130d7c232fd5f32f2d4c1ff7e8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
