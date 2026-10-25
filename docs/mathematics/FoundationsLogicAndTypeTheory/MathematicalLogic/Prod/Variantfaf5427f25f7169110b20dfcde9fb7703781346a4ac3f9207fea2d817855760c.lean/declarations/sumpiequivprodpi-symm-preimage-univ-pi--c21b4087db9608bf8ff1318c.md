# sumPiEquivProdPi_symm_preimage_univ_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "96e972d6c5f0f3ae5fc4e48e95c84125818bbf98",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 930,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fa/faf5427f25f7169110b20dfcde9fb7703781346a4ac3f9207fea2d817855760c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1de2f10a-44e8-1c70-3c48-c0fa956a7417",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f54a6699-03de-e4ba-4d78-5622b903b951",
  "kind": "theorem",
  "lexical_name": "sumPiEquivProdPi_symm_preimage_univ_pi",
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
  "slug": "sumpiequivprodpi-symm-preimage-univ-pi--c21b4087db9608bf8ff1318c",
  "source": {
    "blob": "96e972d6c5f0f3ae5fc4e48e95c84125818bbf98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 947,
    "line": 930,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Prod/Variantfaf5427f25f7169110b20dfcde9fb7703781346a4ac3f9207fea2d817855760c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c21b4087db9608bf8ff1318c388b7abe4c4fe6c173c0a3880ef17fb384b59ff6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Prod/Variantfaf5427f25f7169110b20dfcde9fb7703781346a4ac3f9207fea2d817855760c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f54a6699-03de-e4ba-4d78-5622b903b951`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 930–947.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sumPiEquivProdPi_symm_preimage_univ_pi (π : ι ⊕ ι' → Type*) (t : ∀ i, Set (π i)) :
    (sumPiEquivProdPi π).symm ⁻¹' univ.pi t =
    univ.pi (fun i => t (.inl i)) ×ˢ univ.pi fun i => t (.inr i) := by
  ext
  simp_rw [mem_preimage, mem_prod, mem_univ_pi, sumPiEquivProdPi_symm_apply]
  constructor
  · intro h; constructor <;> intro i <;> apply h
  · rintro ⟨h₁, h₂⟩ (i|i) <;> simp <;> apply_assumption

end Equiv

namespace Set

variable {α β γ δ : Type*} {s : Set α} {f : α → β}

section graphOn
variable {x : α × β}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Prod/Variantfaf5427f25f7169110b20dfcde9fb7703781346a4ac3f9207fea2d817855760c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Prod/Variantfaf5427f25f7169110b20dfcde9fb7703781346a4ac3f9207fea2d817855760c.lean#L930).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96e972d6c5f0f3ae5fc4e48e95c84125818bbf98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
