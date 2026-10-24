# card_fiber_eq_of_mem_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dab793a51b446a47f1e20f77b103db770df84a5a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 195,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/02/02ca7351a86f2e3f7543a3b9e232be03a97dd65ca6f7346602117bd2796c1107.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1d85faae-5a1e-22be-7a11-f68585f466bc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:89c4651f-096a-df0f-7423-c31cfc295829",
  "kind": "theorem",
  "lexical_name": "card_fiber_eq_of_mem_range",
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
  "slug": "card-fiber-eq-of-mem-range--823178da00cfe0aeb250148e",
  "source": {
    "blob": "dab793a51b446a47f1e20f77b103db770df84a5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 195,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant02ca7351a86f2e3f7543a3b9e232be03a97dd65ca6f7346602117bd2796c1107.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:823178da00cfe0aeb250148eff3c18a96e4b7ed046e38be6cc57a282f4dc94ca",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant02ca7351a86f2e3f7543a3b9e232be03a97dd65ca6f7346602117bd2796c1107.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89c4651f-096a-df0f-7423-c31cfc295829`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_fiber_eq_of_mem_range {H : Type*} [Group H] [DecidableEq H] (f : G →* H) {x y : H}
    (hx : x ∈ Set.range f) (hy : y ∈ Set.range f) :
    -- porting note: the `filter` had an index `ₓ` that I removed.
    (univ.filter fun g => f g = x).card = (univ.filter fun g => f g = y).card := by
  rcases hx with ⟨x, rfl⟩
  rcases hy with ⟨y, rfl⟩
  refine' card_congr (fun g _ => g * x⁻¹ * y) _ _ fun g hg => ⟨g * y⁻¹ * x, _⟩
  · simp (config := { contextual := true }) only [*, mem_filter, one_mul, MonoidHom.map_mul,
      mem_univ, mul_right_inv, eq_self_iff_true, MonoidHom.map_mul_inv, and_self_iff,
      forall_true_iff]
    -- porting note: added the following `simp`
    simp only [true_and, map_inv, mul_right_inv, one_mul, and_self, implies_true, forall_const]
  · simp only [mul_left_inj, imp_self, forall₂_true_iff]
  · simp only [true_and_iff, mem_filter, mem_univ] at hg
    simp only [hg, mem_filter, one_mul, MonoidHom.map_mul, mem_univ, mul_right_inv,
      eq_self_iff_true, exists_prop_of_true, MonoidHom.map_mul_inv, and_self_iff,
      mul_inv_cancel_right, inv_mul_cancel_right]
    -- porting note: added the next line.  It is weird!
    simp only [map_inv, mul_right_inv, one_mul, and_self, exists_prop]
#align card_fiber_eq_of_mem_range card_fiber_eq_of_mem_range

/-- In an integral domain, a sum indexed by a nontrivial homomorphism from a finite group is zero.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant02ca7351a86f2e3f7543a3b9e232be03a97dd65ca6f7346602117bd2796c1107.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant02ca7351a86f2e3f7543a3b9e232be03a97dd65ca6f7346602117bd2796c1107.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dab793a51b446a47f1e20f77b103db770df84a5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
