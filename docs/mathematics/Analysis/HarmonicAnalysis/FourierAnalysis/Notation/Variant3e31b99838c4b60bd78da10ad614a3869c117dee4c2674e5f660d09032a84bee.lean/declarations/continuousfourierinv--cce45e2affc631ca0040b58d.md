# ContinuousFourierInv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:140109513a68ab696c6d18f4f3c44941e068bdc4f71ab373bdc97cd43069e83e",
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
  "slug": "continuousfourierinv--cce45e2affc631ca0040b58d",
  "source": {
    "blob": "f08101cad55daebeaff1bca25661d705248606eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 91,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Notation/Variant3e31b99838c4b60bd78da10ad614a3869c117dee4c2674e5f660d09032a84bee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cce45e2affc631ca0040b58d15db47206737c86c007e911459d36c45f4904761",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/Notation/Variant3e31b99838c4b60bd78da10ad614a3869c117dee4c2674e5f660d09032a84bee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:140109513a68ab696c6d18f4f3c44941e068bdc4f71ab373bdc97cd43069e83e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–115.

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

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/Notation/Variant3e31b99838c4b60bd78da10ad614a3869c117dee4c2674e5f660d09032a84bee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Notation/Variant3e31b99838c4b60bd78da10ad614a3869c117dee4c2674e5f660d09032a84bee.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f08101cad55daebeaff1bca25661d705248606eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
