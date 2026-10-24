# expPartialHomeomorph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aa04541bd28193e521f9a4c79f77a889ff02bea7ada460bff7287631d2d98631",
  "kind": "def",
  "lexical_name": "expPartialHomeomorph",
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
  "slug": "exppartialhomeomorph--14b6028d37e27a6d941c13e9",
  "source": {
    "blob": "bafbf351b589f77a7fb76aa7585caa830c9766eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 38,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantdb8e44f084dbaed60fef89c11e1ced886d798804fa454223388f150ce6b36680.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:14b6028d37e27a6d941c13e94ce7d2fa4d70fc113813ed152cd4d83d57cefd80",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantdb8e44f084dbaed60fef89c11e1ced886d798804fa454223388f150ce6b36680.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aa04541bd28193e521f9a4c79f77a889ff02bea7ada460bff7287631d2d98631`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def expPartialHomeomorph : PartialHomeomorph ℂ ℂ :=
  PartialHomeomorph.ofContinuousOpen
    { toFun := exp
      invFun := log
      source := {z : ℂ | z.im ∈ Ioo (-π) π}
      target := slitPlane
      map_source' := by
        rintro ⟨x, y⟩ ⟨h₁ : -π < y, h₂ : y < π⟩
        refine (not_or_of_imp fun hz => ?_).symm
        obtain rfl : y = 0 := by
          rw [exp_im] at hz
          simpa [(Real.exp_pos _).ne', Real.sin_eq_zero_iff_of_lt_of_lt h₁ h₂] using hz
        rw [← ofReal_def, exp_ofReal_re]
        exact Real.exp_pos x
      map_target' := fun z h => by
        simp only [mem_setOf, log_im, mem_Ioo, neg_pi_lt_arg, arg_lt_pi_iff, true_and]
        exact h.imp_left le_of_lt
      left_inv' := fun _ hx => log_exp hx.1 (le_of_lt hx.2)
      right_inv' := fun _ hx => exp_log <| slitPlane_ne_zero hx }
    continuous_exp.continuousOn isOpenMap_exp (isOpen_Ioo.preimage continuous_im)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantdb8e44f084dbaed60fef89c11e1ced886d798804fa454223388f150ce6b36680.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantdb8e44f084dbaed60fef89c11e1ced886d798804fa454223388f150ce6b36680.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bafbf351b589f77a7fb76aa7585caa830c9766eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
