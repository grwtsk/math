# hasCentralRadical_and_of_isIrreducible_of_isFaithful

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:af8d5f30-521f-09a0-6c4d-4f7f54b30a82",
  "kind": "lemma",
  "lexical_name": "hasCentralRadical_and_of_isIrreducible_of_isFaithful",
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
  "slug": "hascentralradical-and-of-isirreducible-of-isfaithful--355d29cd313fc0f6a4cbc938",
  "source": {
    "blob": "b81066c54bf0875b5ab97afd8330076c4c95a025",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 50,
    "path": "GRWTSK/Algebra/LinearAlgebra/Lemmas/Variantbaacd6d9590ed0f24cc81e106e336a852600af3efe7582941a4706ef93def2cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:355d29cd313fc0f6a4cbc938c202a11ae1b2d43eac78992c0b968a272681f9cf",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Lemmas/Variantbaacd6d9590ed0f24cc81e106e336a852600af3efe7582941a4706ef93def2cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af8d5f30-521f-09a0-6c4d-4f7f54b30a82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasCentralRadical_and_of_isIrreducible_of_isFaithful :
    HasCentralRadical k L ∧ (∀ x, x ∈ center k L ↔ toEnd k L M x ∈ k ∙ LinearMap.id) := by
  have _i := nontrivial_of_isIrreducible k L M
  obtain ⟨χ, hχ⟩ : ∃ χ : Module.Dual k (radical k L), Nontrivial (weightSpace M χ) :=
    exists_nontrivial_weightSpace_of_isSolvable k (radical k L) M
  let N : LieSubmodule k L M := weightSpaceOfIsLieTower k M χ
  replace hχ : Nontrivial N := hχ
  replace hχ : N = ⊤ := N.eq_top_of_isIrreducible k L M
  replace hχ (x : L) (hx : x ∈ radical k L) : toEnd k _ M x = χ ⟨x, hx⟩ • LinearMap.id := by
    ext m
    have hm : ∀ (y : L) (hy : y ∈ radical k L), ⁅y, m⁆ = χ ⟨y, hy⟩ • m := by
      simpa [N, weightSpaceOfIsLieTower, mem_weightSpace] using (hχ ▸ mem_top _ : m ∈ N)
    simpa using hm x hx
  have aux : radical k L = center k L := by
    refine le_antisymm (fun x hx ↦ (mem_maxTrivSubmodule k L L x).mpr ?_) (center_le_radical k L)
    intro y
    simp [← toEnd_eq_zero_iff (R := k) (L := L) (M := M), LieHom.map_lie, hχ _ hx, lie_smul,
      (toEnd k L M y).commute_id_right.lie_eq]
  refine ⟨⟨aux⟩, fun x ↦ ⟨fun hx ↦ ?_, fun hx ↦ (mem_maxTrivSubmodule k L L x).mpr fun y ↦ ?_⟩⟩
  · rw [← aux] at hx
    exact Submodule.mem_span_singleton.mpr ⟨χ ⟨x, hx⟩, (hχ x hx).symm⟩
  · obtain ⟨t, ht⟩ := Submodule.mem_span_singleton.mp hx
    simp [← toEnd_eq_zero_iff (R := k) (L := L) (M := M), LieHom.map_lie, ← ht, lie_smul,
      (toEnd k L M y).commute_id_right.lie_eq]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Lemmas/Variantbaacd6d9590ed0f24cc81e106e336a852600af3efe7582941a4706ef93def2cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Lemmas/Variantbaacd6d9590ed0f24cc81e106e336a852600af3efe7582941a4706ef93def2cc.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b81066c54bf0875b5ab97afd8330076c4c95a025` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
