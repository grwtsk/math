# sumPiEquivProdPi_symm_preimage_univ_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:28b28ea5-3ae4-5800-c756-7e284468d8e7",
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
  "slug": "sumpiequivprodpi-symm-preimage-univ-pi--c6f07444b8950b8ff9a08dca",
  "source": {
    "blob": "3d9759472517f826af65949e24035aa74780fb87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 955,
    "line": 938,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Prod/Variant7c485396f3d5967143789d7a24940582fe371b836fd67d851e8d4c6df2858245.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6f07444b8950b8ff9a08dcad18244d7e58bc0874da1649739282f27d0d1e701",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Prod/Variant7c485396f3d5967143789d7a24940582fe371b836fd67d851e8d4c6df2858245.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28b28ea5-3ae4-5800-c756-7e284468d8e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 938–955.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Prod/Variant7c485396f3d5967143789d7a24940582fe371b836fd67d851e8d4c6df2858245.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Prod/Variant7c485396f3d5967143789d7a24940582fe371b836fd67d851e8d4c6df2858245.lean#L938).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d9759472517f826af65949e24035aa74780fb87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
