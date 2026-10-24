# BSDTheoremAssemblyCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:862044d1302a46547e703347ea18b794422ff9728484a19110514527b9550b3a",
  "kind": "structure",
  "lexical_name": "BSDTheoremAssemblyCertificate",
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
  "slug": "bsdtheoremassemblycertificate--d47b42ff55b7d8b0f9a21c2f",
  "source": {
    "blob": "e45718b18b006177c5ae66b8c87f0cf714e237ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 436,
    "line": 400,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Assembly/Variante67658fcb5c89aabc87cb0112ce5897f247842b40375302a72093763687097c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d47b42ff55b7d8b0f9a21c2ff95953166743497a6d9ff91d29c6791868646e26",
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

Occurrence: `declaration:862044d1302a46547e703347ea18b794422ff9728484a19110514527b9550b3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 400–436.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure BSDTheoremAssemblyCertificate
    {C : LawfulShortWeierstrass.{u}}
    (L : HasseWeilLFunction C.K.field C.E)
    (M : SmoothMordellWeilInterface C)
    (N : NumberFieldCertificate C.K)
    (P : NumberFieldPlaceProductFormulaCertificate N)
    (X : Conjecture L M.MW)
    (I : BSDTheoremInput X) where
  firstPartAssembly :
    BSDFirstPartAssemblyCertificate L M N P X.first
  firstPartAssemblyCertified :
    firstPartAssembly.certifiedForBSD
  secondPartAssembly :
    BSDSecondPartAssemblyCertificate L M N P X.first X.second
  secondPartAssemblyCertified :
    secondPartAssembly.certifiedForBSD
  wrappedFirstPartCertificateUsesAssembly : Prop
  wrappedFirstPartCertificateUsesAssemblyCertified :
    wrappedFirstPartCertificateUsesAssembly
  wrappedSecondPartCertificateUsesAssembly : Prop
  wrappedSecondPartCertificateUsesAssemblyCertified :
    wrappedSecondPartCertificateUsesAssembly
  conjectureAssumptionsMatchAssemblies : Prop
  conjectureAssumptionsMatchAssembliesCertified :
    conjectureAssumptionsMatchAssemblies
  sharedInputData :
    BSDTheoremAssemblyInputData L M N P X
  theoremInputUsesSameConjecture : Prop
  theoremInputUsesSameConjectureCertified :
    theoremInputUsesSameConjecture
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/--
BSD global theorem-input assembly quality required by theorem-facing smooth BSD
input.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Assembly/Variante67658fcb5c89aabc87cb0112ce5897f247842b40375302a72093763687097c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Assembly/Variante67658fcb5c89aabc87cb0112ce5897f247842b40375302a72093763687097c5.lean#L400).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e45718b18b006177c5ae66b8c87f0cf714e237ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
