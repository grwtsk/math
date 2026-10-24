# cotangentEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1ce10bf5a4f0461f1922e61f37b2fee70a291d3daf5e85132ad6ce3107bfd08a",
  "kind": "def",
  "lexical_name": "cotangentEquiv",
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
  "slug": "cotangentequiv--48863df7beaa7beffd3ae7d9",
  "source": {
    "blob": "62b70d574e93968f180bdcda95c79b34eae29422",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 573,
    "line": 553,
    "path": "GRWTSK/Algebra/Basic/Variant96f1ec4653e1b76147eb0cb15304bb8a52f93f21fca0ba8eafab963ffc119ae4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:48863df7beaa7beffd3ae7d92dcc05b2861118ece56f82b6e16a670091001a20",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant96f1ec4653e1b76147eb0cb15304bb8a52f93f21fca0ba8eafab963ffc119ae4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1ce10bf5a4f0461f1922e61f37b2fee70a291d3daf5e85132ad6ce3107bfd08a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 553–573.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def cotangentEquiv : S ⊗[P.Ring] P.ker ≃ₗ[S] P.Cotangent := by
  refine .ofBijective (Cotangent.mk.liftBaseChange _) ⟨?_, ?_⟩
  · refine (injective_iff_map_eq_zero _).mpr fun x hx ↦ ?_
    obtain ⟨x, rfl⟩ := TensorProduct.mk_surjective P.Ring P.ker S P.algebraMap_surjective x
    simp only [mk_apply, LinearMap.liftBaseChange_tmul, one_smul, Cotangent.mk_eq_zero_iff,
      pow_two] at hx ⊢
    refine Submodule.smul_induction_on' (p := fun x (hx : x ∈ P.ker * P.ker) ↦
      (1 : S) ⊗ₜ[P.Ring] (⟨x, Ideal.mul_le_left hx⟩ : P.ker) = 0) (hx := hx) ?_ ?_
    · intro r hr s hs
      trans (r • 1) ⊗ₜ[P.Ring] ⟨s, hs⟩
      · rw [smul_tmul]; rfl
      · simp_all [Algebra.smul_def]
    · intro a ha b hb ha' hb'
      convert! congr($ha' + $hb')
      rw [← tmul_add]
      rfl
  · intro x
    obtain ⟨x, rfl⟩ := Cotangent.mk_surjective x
    exact ⟨1 ⊗ₜ x, by simp⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant96f1ec4653e1b76147eb0cb15304bb8a52f93f21fca0ba8eafab963ffc119ae4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant96f1ec4653e1b76147eb0cb15304bb8a52f93f21fca0ba8eafab963ffc119ae4.lean#L553).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62b70d574e93968f180bdcda95c79b34eae29422` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
