# blockTriangular_inv_of_blockTriangular

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f0305ce3-d723-6636-79cd-c8138931303d",
  "kind": "theorem",
  "lexical_name": "blockTriangular_inv_of_blockTriangular",
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
  "slug": "blocktriangular-inv-of-blocktriangular--49c796677c6fa829fa029422",
  "source": {
    "blob": "e76935818d9641173894b307b04362f9b8e9cf43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 510,
    "line": 487,
    "path": "GRWTSK/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49c796677c6fa829fa0294223bf08130028488fdea81d35991be6d9a57fe2f9c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0305ce3-d723-6636-79cd-c8138931303d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 487–510.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem blockTriangular_inv_of_blockTriangular [LinearOrder α] [Invertible M]
    (hM : BlockTriangular M b) : BlockTriangular M⁻¹ b := by
  suffices ∀ hs : Finset α, univ.image b = hs → BlockTriangular M⁻¹ b by exact this _ rfl
  intro s hs
  induction s using Finset.strongInduction generalizing m with | H s ih =>
  subst hs
  intro i j hij
  have : Inhabited m := ⟨i⟩
  let k := (univ.image b).max' (univ_nonempty.image _)
  let b' := fun i : { a // b a < k } => b ↑i
  let A := M.toBlock (fun i => b i < k) fun j => b j < k
  obtain hbi | hi : b i = k ∨ _ := (le_max' _ (b i) <| mem_image_of_mem _ <| mem_univ _).eq_or_lt
  · have : M⁻¹.toBlock (fun i => k ≤ b i) (fun i => b i < k) ⟨i, hbi.ge⟩ ⟨j, hbi ▸ hij⟩ = 0 := by
      simp only [toBlock_inverse_eq_zero hM k, Matrix.zero_apply]
    simp [this.symm]
  have : Invertible A := hM.invertibleToBlock _
  have hA : A.BlockTriangular b' := hM.submatrix
  have hb' : image b' univ ⊂ image b univ := by
    convert! image_subtype_univ_ssubset_image_univ k b _ (fun a => a < k) (lt_irrefl _)
    convert! max'_mem (α := α) _ _
  have hij' : b' ⟨j, hij.trans hi⟩ < b' ⟨i, hi⟩ := by simp_rw [b', hij]
  simp [A, hM.inv_toBlock k, (ih (image b' univ) hb' hA rfl hij').symm]

end Matrix
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean#L487).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e76935818d9641173894b307b04362f9b8e9cf43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
