# _root_.GRWTSK.Topology.GeneralTopology.SchwartzMap.Variante2697946fa3bcbdc7934676f6c21fbbb565291f93c3ca406e3a4956472935833.HasCompactSupport.toSchwartzMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a174908b62282b22145945f780884853458af1f1571db5174613901844de22d7",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.SchwartzMap.Variante2697946fa3bcbdc7934676f6c21fbbb565291f93c3ca406e3a4956472935833.HasCompactSupport.toSchwartzMap",
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
  "slug": "root-grwtsk-topology-generaltopology-schwartzmap-variante2697946fa3bcbdc--154a2f148318159ef585e1c8",
  "source": {
    "blob": "6358790f10f8e7d38ca7415dfb54bbeb81a18baf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 591,
    "line": 563,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant4f45f194e4126584da05c37e9e7a97ac450d59bccc3f084df0e9e67c3e2cb2ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:154a2f148318159ef585e1c8fc605ba263f8375a5e6b3e8d4d68e9640928f098",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant4f45f194e4126584da05c37e9e7a97ac450d59bccc3f084df0e9e67c3e2cb2ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a174908b62282b22145945f780884853458af1f1571db5174613901844de22d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 563–591.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.Topology.GeneralTopology.SchwartzMap.Variante2697946fa3bcbdc7934676f6c21fbbb565291f93c3ca406e3a4956472935833.HasCompactSupport.toSchwartzMap {f : E → F} (h₁ : HasCompactSupport f)
    (h₂ : ContDiff ℝ ∞ f) : 𝓢(E, F) where
  toFun := f
  smooth' := h₂
  decay' k n := by
    set g := fun x ↦ ‖x‖ ^ k * ‖iteratedFDeriv ℝ n f x‖
    have hg₁ : Continuous g := by
      apply Continuous.mul (by fun_prop)
      exact (h₂.of_le (mod_cast le_top)).continuous_iteratedFDeriv'.norm
    have hg₂ : HasCompactSupport g := (h₁.iteratedFDeriv _).norm.mul_left
    obtain ⟨x₀, hx₀⟩ := hg₁.exists_forall_ge_of_hasCompactSupport hg₂
    exact ⟨g x₀, hx₀⟩

end HasCompactSupport

section CLM

/-! ### Construction of continuous linear maps between Schwartz spaces -/


variable [NormedField 𝕜] [NormedField 𝕜']
variable [NormedAddCommGroup D] [NormedSpace ℝ D]
variable [NormedSpace 𝕜 E] [SMulCommClass ℝ 𝕜 E]
variable [NormedAddCommGroup G] [NormedSpace ℝ G] [NormedSpace 𝕜' G] [SMulCommClass ℝ 𝕜' G]
variable {σ : 𝕜 →+* 𝕜'}

/-- Create a semilinear map between Schwartz spaces.

Note: This is a helper definition for `mkCLM`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant4f45f194e4126584da05c37e9e7a97ac450d59bccc3f084df0e9e67c3e2cb2ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant4f45f194e4126584da05c37e9e7a97ac450d59bccc3f084df0e9e67c3e2cb2ef.lean#L563).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6358790f10f8e7d38ca7415dfb54bbeb81a18baf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
