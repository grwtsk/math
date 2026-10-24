# TemplateField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9f242271ac02a280d0243bde2a69f4c1ca678cfa7becdd4fd3e262f8c779406e",
  "kind": "structure",
  "lexical_name": "TemplateField",
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
  "slug": "templatefield--07079732419e1ef245b47aee",
  "source": {
    "blob": "f3e2523e56f49e1b79778f5c8c5646c0bb4e5c15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 186,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Template/Variantc6e8c82b486881b342a1e72c510de785cb586de781b1603a4ac386a9911033f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:07079732419e1ef245b47aee2d30701b58e684495663bf273a5420ab9574daf6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Template/Variantc6e8c82b486881b342a1e72c510de785cb586de781b1603a4ac386a9911033f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9f242271ac02a280d0243bde2a69f4c1ca678cfa7becdd4fd3e262f8c779406e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TemplateField where
  fieldId : String
  index : Nat
  ordinal : Tally
  ordinalCorrect : ordinal = fieldOrdinal index
  sort : ValueSort
  term : Term
  wellTyped : term.infer = some sort
  dependencySet : Finset Symbol
  dependencyExact : dependencySet = term.freeVariables
  semanticNoninterference :
    ∀ left right : Environment,
      (∀ symbol ∈ dependencySet,
        left.lookup symbol = right.lookup symbol) →
      term.eval left = term.eval right
  primeHoles : List PrimeHole
  scope : TemplateFieldScope
  boundary : BoundaryKey
  symmetryProfile : String
  dependencyCertificateId : String
  proofObjectId : String
  costCertificateId : String
  fieldDigest : String

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Template/Variantc6e8c82b486881b342a1e72c510de785cb586de781b1603a4ac386a9911033f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Template/Variantc6e8c82b486881b342a1e72c510de785cb586de781b1603a4ac386a9911033f7.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3e2523e56f49e1b79778f5c8c5646c0bb4e5c15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
