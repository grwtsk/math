# iwasawaStructure_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cff4dc123794d09c118ebd53332b1051db629d589858adead0cd92c17a2e2145",
  "kind": "def",
  "lexical_name": "iwasawaStructure_two",
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
  "slug": "iwasawastructure-two--31f5da8d633d98adeb1a52e6",
  "source": {
    "blob": "559c14cd29c58e9ad50384b80e38536061fe0072",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 73,
    "path": "GRWTSK/Algebra/GroupTheory/Simple/Variantfadfb2a233019e85d0b5d8ae7ebda07d2e66d7aecbd4f08e262c6e88e43bf334.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:31f5da8d633d98adeb1a52e6685d880a5a11ea1b7304bfb7f8dde43fadaf39df",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Simple/Variantfadfb2a233019e85d0b5d8ae7ebda07d2e66d7aecbd4f08e262c6e88e43bf334.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cff4dc123794d09c118ebd53332b1051db629d589858adead0cd92c17a2e2145`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def iwasawaStructure_two [∀ s : Set α, DecidablePred fun x ↦ x ∈ s] :
    IwasawaStructure (Perm α) (Set.powersetCard α 2) where
  T s := (ofSubtype : Perm (s : Set α) →* Perm α).range
  is_comm s := by
    have : IsMulCommutative (Perm s) := isMulCommutative_iff_card_le_two.mpr (by simp)
    infer_instance
  is_conj g s := by
    convert! (conj_smul_range_ofSubtype g s).symm
  is_generator := by
    rw [eq_top_iff, ← Equiv.Perm.closure_isSwap, Subgroup.closure_le]
    rintro g ⟨a, b, hab, rfl⟩
    apply Subgroup.mem_iSup_of_mem ⟨{a, b}, Finset.card_pair hab⟩
    exact ⟨swap ⟨a, by simp⟩ ⟨b, by simp⟩, Equiv.Perm.ofSubtype_swap_eq _ _⟩

/-- If `α` has at least 5 elements, then any nontrivial
normal subgroup of `Equiv.Perm α` contains `alternatingGroup α`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Simple/Variantfadfb2a233019e85d0b5d8ae7ebda07d2e66d7aecbd4f08e262c6e88e43bf334.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Simple/Variantfadfb2a233019e85d0b5d8ae7ebda07d2e66d7aecbd4f08e262c6e88e43bf334.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `559c14cd29c58e9ad50384b80e38536061fe0072` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
