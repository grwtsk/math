# posDef_pi_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2581e039-f5e7-4093-57d5-3d559e1ceb0f",
  "kind": "theorem",
  "lexical_name": "posDef_pi_iff",
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
  "slug": "posdef-pi-iff--d045ac2663fc3c38b77acffd",
  "source": {
    "blob": "b57da388bf8929289dd5dec14df51fce5996d44f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 190,
    "path": "GRWTSK/Algebra/LinearAlgebra/Prod/Variant4bfbcf3f8f08d884c363ed3d8f3549d0b4d7138c0a2647b3a57ec8a145d40120.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d045ac2663fc3c38b77acffddcadaf51666e2bb46d15613b134b3602412deae0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Prod/Variant4bfbcf3f8f08d884c363ed3d8f3549d0b4d7138c0a2647b3a57ec8a145d40120.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2581e039-f5e7-4093-57d5-3d559e1ceb0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem posDef_pi_iff [Fintype ι] {R} [OrderedRing R] [∀ i, Module R (Mᵢ i)]
    {Q : ∀ i, QuadraticForm R (Mᵢ i)} : (pi Q).PosDef ↔ ∀ i, (Q i).PosDef := by
  simp_rw [posDef_iff_nonneg, nonneg_pi_iff]
  constructor
  · rintro ⟨hle, ha⟩
    intro i
    exact ⟨hle i, anisotropic_of_pi ha i⟩
  · intro h
    refine' ⟨fun i => (h i).1, fun x hx => funext fun i => (h i).2 _ _⟩
    rw [pi_apply, Finset.sum_eq_zero_iff_of_nonneg fun j _ => ?_] at hx
    · exact hx _ (Finset.mem_univ _)
    exact (h j).1 _
#align quadratic_form.pos_def_pi_iff QuadraticForm.posDef_pi_iff

end QuadraticForm
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Prod/Variant4bfbcf3f8f08d884c363ed3d8f3549d0b4d7138c0a2647b3a57ec8a145d40120.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Prod/Variant4bfbcf3f8f08d884c363ed3d8f3549d0b4d7138c0a2647b3a57ec8a145d40120.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b57da388bf8929289dd5dec14df51fce5996d44f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
