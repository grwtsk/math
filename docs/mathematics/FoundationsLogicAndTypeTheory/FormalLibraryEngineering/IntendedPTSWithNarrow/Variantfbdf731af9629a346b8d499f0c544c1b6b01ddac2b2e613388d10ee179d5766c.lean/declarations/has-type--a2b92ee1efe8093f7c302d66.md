# has_type

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c646f884-bc31-573e-0940-89423ba7f5a8",
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
  "slug": "has-type--a2b92ee1efe8093f7c302d66",
  "source": {
    "blob": "fbc159bd430e2ee4f9f43417d1952b3503e17b12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 98,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntendedPTSWithNarrow/Variantfbdf731af9629a346b8d499f0c544c1b6b01ddac2b2e613388d10ee179d5766c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2b92ee1efe8093f7c302d665049f2acef955bea4b58b771e85ade7f2e9a9eb8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntendedPTSWithNarrow/Variantfbdf731af9629a346b8d499f0c544c1b6b01ddac2b2e613388d10ee179d5766c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c646f884-bc31-573e-0940-89423ba7f5a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–110.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntendedPTSWithNarrow/Variantfbdf731af9629a346b8d499f0c544c1b6b01ddac2b2e613388d10ee179d5766c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntendedPTSWithNarrow/Variantfbdf731af9629a346b8d499f0c544c1b6b01ddac2b2e613388d10ee179d5766c.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbc159bd430e2ee4f9f43417d1952b3503e17b12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
