# ArithmeticOperator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:93d85a4f5a1774ae41c7124e4df2bff548911cbe2aaad6d1803ae9469d691e66",
  "kind": "structure",
  "lexical_name": "ArithmeticOperator",
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
  "slug": "arithmeticoperator--df2b38a96147dc2e5da6a3fd",
  "source": {
    "blob": "9be4c3ce6ab8933990787836e6ced5b1ed67394e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 167,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Prismatic/Variant08b900929dfba37ecf78826f05c15f2a2a8b324ab6aa931da3488f60a5ff7c0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:df2b38a96147dc2e5da6a3fd295386d657ffddfa0105fcfe335c9d435e4bb449",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Prismatic/Variant08b900929dfba37ecf78826f05c15f2a2a8b324ab6aa931da3488f60a5ff7c0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:93d85a4f5a1774ae41c7124e4df2bff548911cbe2aaad6d1803ae9469d691e66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ArithmeticOperator
    {K : Type u} [AddCommGroup K]
    (complex : CochainComplex K) where
  chainMap : ChainMap complex complex
  frobenius : K →+ K
  commutesWithFrobenius :
    ∀ x,
      chainMap.map (frobenius x) =
        frobenius (chainMap.map x)
  nygaard : Nat → Set K
  preservesNygaard :
    ∀ level x,
      x ∈ nygaard level →
        chainMap.map x ∈ nygaard level

namespace ArithmeticOperator

variable {K : Type u} [AddCommGroup K] {complex : CochainComplex K}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Prismatic/Variant08b900929dfba37ecf78826f05c15f2a2a8b324ab6aa931da3488f60a5ff7c0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Prismatic/Variant08b900929dfba37ecf78826f05c15f2a2a8b324ab6aa931da3488f60a5ff7c0b.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9be4c3ce6ab8933990787836e6ced5b1ed67394e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
