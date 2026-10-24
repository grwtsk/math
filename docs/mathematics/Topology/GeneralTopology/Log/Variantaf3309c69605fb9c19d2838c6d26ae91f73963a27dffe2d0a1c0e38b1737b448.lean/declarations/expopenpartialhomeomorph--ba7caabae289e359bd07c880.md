# expOpenPartialHomeomorph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:64a10dc36699bee1f2c4ab0f944b407ded6bc4bd74e71ba1f81a528ab60e7e0e",
  "kind": "def",
  "lexical_name": "expOpenPartialHomeomorph",
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
  "slug": "expopenpartialhomeomorph--ba7caabae289e359bd07c880",
  "source": {
    "blob": "26e7b49526ee412a40c92387fe640b78ec08a2a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 324,
    "line": 305,
    "path": "GRWTSK/Topology/GeneralTopology/Log/Variantaf3309c69605fb9c19d2838c6d26ae91f73963a27dffe2d0a1c0e38b1737b448.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ba7caabae289e359bd07c880f1aad8c33ee14e6741c6ffb674e1ab48ede62750",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Log/Variantaf3309c69605fb9c19d2838c6d26ae91f73963a27dffe2d0a1c0e38b1737b448.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:64a10dc36699bee1f2c4ab0f944b407ded6bc4bd74e71ba1f81a528ab60e7e0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 305–324.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def expOpenPartialHomeomorph : OpenPartialHomeomorph ℂ ℂ where
  toFun := exp
  invFun := log
  source := {z : ℂ | z.im ∈ Ioo (-π) π}
  target := slitPlane
  map_source' := by
    rintro ⟨x, y⟩ ⟨h₁ : -π < y, h₂ : y < π⟩
    simp [exp_mem_slitPlane, h₂.ne,
      (toIocMod_eq_self Real.two_pi_pos).mpr ⟨h₁, by simpa [two_mul] using h₂.le⟩]
  map_target' z h := by
    simp only [mem_ofPred, log_im, mem_Ioo, neg_pi_lt_arg, arg_lt_pi_iff, true_and]
    exact h.imp_left le_of_lt
  left_inv' _x hx := log_exp hx.1 (le_of_lt hx.2)
  right_inv' _x hx := exp_log <| slitPlane_ne_zero hx
  open_source := isOpen_Ioo.preimage continuous_im
  open_target := isOpen_slitPlane
  continuousOn_toFun := by fun_prop
  continuousOn_invFun := continuousOn_id.clog fun _ ↦ id

end Complex
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Log/Variantaf3309c69605fb9c19d2838c6d26ae91f73963a27dffe2d0a1c0e38b1737b448.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Log/Variantaf3309c69605fb9c19d2838c6d26ae91f73963a27dffe2d0a1c0e38b1737b448.lean#L305).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26e7b49526ee412a40c92387fe640b78ec08a2a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
