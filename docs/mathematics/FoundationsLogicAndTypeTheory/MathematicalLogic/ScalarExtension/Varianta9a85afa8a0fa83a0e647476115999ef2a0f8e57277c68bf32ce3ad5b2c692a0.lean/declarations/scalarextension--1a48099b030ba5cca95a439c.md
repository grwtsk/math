# ScalarExtension

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5e4f7d0cc17576e5edc3ce83d09aef0ad690a6658bb2fe62e3be7632c2ac88e0",
  "kind": "structure",
  "lexical_name": "ScalarExtension",
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
  "slug": "scalarextension--1a48099b030ba5cca95a439c",
  "source": {
    "blob": "c52da2547ab26c576fbae880888c55b40b0c5b37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 35,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ScalarExtension/Varianta9a85afa8a0fa83a0e647476115999ef2a0f8e57277c68bf32ce3ad5b2c692a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1a48099b030ba5cca95a439cceae35af569e8d0e9c2e0a8d32b8ace1913b6e17",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ScalarExtension/Varianta9a85afa8a0fa83a0e647476115999ef2a0f8e57277c68bf32ce3ad5b2c692a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5e4f7d0cc17576e5edc3ce83d09aef0ad690a6658bb2fe62e3be7632c2ac88e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ScalarExtension
    (M₀ M₁ : PerfectComplex.Model.{uObj, uHom, uIso})
    (R : CoefficientContext.{uR})
    (S : CoefficientContext.{uS})
    (phi : CoefficientChange R S) where
  extendObject : M₀.Object → M₁.Object
  extendHom :
    {C D : M₀.Object} →
      M₀.Hom C D →
      M₁.Hom (extendObject C) (extendObject D)
  extendIso :
    {C D : M₀.Object} →
      M₀.Iso C D →
      M₁.Iso (extendObject C) (extendObject D)

  extend_id :
    ∀ (C : M₀.Object),
      extendHom (M₀.id (C := C)) =
        M₁.id (C := extendObject C)
  extend_comp :
    ∀ {C D E : M₀.Object}
      (f : M₀.Hom C D) (g : M₀.Hom D E),
      extendHom (M₀.comp f g) =
        M₁.comp (extendHom f) (extendHom g)
  extendIso_refl :
    ∀ (C : M₀.Object),
      extendIso (M₀.isoRefl C) =
        M₁.isoRefl (extendObject C)
  extendIso_trans :
    ∀ {C D E : M₀.Object}
      (f : M₀.Iso C D) (g : M₀.Iso D E),
      extendIso (M₀.isoTrans f g) =
        M₁.isoTrans (extendIso f) (extendIso g)
  preservesQuasiIso :
    ∀ {C D : M₀.Object} {f : M₀.Hom C D},
      M₀.isQuasiIso f → M₁.isQuasiIso (extendHom f)

namespace ScalarExtension

variable
    {M₀ M₁ : PerfectComplex.Model.{uObj, uHom, uIso}}
    {R : CoefficientContext.{uR}}
    {S : CoefficientContext.{uS}}
    {phi : CoefficientChange R S}
    (E : ScalarExtension M₀ M₁ R S phi)

/-- Scalar extension preserves a supplied quasi-isomorphism certificate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ScalarExtension/Varianta9a85afa8a0fa83a0e647476115999ef2a0f8e57277c68bf32ce3ad5b2c692a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ScalarExtension/Varianta9a85afa8a0fa83a0e647476115999ef2a0f8e57277c68bf32ce3ad5b2c692a0.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c52da2547ab26c576fbae880888c55b40b0c5b37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
