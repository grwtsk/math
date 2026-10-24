# IterM.Total.toExtHashSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:91a836da0c7eed14f2542576e8777a396d35e6cacc241e34b93dd9f827e9dd52",
  "kind": "def",
  "lexical_name": "IterM.Total.toExtHashSet",
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
  "slug": "iterm-total-toexthashset--d74fb8b5669033df1298aa62",
  "source": {
    "blob": "96f6fda8c15744c4faf235c27712b8e94f4e0687",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 73,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Set/Variantf984ae36fd3a683f3bc96285bf97c960b5c6fdb02b96535baaf55af0a97314f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d74fb8b5669033df1298aa6205756a9780a202223400f480a2fbfac3d1484033",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Set/Variantf984ae36fd3a683f3bc96285bf97c960b5c6fdb02b96535baaf55af0a97314f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:91a836da0c7eed14f2542576e8777a396d35e6cacc241e34b93dd9f827e9dd52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def IterM.Total.toExtHashSet {α β : Type w} [BEq β] [Hashable β] [EquivBEq β] [LawfulHashable β]
    {m : Type w → Type w'} [Monad m] [Iterator α m β] [Finite α m] [IteratorLoop α m m]
    (it : IterM.Total (α := α) m β) : m (ExtHashSet β) :=
  it.it.toExtHashSet

docs_to_verso IterM.toExtHashSet

set_option doc.verso false

/--
Traverses the given iterator and stores the emitted values in a {name}`TreeSet`.

If the iterator is not finite, this function might run forever. Given {givenInstance}`Finite α m`,
the variant {lean}`it.ensureTermination.toTreeSet` always terminates after finitely many steps.
-/
@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Set/Variantf984ae36fd3a683f3bc96285bf97c960b5c6fdb02b96535baaf55af0a97314f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Set/Variantf984ae36fd3a683f3bc96285bf97c960b5c6fdb02b96535baaf55af0a97314f6.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96f6fda8c15744c4faf235c27712b8e94f4e0687` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
