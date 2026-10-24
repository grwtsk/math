# AffineEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dfece744d0853f0c456f330c01b6c80e3ea8c873459aa5040a0001f2b14eb872",
  "kind": "structure",
  "lexical_name": "AffineEquiv",
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
  "slug": "affineequiv--ce87de76df374b419378c7f4",
  "source": {
    "blob": "70761ffc89a8571ff5a6f11f6205c96bc8dc718a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 55,
    "path": "GRWTSK/Algebra/LinearAlgebra/AffineEquiv/Variant44f4b97c4b151188b470a90a61efa91d79527d94affee5d84cc317e72f945bd1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ce87de76df374b419378c7f4e634dca16ca7b7a79089eb992669ccd06b1a626c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/AffineEquiv/Variant44f4b97c4b151188b470a90a61efa91d79527d94affee5d84cc317e72f945bd1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dfece744d0853f0c456f330c01b6c80e3ea8c873459aa5040a0001f2b14eb872`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure AffineEquiv (k P₁ P₂ : Type*) {V₁ V₂ : Type*} [Ring k] [AddCommGroup V₁] [Module k V₁]
  [AddTorsor V₁ P₁] [AddCommGroup V₂] [Module k V₂] [AddTorsor V₂ P₂] extends P₁ ≃ P₂ where
  linear : V₁ ≃ₗ[k] V₂
  map_vadd' : ∀ (p : P₁) (v : V₁), toEquiv (v +ᵥ p) = linear v +ᵥ toEquiv p
#align affine_equiv AffineEquiv

notation:25 P₁ " ≃ᵃ[" k:25 "] " P₂:0 => AffineEquiv k P₁ P₂

variable {k P₁ P₂ P₃ P₄ V₁ V₂ V₃ V₄ : Type*} [Ring k] [AddCommGroup V₁] [Module k V₁]
  [AddTorsor V₁ P₁] [AddCommGroup V₂] [Module k V₂] [AddTorsor V₂ P₂] [AddCommGroup V₃]
  [Module k V₃] [AddTorsor V₃ P₃] [AddCommGroup V₄] [Module k V₄] [AddTorsor V₄ P₄]

namespace AffineEquiv

/-- Reinterpret an `AffineEquiv` as an `AffineMap`. -/
@[coe]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/AffineEquiv/Variant44f4b97c4b151188b470a90a61efa91d79527d94affee5d84cc317e72f945bd1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/AffineEquiv/Variant44f4b97c4b151188b470a90a61efa91d79527d94affee5d84cc317e72f945bd1.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70761ffc89a8571ff5a6f11f6205c96bc8dc718a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
