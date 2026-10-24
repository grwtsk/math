# MonoidalOpposite.mopMopEquivalenceFunctorMonoidal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2126de015c6f4175885179e77b66368170f74e4197b2cca470959028c2d074b3",
  "kind": "instance",
  "lexical_name": "MonoidalOpposite.mopMopEquivalenceFunctorMonoidal",
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
  "slug": "monoidalopposite-mopmopequivalencefunctormonoidal--71d940c98a1ee4bcf87f9e7a",
  "source": {
    "blob": "5faff8ffe29a17297f61a90facbd1f907e321254",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 355,
    "line": 343,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Opposite/Variant0bbee02615a629438f5c567c9cc0d9e2b6270f586b2999ca48ba88f37f9ad19b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:71d940c98a1ee4bcf87f9e7adbd79a76f00f1787bd05ee1c2ce92a112d26b5cb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Opposite/Variant0bbee02615a629438f5c567c9cc0d9e2b6270f586b2999ca48ba88f37f9ad19b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2126de015c6f4175885179e77b66368170f74e4197b2cca470959028c2d074b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 343–355.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance MonoidalOpposite.mopMopEquivalenceFunctorMonoidal :
    (MonoidalOpposite.mopMopEquivalence C).functor.Monoidal where
  ε := 𝟙 _
  δ X Y := 𝟙 _
  μ X Y := 𝟙 _
  η := 𝟙 _
  ε_η := Category.comp_id _
  η_ε := Category.comp_id _
  μ_δ X Y := Category.comp_id _
  δ_μ X Y := Category.comp_id _

set_option backward.isDefEq.respectTransparency false in
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Opposite/Variant0bbee02615a629438f5c567c9cc0d9e2b6270f586b2999ca48ba88f37f9ad19b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Opposite/Variant0bbee02615a629438f5c567c9cc0d9e2b6270f586b2999ca48ba88f37f9ad19b.lean#L343).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5faff8ffe29a17297f61a90facbd1f907e321254` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
