# ofGradingSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:28b532733042f3100a2b3e1b33f2d71ef22c0b2a4b62de2619313d00f1fffcac",
  "kind": "def",
  "lexical_name": "ofGradingSum",
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
  "slug": "ofgradingsum--bf99a4de691d09a20b0b2da9",
  "source": {
    "blob": "603c0f66d72e198eecd5fbeee08d70ded1497d6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 143,
    "path": "GRWTSK/Algebra/LinearAlgebra/Graded/Variant529c58a836f1dc2d42ddc8daf85e7410f50d1ee2b93cb68484e71d7cabbf7c3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf99a4de691d09a20b0b2da9c6c49db0e0bfc210ca797f667e6e3814a1270a9c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Graded/Variant529c58a836f1dc2d42ddc8daf85e7410f50d1ee2b93cb68484e71d7cabbf7c3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:28b532733042f3100a2b3e1b33f2d71ef22c0b2a4b62de2619313d00f1fffcac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofGradingSum (φ : ι →+ R) : LieDerivation R (⨁ i, ℒ i) (⨁ i, ℒ i) :=
  { __ := DirectSum.toModule R ι (⨁ i, ℒ i)
      fun i ↦ (lof R ι (ℒ ·) i).comp (Module.End.smulLeft (φ i) (by simp))
    leibniz' x y := by
      have hM (k : ι) (b : ⨁ i, ℒ i) (hb : (decompose ℒ).symm b ∈ ℒ k) :
          (toModule R ι (⨁ (i : ι), ℒ i) fun i ↦ lof R ι (ℒ ·) i ∘ₗ (φ i • .id)) b = (φ k) • b := by
        obtain ⟨_, rfl⟩ : b ∈ LinearMap.range (lof R ι (ℒ ·) k) := by
          use ⟨(decompose ℒ).symm b, hb⟩
          simp [lof_eq_of, ← decompose_of_mem]
        simp
      ext j
      induction x using DirectSum.induction_on' with
      | h0 => simp
      | hadd i a f _ _ ih =>
        simp only [Module.End.smulLeft_eq, DirectSum.sub_apply, AddSubgroupClass.coe_sub] at ih
        simp only [Module.End.smulLeft_eq, add_lie, map_add, DirectSum.add_apply, Submodule.coe_add,
          ih, lie_add, DirectSum.sub_apply, AddSubgroupClass.coe_sub]
        rw [add_sub_add_comm, add_right_cancel_iff, hM i (of (ℒ ·) i a) (by simp)]
        clear ih
        induction y using DirectSum.induction_on' with
        | h0 => simp
        | hadd k b f _ _ ih =>
          simp only [lie_add, map_add, DirectSum.add_apply, Submodule.coe_add, ih, lie_smul,
            add_lie, smul_add, add_sub, ← sub_sub]
          congr 1
          have : (decompose ℒ).symm ⁅of (fun i ↦ ℒ i) i a, of (fun i ↦ ℒ i) k b⁆ ∈ ℒ (i + k) := by
            simp [← vadd_eq_add,
              SetLike.GradedBracket.bracket_mem (Submodule.coe_mem a) (Submodule.coe_mem b)]
          rw [hM _ _ this, hM k (of (ℒ ·) k b) (by simp), ← lie_skew (of (ℒ ·) k b),
            add_sub_right_comm, add_right_cancel_iff, add_comm i k, map_add, add_smul,
            DirectSum.add_apply, Submodule.coe_add, sub_eq_add_neg, lie_smul, add_left_cancel_iff,
            smul_neg, ← sub_eq_zero, sub_neg_eq_add, ← Submodule.coe_add, Submodule.coe_eq_zero,
            ← DirectSum.add_apply, add_neg_cancel, DirectSum.zero_apply] }

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Graded/Variant529c58a836f1dc2d42ddc8daf85e7410f50d1ee2b93cb68484e71d7cabbf7c3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Graded/Variant529c58a836f1dc2d42ddc8daf85e7410f50d1ee2b93cb68484e71d7cabbf7c3f.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `603c0f66d72e198eecd5fbeee08d70ded1497d6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
