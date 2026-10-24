# TypedCompleteCode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9c07064a3de00a168b950fb0525aceb1a26b0702b4964b8c63977108b264fc9d",
  "kind": "structure",
  "lexical_name": "TypedCompleteCode",
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
  "slug": "typedcompletecode--9aa9537152222eb4c350cc8d",
  "source": {
    "blob": "e22d90523dce9bafb41f84e4547b6d298a76bf39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 62,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TypedReconstruction/Variant1a538d246cb858f7950f84aa23648c534e9da2d626617a452f1e5619c67009bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9aa9537152222eb4c350cc8df05af3829093565ec144405bfd794e554e961996",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TypedReconstruction/Variant1a538d246cb858f7950f84aa23648c534e9da2d626617a452f1e5619c67009bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9c07064a3de00a168b950fb0525aceb1a26b0702b4964b8c63977108b264fc9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TypedCompleteCode (full : CheckedFullDeclaration) {n : ℕ}
    (blocks : Fin n → Finset (SourcePosition full.snapshot.value)) where
  selected : Finset (Fin n)
  root : Fin full.value.catalog.length
  payload : Fin n → Fin full.value.catalog.length
  masks : ReconstructionMasks blocks
  ownedMatches : ∀ i, decodeMask blocks i (masks i) = ownedPiece Finset.univ blocks i
  inactiveEmpty : ∀ i, i ∉ selected → decodeMask blocks i (masks i) = ∅
  covered : ∀ p, ∃ i ∈ selected, p ∈ decodeMask blocks i (masks i)
  rootSyntax : SyntaxValid full.snapshot (sourceCatalogSyntax full root)
  rootTyped : TermValid full.snapshot.value 0 (sourceCatalogTerm full root)
  payloadSyntax : ∀ i, SyntaxValid full.snapshot (sourceCatalogSyntax full (payload i))
  payloadTyped : ∀ i, TermValid full.snapshot.value 0 (sourceCatalogTerm full (payload i))
  glue : ∀ i, RepresentationDerivable full.value
    (sourceCatalogTerm full (payload i)) (sourceCatalogTerm full root)

namespace TypedCompleteCode

variable {full : CheckedFullDeclaration} {n : ℕ}
    {blocks : Fin n → Finset (SourcePosition full.snapshot.value)}

/-- Selected slots are traversed in the declared first-owner ordering. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TypedReconstruction/Variant1a538d246cb858f7950f84aa23648c534e9da2d626617a452f1e5619c67009bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TypedReconstruction/Variant1a538d246cb858f7950f84aa23648c534e9da2d626617a452f1e5619c67009bd.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e22d90523dce9bafb41f84e4547b6d298a76bf39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
