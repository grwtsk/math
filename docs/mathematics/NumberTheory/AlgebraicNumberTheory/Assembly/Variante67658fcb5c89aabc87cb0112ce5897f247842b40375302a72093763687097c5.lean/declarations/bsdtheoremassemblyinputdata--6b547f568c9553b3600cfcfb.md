# BSDTheoremAssemblyInputData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0777fe45fc71072d69a2f32ba36d14705526d4c524c13de27d169ad882d89dbf",
  "kind": "structure",
  "lexical_name": "BSDTheoremAssemblyInputData",
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
  "slug": "bsdtheoremassemblyinputdata--6b547f568c9553b3600cfcfb",
  "source": {
    "blob": "e45718b18b006177c5ae66b8c87f0cf714e237ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 378,
    "line": 339,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Assembly/Variante67658fcb5c89aabc87cb0112ce5897f247842b40375302a72093763687097c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6b547f568c9553b3600cfcfb02ecec64679e147644bac08542c9833a188430c0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Assembly/Variante67658fcb5c89aabc87cb0112ce5897f247842b40375302a72093763687097c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0777fe45fc71072d69a2f32ba36d14705526d4c524c13de27d169ad882d89dbf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 339–378.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure BSDTheoremAssemblyInputData
    {C : LawfulShortWeierstrass.{u}}
    (L : HasseWeilLFunction C.K.field C.E)
    (M : SmoothMordellWeilInterface C)
    (N : NumberFieldCertificate C.K)
    (P : NumberFieldPlaceProductFormulaCertificate N)
    (X : Conjecture L M.MW) where
  lFunction :
    HasseWeilLFunction C.K.field C.E
  lFunction_eq :
    lFunction = L
  smoothMordellWeil :
    SmoothMordellWeilInterface C
  smoothMordellWeil_eq :
    smoothMordellWeil = M
  numberField :
    NumberFieldCertificate C.K
  numberField_eq :
    numberField = N
  productFormula :
    NumberFieldPlaceProductFormulaCertificate N
  productFormula_eq :
    productFormula = P
  firstPartStatement :
    FirstPartStatement L M.MW
  firstPartStatement_eq :
    firstPartStatement = X.first
  secondPartStatement :
    SecondPartStatement L M.MW
  secondPartStatement_eq :
    secondPartStatement = X.second
  boundary : List String

/--
Packed BSD theorem input.

This existential-style package lets downstream flow or trace records carry a
BSD theorem input without making the ambient flow layer choose a particular
field, curve, L-function, or Mordell-Weil group in its type.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Assembly/Variante67658fcb5c89aabc87cb0112ce5897f247842b40375302a72093763687097c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Assembly/Variante67658fcb5c89aabc87cb0112ce5897f247842b40375302a72093763687097c5.lean#L339).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e45718b18b006177c5ae66b8c87f0cf714e237ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
