# IsCycle.isConj_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f5b30f2-ae94-e7ff-f727-0ee58ae77dca",
  "kind": "theorem",
  "lexical_name": "IsCycle.isConj_iff",
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
  "slug": "iscycle-isconj-iff--d060e3b624859ffd136843b8",
  "source": {
    "blob": "0bbd1a91e27836660b62a37ccb45042c976989f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 682,
    "line": 661,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant4d3f2cf63f7648f200580af903dc20abd0e1f9c497471f639baf2c0ccd5b63bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d060e3b624859ffd136843b899d037e2ce92716046286505a4dbcbf096ab3715",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant4d3f2cf63f7648f200580af903dc20abd0e1f9c497471f639baf2c0ccd5b63bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f5b30f2-ae94-e7ff-f727-0ee58ae77dca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 661–682.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsCycle.isConj_iff (hσ : IsCycle σ) (hτ : IsCycle τ) :
    IsConj σ τ ↔ #σ.support = #τ.support where
  mp h := by
    obtain ⟨π, rfl⟩ := (_root_.isConj_iff).1 h
    refine Finset.card_bij (fun a _ => π a) (fun _ ha => ?_) (fun _ _ _ _ ab => π.injective ab)
        fun b hb ↦ ⟨π⁻¹ b, ?_, π.apply_inv_self b⟩
    · simp [mem_support.1 ha]
    contrapose! hb
    rw [mem_support, Classical.not_not] at hb
    rw [mem_support, Classical.not_not, Perm.mul_apply, Perm.mul_apply, hb, Perm.apply_inv_self]
  mpr := hσ.isConj hτ

end Conjugation

/-! ### `IsCycleOn` -/

section IsCycleOn

variable {f g : Perm α} {s t : Set α} {a b x y : α}

/-- A permutation is a cycle on `s` when any two points of `s` are related by repeated application
of the permutation. Note that this means the identity is a cycle of subsingleton sets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant4d3f2cf63f7648f200580af903dc20abd0e1f9c497471f639baf2c0ccd5b63bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant4d3f2cf63f7648f200580af903dc20abd0e1f9c497471f639baf2c0ccd5b63bd.lean#L661).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0bbd1a91e27836660b62a37ccb45042c976989f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
