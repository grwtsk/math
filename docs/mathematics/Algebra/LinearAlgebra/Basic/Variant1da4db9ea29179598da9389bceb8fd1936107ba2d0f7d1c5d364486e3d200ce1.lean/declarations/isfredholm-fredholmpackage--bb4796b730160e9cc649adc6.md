# IsFredholm.fredholmPackage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0034f3069ce22d83cc59372fbef86bfdaf7a4167ccbbb1857ec4b948778e8d9c",
  "kind": "def",
  "lexical_name": "IsFredholm.fredholmPackage",
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
  "slug": "isfredholm-fredholmpackage--bb4796b730160e9cc649adc6",
  "source": {
    "blob": "ae1ab396b95aa2c356622d81c023ef6f6e264de1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 300,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant1da4db9ea29179598da9389bceb8fd1936107ba2d0f7d1c5d364486e3d200ce1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bb4796b730160e9cc649adc66203fc042f4ddef60f7291602e7a878a8cd680fe",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant1da4db9ea29179598da9389bceb8fd1936107ba2d0f7d1c5d364486e3d200ce1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0034f3069ce22d83cc59372fbef86bfdaf7a4167ccbbb1857ec4b948778e8d9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsFredholm.fredholmPackage {u : E →L[𝕜] F}
    (u_fred : IsFredholm u) {dom₁ : Submodule 𝕜 E} {codom₀ : Submodule 𝕜 F}
    (h_dom : IsTopCompl u.ker dom₁) (h_codom : IsTopCompl u.range codom₀) :
    FredholmPackage u where
  decDom :=
    { X₀ := u.ker
      X₁ := dom₁
      isTopCompl := h_dom.symm
      finite_X₀ := u_fred.finite_ker }
  decCodom :=
    { X₀ := codom₀
      X₁ := u.range
      isTopCompl := h_codom
      finite_X₀ := .of_fg <| u_fred.finite_coker.fg_of_isCompl h_codom.isCompl }
  equiv :=
    letI Φ : dom₁ ≃L[𝕜] E ⧸ u.ker := u.ker.quotientEquivOfIsTopCompl dom₁ h_dom |>.symm
    letI Ψ : (E ⧸ u.ker) ≃L[𝕜] u.range := .quotKerEquivRange u_fred.isStrictMap
    Φ.trans Ψ
  eq_equiv := by
    refine LinearMap.ext_on_codisjoint h_dom.isCompl.codisjoint ?_ ?_
    · intro x (hx : u x = 0)
      simp [hx, projection_apply_of_mem_right]
    · intro x (hx : x ∈ dom₁)
      simp [hx, projection_apply_of_mem_left, ContinuousLinearEquiv.quotKerEquivRange]

omit [ContinuousSMul 𝕜 E] in
/-- Every Fredholm operator admits a `FredholmPackage`.

This is the primary way to get a `FredholmPackage` if you don't need control of the decompositions.
If you do, see `IsFredholm.fredholmPackage`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant1da4db9ea29179598da9389bceb8fd1936107ba2d0f7d1c5d364486e3d200ce1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant1da4db9ea29179598da9389bceb8fd1936107ba2d0f7d1c5d364486e3d200ce1.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae1ab396b95aa2c356622d81c023ef6f6e264de1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
