# DeterminantScalarExtensionCompatibility

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fe285e441cb93a742d1c35e5d5fea2b1b04b2e06e0969d2e82d2e34c9ffd7ad7",
  "kind": "structure",
  "lexical_name": "DeterminantScalarExtensionCompatibility",
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
  "slug": "determinantscalarextensioncompatibility--c4825b206bca54c219503e72",
  "source": {
    "blob": "55c0114d09c40c77fe3638b0ec8190c26d7f24ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 170,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ScalarExtension/Variantaf7a35d0a25ae8d3c6bde9e109c24c3e6e32fce5199032d17fa59499e553fdba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c4825b206bca54c219503e72aac79109230da83db3fceb663b26570ab28c06e9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ScalarExtension/Variantaf7a35d0a25ae8d3c6bde9e109c24c3e6e32fce5199032d17fa59499e553fdba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fe285e441cb93a742d1c35e5d5fea2b1b04b2e06e0969d2e82d2e34c9ffd7ad7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure DeterminantScalarExtensionCompatibility
    {M₀ M₁ : PerfectComplex.Model.{uObj, uHom, uIso}}
    {R : CoefficientContext.{uR}}
    {S : CoefficientContext.{uS}}
    {phi : CoefficientChange R S}
    (E : ScalarExtension M₀ M₁ R S phi)
    (D₀ : Theory.{uObj, uHom, uIso, uR, uLineR} M₀ R)
    (D₁ : Theory.{uObj, uHom, uIso, uS, uLineS} M₁ S) where
  lineChange :
    (C : M₀.Object) →
      D₀.Line C → D₁.Line (E.extendObject C)
  quasiIso_natural :
    ∀ {C D : M₀.Object}
      (f : PerfectComplex.CertifiedQuasiIso M₀ C D)
      (x : D₀.Line C),
      lineChange D (CertifiedQuasiIso.detEquiv D₀ f x) =
        E.detEquiv D₁ f (lineChange C x)

namespace DeterminantScalarExtensionCompatibility

variable
    {M₀ M₁ : PerfectComplex.Model.{uObj, uHom, uIso}}
    {R : CoefficientContext.{uR}}
    {S : CoefficientContext.{uS}}
    {phi : CoefficientChange R S}
    {E : ScalarExtension M₀ M₁ R S phi}
    {D₀ : Theory.{uObj, uHom, uIso, uR, uLineR} M₀ R}
    {D₁ : Theory.{uObj, uHom, uIso, uS, uLineS} M₁ S}

/-- The determinant transport square commutes after explicit line change. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ScalarExtension/Variantaf7a35d0a25ae8d3c6bde9e109c24c3e6e32fce5199032d17fa59499e553fdba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ScalarExtension/Variantaf7a35d0a25ae8d3c6bde9e109c24c3e6e32fce5199032d17fa59499e553fdba.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55c0114d09c40c77fe3638b0ec8190c26d7f24ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
