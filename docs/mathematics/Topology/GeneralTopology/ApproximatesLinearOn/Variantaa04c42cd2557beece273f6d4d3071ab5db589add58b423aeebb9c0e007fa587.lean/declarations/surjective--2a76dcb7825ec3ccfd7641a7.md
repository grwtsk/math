# surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d90f922-9bff-069e-ca1c-ac013e1c97ee",
  "kind": "theorem",
  "lexical_name": "surjective",
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
  "slug": "surjective--2a76dcb7825ec3ccfd7641a7",
  "source": {
    "blob": "eb31e17cf426f33c74a6f72555a5a1dfa202e6a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 355,
    "line": 335,
    "path": "GRWTSK/Topology/GeneralTopology/ApproximatesLinearOn/Variantaa04c42cd2557beece273f6d4d3071ab5db589add58b423aeebb9c0e007fa587.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a76dcb7825ec3ccfd7641a735df5464a0df29cdbba27165de2cfc60d445450f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ApproximatesLinearOn/Variantaa04c42cd2557beece273f6d4d3071ab5db589add58b423aeebb9c0e007fa587.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d90f922-9bff-069e-ca1c-ac013e1c97ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 335–355.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem surjective [CompleteSpace E] (hf : ApproximatesLinearOn f (f' : E →L[𝕜] F) univ c)
    (hc : Subsingleton E ∨ c < N⁻¹) : Surjective f := by
  rcases hc with hE | hc
  · have : Subsingleton F := (Equiv.subsingleton_congr f'.toEquiv).1 hE
    exact surjective_to_subsingleton _
  · apply forall_of_forall_mem_closedBall (fun y : F => ∃ a, f a = y) (f 0) _
    have hc' : (0 : ℝ) < N⁻¹ - c := by rw [sub_pos]; exact hc
    let p : ℝ → Prop := fun R => closedBall (f 0) R ⊆ Set.range f
    have hp : ∀ᶠ r : ℝ in atTop, p ((N⁻¹ - c) * r) := by
      have hr : ∀ᶠ r : ℝ in atTop, 0 ≤ r := eventually_ge_atTop 0
      refine hr.mono fun r hr => Subset.trans ?_ (image_subset_range f (closedBall 0 r))
      refine hf.surjOn_closedBall_of_nonlinearRightInverse f'.toNonlinearRightInverse hr ?_
      exact subset_univ _
    refine ((tendsto_id.const_mul_atTop hc').frequently hp.frequently).mono ?_
    exact fun R h y hy => h hy

/-- A map approximating a linear equivalence on a set defines a partial equivalence on this set.
Should not be used outside of this file, because it is superseded by `toOpenPartialHomeomorph`
below.

This is a first step towards the inverse function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ApproximatesLinearOn/Variantaa04c42cd2557beece273f6d4d3071ab5db589add58b423aeebb9c0e007fa587.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ApproximatesLinearOn/Variantaa04c42cd2557beece273f6d4d3071ab5db589add58b423aeebb9c0e007fa587.lean#L335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb31e17cf426f33c74a6f72555a5a1dfa202e6a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
