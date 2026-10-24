# isEquiv_iff_val_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2ec2df2d98249cf416c09a55d151946533574627",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 485,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/458f8613719ad8dad6a728552317ebffeba4bedf2fc268a6e13eecf176287a56.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dfdda2c0-1d71-3dd8-e3c6-e333e74cc538",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9a9f63a7-5c9f-87af-19f7-99168ca7eccc",
  "kind": "theorem",
  "lexical_name": "isEquiv_iff_val_eq_one",
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
  "slug": "isequiv-iff-val-eq-one--bc152aa08fa93f82f0f82f51",
  "source": {
    "blob": "2ec2df2d98249cf416c09a55d151946533574627",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 521,
    "line": 485,
    "path": "GRWTSK/Algebra/Basic/Variant458f8613719ad8dad6a728552317ebffeba4bedf2fc268a6e13eecf176287a56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc152aa08fa93f82f0f82f5121b8272152f0ea54b49a24a136b3e4d92f90b746",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant458f8613719ad8dad6a728552317ebffeba4bedf2fc268a6e13eecf176287a56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a9f63a7-5c9f-87af-19f7-99168ca7eccc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 485–521.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isEquiv_iff_val_eq_one [LinearOrderedCommGroupWithZero Γ₀]
    [LinearOrderedCommGroupWithZero Γ'₀] {v : Valuation K Γ₀} {v' : Valuation K Γ'₀} :
    v.IsEquiv v' ↔ ∀ {x : K}, v x = 1 ↔ v' x = 1 := by
  constructor
  · intro h x
    simpa using @IsEquiv.val_eq _ _ _ _ _ _ v v' h x 1
  · intro h
    apply isEquiv_of_val_le_one
    intro x
    constructor
    · intro hx
      rcases lt_or_eq_of_le hx with hx' | hx'
      · have : v (1 + x) = 1 := by
          rw [← v.map_one]
          apply map_add_eq_of_lt_left
          simpa
        rw [h] at this
        rw [show x = -1 + (1 + x) by simp]
        refine le_trans (v'.map_add _ _) ?_
        simp [this]
      · rw [h] at hx'
        exact le_of_eq hx'
    · intro hx
      rcases lt_or_eq_of_le hx with hx' | hx'
      · have : v' (1 + x) = 1 := by
          rw [← v'.map_one]
          apply map_add_eq_of_lt_left
          simpa
        rw [← h] at this
        rw [show x = -1 + (1 + x) by simp]
        refine le_trans (v.map_add _ _) ?_
        simp [this]
      · rw [← h] at hx'
        exact le_of_eq hx'

alias ⟨IsEquiv.eq_one_iff_eq_one, _⟩ := isEquiv_iff_val_eq_one

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant458f8613719ad8dad6a728552317ebffeba4bedf2fc268a6e13eecf176287a56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant458f8613719ad8dad6a728552317ebffeba4bedf2fc268a6e13eecf176287a56.lean#L485).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ec2df2d98249cf416c09a55d151946533574627` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
