# has_type

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:73dfabaa-d7c0-c6d5-6ebe-b778f364d380",
  "kind": "theorem",
  "lexical_name": "has_type",
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
  "slug": "has-type--0ad76fe33022ec4cebbb2a76",
  "source": {
    "blob": "d67c92fe0402fd4a22c5fa9ce00d825e632a306d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 98,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntendedPTS/Variant4842cc49bcb4b9e7557e1ca845e424eadca75495a6f640b260654a4f1f3c960c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ad76fe33022ec4cebbb2a7609926d0673118bdb856cc078c5d25794f27e6768",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntendedPTS/Variant4842cc49bcb4b9e7557e1ca845e424eadca75495a6f640b260654a4f1f3c960c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73dfabaa-d7c0-c6d5-6ebe-b778f364d380`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem has_type {type : Expr Bool} (typed : BaseArrowType type)
    (context : List (Expr Bool)) (valid : ValidContext monomorphicArrow context) :
    HasType monomorphicArrow context type (.sort true) := by
  induction typed generalizing context with
  | base => exact HasType.sort_of_valid valid ⟨rfl, rfl⟩
  | @arrow domain codomain domainType codomainType ihDomain ihCodomain =>
      have formedDomain := ihDomain context valid
      exact .product formedDomain (ihCodomain (domain :: context) (.cons valid formedDomain))
        ⟨rfl, rfl, rfl⟩

end BaseArrowType

/-- A substantive next lemma, stated as a proposition rather than an assumed theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntendedPTS/Variant4842cc49bcb4b9e7557e1ca845e424eadca75495a6f640b260654a4f1f3c960c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntendedPTS/Variant4842cc49bcb4b9e7557e1ca845e424eadca75495a6f640b260654a4f1f3c960c.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d67c92fe0402fd4a22c5fa9ce00d825e632a306d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
