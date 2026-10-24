# ContinuousFourierInv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:99ed0b71d7ea2749f1c16c18c20f41075e98ea9bdd70458cc6f17b1be287fa4f",
  "kind": "class",
  "lexical_name": "ContinuousFourierInv",
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
  "slug": "continuousfourierinv--0f6684ce45bc6b042e67b201",
  "source": {
    "blob": "223584754c13fdee75a7cb1abec33389198f37e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 99,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Notation/Variant5042a11ff91c123c3616e289fec51079242b0642322688e5feb6b043426eef0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0f6684ce45bc6b042e67b2014d3acdc684c778b8687295b5d5b7cd934dc210f6",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/Notation/Variant5042a11ff91c123c3616e289fec51079242b0642322688e5feb6b043426eef0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:99ed0b71d7ea2749f1c16c18c20f41075e98ea9bdd70458cc6f17b1be287fa4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class ContinuousFourierInv (E : Type*) (F : outParam (Type*))
    [TopologicalSpace E] [TopologicalSpace F] [FourierTransformInv E F] where
  continuous_fourierInv : Continuous (𝓕⁻ : E → F)

namespace FourierTransform

export FourierAdd (fourier_add)
export FourierSMul (fourier_smul)
export ContinuousFourier (continuous_fourier)
export FourierInvAdd (fourierInv_add)
export FourierInvSMul (fourierInv_smul)
export ContinuousFourierInv (continuous_fourierInv)

attribute [simp] fourier_add
attribute [simp] fourier_smul
attribute [simp] fourierInv_add
attribute [simp] fourierInv_smul
attribute [fun_prop] continuous_fourier
attribute [fun_prop] continuous_fourierInv

section fourier

variable [AddCommGroup E] [AddCommGroup F] [FourierTransform E F] [FourierAdd E F]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/Notation/Variant5042a11ff91c123c3616e289fec51079242b0642322688e5feb6b043426eef0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Notation/Variant5042a11ff91c123c3616e289fec51079242b0642322688e5feb6b043426eef0a.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `223584754c13fdee75a7cb1abec33389198f37e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
