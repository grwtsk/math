# AffineMap.ofMapMidpoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2ce2b22ff9b962ca6e7290e70679379be6c265fb12cb362bb4b5719149bf373a",
  "kind": "def",
  "lexical_name": "AffineMap.ofMapMidpoint",
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
  "slug": "affinemap-ofmapmidpoint--223fd154466e9cbf51359e22",
  "source": {
    "blob": "bbefa7f4db786f0b2c7e81fb826b6abf5e5b56e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 254,
    "path": "GRWTSK/Topology/GeneralTopology/AddTorsor/Variant3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:223fd154466e9cbf51359e2221744d4d9cebde71fc02cc6bc503e7780d9b0336",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AddTorsor/Variant3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2ce2b22ff9b962ca6e7290e70679379be6c265fb12cb362bb4b5719149bf373a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def AffineMap.ofMapMidpoint (f : P → Q) (h : ∀ x y, f (midpoint ℝ x y) = midpoint ℝ (f x) (f y))
    (hfc : Continuous f) : P →ᵃ[ℝ] Q :=
  let c := Classical.arbitrary P
  AffineMap.mk' f (↑((AddMonoidHom.ofMapMidpoint ℝ ℝ
    ((AffineEquiv.vaddConst ℝ (f <| c)).symm ∘ f ∘ AffineEquiv.vaddConst ℝ c) (by simp)
    fun x y => by simp [h]).toRealLinearMap <| by
        apply_rules [Continuous.vadd, Continuous.vsub, continuous_const, hfc.comp, continuous_id]))
    c fun p => by simp

end

section

open Dilation

variable {𝕜 E : Type*} [NormedDivisionRing 𝕜] [SeminormedAddCommGroup E]
variable [Module 𝕜 E] [NormSMulClass 𝕜 E] {P : Type*} [PseudoMetricSpace P] [NormedAddTorsor E P]

-- TODO: define `ContinuousAffineEquiv` and reimplement this as one of those.
/-- Scaling by an element `k` of the scalar ring as a `DilationEquiv` with ratio `‖k‖₊`, mapping
from a normed space to a normed torsor over that space sending `0` to `c`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AddTorsor/Variant3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AddTorsor/Variant3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbefa7f4db786f0b2c7e81fb826b6abf5e5b56e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
