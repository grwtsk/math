# single_mul_apply_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7efb8ed5-9327-90df-61c4-1a1c90901076",
  "kind": "theorem",
  "lexical_name": "single_mul_apply_aux",
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
  "slug": "single-mul-apply-aux--6364843a1e441d1bbc24d833",
  "source": {
    "blob": "505163d603c369fd89805cdd652c5a9491856b5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 593,
    "line": 581,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Varianta03233f5e5f069b1f3d37c5a8957143327a85d05d50f62b74ecbb9f75a7b6bb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6364843a1e441d1bbc24d8338ee620cb99a4cf2db03cc6c00b7f80276f22f723",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Varianta03233f5e5f069b1f3d37c5a8957143327a85d05d50f62b74ecbb9f75a7b6bb3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7efb8ed5-9327-90df-61c4-1a1c90901076`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 581–593.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem single_mul_apply_aux [Mul G] (f : MonoidAlgebra k G) {r : k} {x y z : G}
    (H : ∀ a, x * a = y ↔ a = z) : (single x r * f) y = r * f z := by
  classical exact
      have : (f.sum fun a b => ite (x * a = y) (0 * b) 0) = 0 := by simp
      calc
        (HMul.hMul (α := MonoidAlgebra k G) (single x r) f) y =
            sum f fun a b => ite (x * a = y) (r * b) 0 :=
          (mul_apply _ _ _).trans <| sum_single_index this
        _ = f.sum fun a b => ite (a = z) (r * b) 0 := by simp only [H]
        _ = if z ∈ f.support then r * f z else 0 := (f.support.sum_ite_eq' _ _)
        _ = _ := by split_ifs with h <;> simp at h <;> simp [h]
#align monoid_algebra.single_mul_apply_aux MonoidAlgebra.single_mul_apply_aux

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Varianta03233f5e5f069b1f3d37c5a8957143327a85d05d50f62b74ecbb9f75a7b6bb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Varianta03233f5e5f069b1f3d37c5a8957143327a85d05d50f62b74ecbb9f75a7b6bb3.lean#L581).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `505163d603c369fd89805cdd652c5a9491856b5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
