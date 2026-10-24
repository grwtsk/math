# norm_mul_invInterpStrip_le_one_of_mem_verticalClosedStrip

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "862a76d82732183e9f89229837c885aa4927fea7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 213,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/62/62172b64546b52d0465435445b78a77b344d5ba5bc4ec7ff0f849887fbfa380a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e0aef5ec-5294-1a96-b671-f0253c374b06",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5e896842-bbda-9176-d6f7-bc8ff146a044",
  "kind": "theorem",
  "lexical_name": "norm_mul_invInterpStrip_le_one_of_mem_verticalClosedStrip",
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
  "slug": "norm-mul-invinterpstrip-le-one-of-mem-verticalclosedstrip--83229723dd18a32f58dd795e",
  "source": {
    "blob": "862a76d82732183e9f89229837c885aa4927fea7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 213,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Hadamard/Variant62172b64546b52d0465435445b78a77b344d5ba5bc4ec7ff0f849887fbfa380a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83229723dd18a32f58dd795e9ce55d937ee78b11488cb682603106e0e1c1551f",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Hadamard/Variant62172b64546b52d0465435445b78a77b344d5ba5bc4ec7ff0f849887fbfa380a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e896842-bbda-9176-d6f7-bc8ff146a044`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_mul_invInterpStrip_le_one_of_mem_verticalClosedStrip (f : ℂ → E) (ε : ℝ) (hε : 0 < ε)
    (z : ℂ) (hd : DiffContOnCl ℂ f (verticalStrip 0 1))
    (hB : BddAbove ((norm ∘ f) '' verticalClosedStrip 0 1)) (hz : z ∈ verticalClosedStrip 0 1) :
    ‖F f ε z‖ ≤ 1 := by
  apply PhragmenLindelof.vertical_strip
    (DiffContOnCl.smul (diffContOnCl_invInterpStrip f hε) hd) _
    (fun x hx ↦ F_edge_le_one f ε hε x hB (Or.inl hx))
    (fun x hx ↦ F_edge_le_one f ε hε x hB (Or.inr hx)) hz.1 hz.2
  use 0
  rw [sub_zero, div_one]
  refine ⟨ Real.pi_pos, ?_⟩
  obtain ⟨BF, hBF⟩ := F_BddAbove f ε hε hB
  simp only [comp_apply, mem_upperBounds, mem_image, forall_exists_index, and_imp,
    forall_apply_eq_imp_iff₂] at hBF
  use BF
  rw [Asymptotics.isBigO_iff]
  use 1
  rw [eventually_inf_principal]
  apply Eventually.of_forall
  intro x hx
  simpa using! (hBF x ((preimage_mono Ioo_subset_Icc_self) hx)).trans
    ((le_of_lt (lt_add_one BF)).trans (Real.add_one_le_exp BF))

end invInterpStrip

-----

variable {E : Type*} [NormedAddCommGroup E] (f : ℂ → E)

/--
The interpolation of `sSupNormIm` on the two boundaries.
In other words, this is the right side of the target inequality:
`|f(z)| ≤ |M(0) ^ (1-z)| * |M(1) ^ z|`.

Note that if `sSupNormIm f 0 = 0 ∨ sSupNormIm f 1 = 0` then the power is not continuous
since `0 ^ 0 = 1`. Hence the use of `ite`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Hadamard/Variant62172b64546b52d0465435445b78a77b344d5ba5bc4ec7ff0f849887fbfa380a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Hadamard/Variant62172b64546b52d0465435445b78a77b344d5ba5bc4ec7ff0f849887fbfa380a.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `862a76d82732183e9f89229837c885aa4927fea7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
