# _root_.GRWTSK.Algebra.IsDPMorphism.Variantb2a1f8e83fbb5398fdba1b8ac5bfa62ee53128a12720b671e3d86698832541cf.DividedPowers.ideal_from_ringHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bcee6c90c2c9ca0a21cb7b6e5d63386a4416a9a8001ec918c6795db58c2d0f62",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Algebra.IsDPMorphism.Variantb2a1f8e83fbb5398fdba1b8ac5bfa62ee53128a12720b671e3d86698832541cf.DividedPowers.ideal_from_ringHom",
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
  "slug": "root-grwtsk-algebra-isdpmorphism-variantb2a1f8e83fbb5398fdba1b8ac5bfa62e--1bfa2984db6d5ad810506eab",
  "source": {
    "blob": "53a7db048e73987a63601dc783f3f993b786f204",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 142,
    "path": "GRWTSK/Algebra/DPMorphism/Variant899eba0c513d58cd192f4b1e77a9d1c3802cb00ceccce15d1c8b944900502f67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1bfa2984db6d5ad810506eab423cff3f35729657dafa8ab9d382fe6fbfd8bdf2",
  "verification": {
    "reference": "docs/verification/Algebra/DPMorphism/Variant899eba0c513d58cd192f4b1e77a9d1c3802cb00ceccce15d1c8b944900502f67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bcee6c90c2c9ca0a21cb7b6e5d63386a4416a9a8001ec918c6795db58c2d0f62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.Algebra.IsDPMorphism.Variantb2a1f8e83fbb5398fdba1b8ac5bfa62ee53128a12720b671e3d86698832541cf.DividedPowers.ideal_from_ringHom {f : A →+* B} (hf : I.map f ≤ J) : Ideal A where
  carrier  := {x ∈ I | ∀ n : ℕ, f (hI.dpow n (x : A)) = hJ.dpow n (f (x : A))}
  add_mem' := fun hx hy ↦ by
    simp only [mem_setOf_eq, map_add] at hx hy ⊢
    refine ⟨I.add_mem hx.1 hy.1, fun n ↦ ?_⟩
    rw [hI.dpow_add hx.1 hy.1, map_sum,
      hJ.dpow_add (hf (mem_map_of_mem f hx.1)) (hf (mem_map_of_mem f hy.1))]
    apply congr_arg
    ext k
    rw [map_mul, hx.2, hy.2]
  zero_mem' := by
    simp only [mem_setOf_eq, Submodule.zero_mem, map_zero, true_and]
    intro n
    induction n with
    | zero => rw [hI.dpow_zero I.zero_mem, hJ.dpow_zero J.zero_mem, map_one]
    | succ n => rw [hI.dpow_eval_zero n.succ_ne_zero, hJ.dpow_eval_zero n.succ_ne_zero, map_zero]
  smul_mem' := fun r x hx ↦ by
    refine ⟨I.smul_mem r hx.1, (fun n ↦ ?_)⟩
    rw [smul_eq_mul, hI.dpow_mul hx.1, map_mul, map_mul, map_pow,
      hJ.dpow_mul (hf (mem_map_of_mem f hx.1)), hx.2 n]

/-- The `DPMorphism` induced by a ring morphism, given that divided powers are compatible on a
  generating set.
  See [N. Roby, *Les algèbres à puissances dividées* (Proposition 3)][Roby-1965]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/DPMorphism/Variant899eba0c513d58cd192f4b1e77a9d1c3802cb00ceccce15d1c8b944900502f67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/DPMorphism/Variant899eba0c513d58cd192f4b1e77a9d1c3802cb00ceccce15d1c8b944900502f67.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53a7db048e73987a63601dc783f3f993b786f204` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
