# matching_pullback_sieve

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aabc0fac-384c-f40f-d4e2-3b8348a8ac85",
  "kind": "theorem",
  "lexical_name": "matching_pullback_sieve",
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
  "slug": "matching-pullback-sieve--0833823fce418a1938532146",
  "source": {
    "blob": "423dbf547c1240656d1117f5eb6f10595e8d6748",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1883,
    "line": 1869,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NativeSyntacticTopos/Variant93fc784e380be82de6be9599c8d0a97abdfb34e45a03ab66f4ebb3b85cb2d74b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0833823fce418a1938532146ec5210274f580b3822796a0b0ab61a3c52658683",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NativeSyntacticTopos/Variant93fc784e380be82de6be9599c8d0a97abdfb34e45a03ab66f4ebb3b85cb2d74b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aabc0fac-384c-f40f-d4e2-3b8348a8ac85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1869–1883.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem matching_pullback_sieve
    (J : GrothendieckTopology C)
    {X : C.Obj}
    {R : Sieve C X}
    (m : MatchingFamily (OmegaPredicatePresheaf J) R)
    {Y Z : C.Obj}
    (f : C.Hom Y X)
    (hf : R.arrows Y f)
    (g : C.Hom Z Y) :
    Sieve.pullback (m.sectionAt f hf).sieve g =
      (m.sectionAt
        (C.comp g f)
        (R.downwardClosed f g hf)).sieve := by
  exact congrArg JClosedSieve.sieve (m.compatible f hf g)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NativeSyntacticTopos/Variant93fc784e380be82de6be9599c8d0a97abdfb34e45a03ab66f4ebb3b85cb2d74b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NativeSyntacticTopos/Variant93fc784e380be82de6be9599c8d0a97abdfb34e45a03ab66f4ebb3b85cb2d74b.lean#L1869).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `423dbf547c1240656d1117f5eb6f10595e8d6748` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
