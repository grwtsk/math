# of.zero_exact_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:549ca025-bd76-1527-482b-ae22b3503a02",
  "kind": "theorem",
  "lexical_name": "of.zero_exact_aux",
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
  "slug": "of-zero-exact-aux--c8c71084d6db99ba9aaca1fc",
  "source": {
    "blob": "3b9f0d236c2253f0260e5e04c2eec13a1a259f95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 220,
    "path": "GRWTSK/Algebra/DirectLimit/Variantf24274b3e2c0e1c00ac359f44e2a038ff6bb40b5594daa71fb4b24d3c6ecb29b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8c71084d6db99ba9aaca1fc05e71ef209e8a391abb2710cb54b25b711dc7039",
  "verification": {
    "reference": "docs/verification/Algebra/DirectLimit/Variantf24274b3e2c0e1c00ac359f44e2a038ff6bb40b5594daa71fb4b24d3c6ecb29b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:549ca025-bd76-1527-482b-ae22b3503a02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of.zero_exact_aux [Nonempty ι] [IsDirected ι (· ≤ ·)] {x : DirectSum ι G}
    (H : (Submodule.Quotient.mk x : DirectLimit G f) = (0 : DirectLimit G f)) :
    ∃ j,
      (∀ k ∈ x.support, k ≤ j) ∧
        DirectSum.toModule R ι (G j) (fun i => totalize G f i j) x = (0 : G j) :=
  Nonempty.elim (by infer_instance) fun ind : ι =>
    span_induction ((Quotient.mk_eq_zero _).1 H)
      (fun x ⟨i, j, hij, y, hxy⟩ =>
        let ⟨k, hik, hjk⟩ := exists_ge_ge i j
        ⟨k, by
          subst hxy
          constructor
          · intro i0 hi0
            rw [DFinsupp.mem_support_iff, DirectSum.sub_apply, ← DirectSum.single_eq_lof, ←
              DirectSum.single_eq_lof, DFinsupp.single_apply, DFinsupp.single_apply] at hi0
            split_ifs at hi0 with hi hj hj
            · rwa [hi] at hik
            · rwa [hi] at hik
            · rwa [hj] at hjk
            exfalso
            apply hi0
            rw [sub_zero]
          simp [LinearMap.map_sub, totalize_of_le, hik, hjk, DirectedSystem.map_map,
            DirectSum.apply_eq_component, DirectSum.component.of]⟩)
      ⟨ind, fun _ h => (Finset.not_mem_empty _ h).elim, LinearMap.map_zero _⟩
      (fun x y ⟨i, hi, hxi⟩ ⟨j, hj, hyj⟩ =>
        let ⟨k, hik, hjk⟩ := exists_ge_ge i j
        ⟨k, fun l hl =>
          (Finset.mem_union.1 (DFinsupp.support_add hl)).elim (fun hl => le_trans (hi _ hl) hik)
            fun hl => le_trans (hj _ hl) hjk, by
          -- Porting note: this had been
          -- simp [LinearMap.map_add, hxi, hyj, toModule_totalize_of_le hik hi,
          --   toModule_totalize_of_le hjk hj]
          simp only [map_add]
          rw [toModule_totalize_of_le hik hi, toModule_totalize_of_le hjk hj]
          simp [hxi, hyj]⟩)
      fun a x ⟨i, hi, hxi⟩ =>
      ⟨i, fun k hk => hi k (DirectSum.support_smul _ _ hk), by simp [LinearMap.map_smul, hxi]⟩
#align module.direct_limit.of.zero_exact_aux Module.DirectLimit.of.zero_exact_aux

/-- A component that corresponds to zero in the direct limit is already zero in some
bigger module in the directed system. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/DirectLimit/Variantf24274b3e2c0e1c00ac359f44e2a038ff6bb40b5594daa71fb4b24d3c6ecb29b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/DirectLimit/Variantf24274b3e2c0e1c00ac359f44e2a038ff6bb40b5594daa71fb4b24d3c6ecb29b.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b9f0d236c2253f0260e5e04c2eec13a1a259f95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
