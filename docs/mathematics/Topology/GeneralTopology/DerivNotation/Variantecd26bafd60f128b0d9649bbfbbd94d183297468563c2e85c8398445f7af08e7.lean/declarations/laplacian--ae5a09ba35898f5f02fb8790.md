# Laplacian

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:621cc114c542118bf622159a1518eb16f7227315699e8e0b518be34d1fdd8b50",
  "kind": "class",
  "lexical_name": "Laplacian",
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
  "slug": "laplacian--ae5a09ba35898f5f02fb8790",
  "source": {
    "blob": "47997c07a835dac88abf2ab348a48c82cf869a9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 296,
    "line": 267,
    "path": "GRWTSK/Topology/GeneralTopology/DerivNotation/Variantecd26bafd60f128b0d9649bbfbbd94d183297468563c2e85c8398445f7af08e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ae5a09ba35898f5f02fb8790b6fcbe6698bf18713b47c8d54a89b5f1bdbb2bdb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DerivNotation/Variantecd26bafd60f128b0d9649bbfbbd94d183297468563c2e85c8398445f7af08e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:621cc114c542118bf622159a1518eb16f7227315699e8e0b518be34d1fdd8b50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–296.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class Laplacian (E : Type v) (F : outParam (Type w)) where
  /-- `Δ f` is the Laplacian of `f`. The meaning of this notation is type-dependent. -/
  laplacian : E → F

namespace Laplacian

@[inherit_doc] scoped notation "Δ" => Laplacian.laplacian

end Laplacian

namespace LineDeriv

variable [LineDeriv E V₁ V₂] [LineDeriv E V₂ V₃]
  [AddCommGroup V₁] [AddCommGroup V₂] [AddCommGroup V₃]

/-! ## Laplacian of `LineDeriv` -/

section TensorProduct

variable [CommRing R] [AddCommGroup E] [Module R E]
  [Module R V₂] [Module R V₃]
  [LineDerivAdd E V₂ V₃] [LineDerivAdd E V₁ V₂]
  [LineDerivSMul R E V₂ V₃] [LineDerivLeftSMul R E V₁ V₂] [LineDerivLeftSMul R E V₂ V₃]

open TensorProduct

variable (R) in
/-- The second derivative in terms `lineDerivOp` as a bilinear map.

Mainly used to give an abstract definition of the Laplacian. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DerivNotation/Variantecd26bafd60f128b0d9649bbfbbd94d183297468563c2e85c8398445f7af08e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DerivNotation/Variantecd26bafd60f128b0d9649bbfbbd94d183297468563c2e85c8398445f7af08e7.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47997c07a835dac88abf2ab348a48c82cf869a9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
