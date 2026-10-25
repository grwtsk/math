# composed_cover_threshold

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:efb46442-e028-bc7c-ffb0-8c4c1d735dda",
  "kind": "theorem",
  "lexical_name": "composed_cover_threshold",
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
  "slug": "composed-cover-threshold--b9dfbc98a51583ffc2b1bc85",
  "source": {
    "blob": "de3615aa257e048d272585e2db475f8cd582bbde",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 91,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variant90e9d8e740b3f8217aed5848d5e04a82c680b479d0b762339b6c6ecb19c90b0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9dfbc98a51583ffc2b1bc851cfe722f4bc80313413504225728efb057dc7d73",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variant90e9d8e740b3f8217aed5848d5e04a82c680b479d0b762339b6c6ecb19c90b0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:efb46442-e028-bc7c-ffb0-8c4c1d735dda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem composed_cover_threshold {J : Type u} (I : J → Type u)
    (μ κ : Cardinal.{u}) (hμ : μ.IsStrongLimit) (huncountable : ℵ₀ < μ)
    (hκ : κ < μ) (hJ : #J < μ) (hI : ∀ j, #(I j) < κ) :
    ∃ κ' : Cardinal.{u}, κ' < μ ∧ κ ≤ κ' ∧ #J < κ' ∧ #(Σ j, I j) < κ' := by
  let β : Cardinal.{u} := max ℵ₀ (max κ #J)
  have hβ : β < μ := max_lt huncountable (max_lt hκ hJ)
  have hκβ : κ ≤ β := (le_max_left κ #J).trans (le_max_right ℵ₀ _)
  have hJβ : #J ≤ β := (le_max_right κ #J).trans (le_max_right ℵ₀ _)
  have hβinf : ℵ₀ ≤ β := le_max_left _ _
  refine ⟨Order.succ β, hμ.isSuccLimit.succ_lt hβ, hκβ.trans (Order.le_succ β),
    hJβ.trans_lt (Order.lt_succ β), ?_⟩
  rw [Cardinal.mk_sigma]
  exact Cardinal.sum_lt_of_isRegular (Cardinal.isRegular_succ hβinf)
    (hJβ.trans_lt (Order.lt_succ β)) fun j ↦
      (hI j).trans_le (hκβ.trans (Order.le_succ β))

/-- A composite cover reconstructs exactly using its dependent-sum indices. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variant90e9d8e740b3f8217aed5848d5e04a82c680b479d0b762339b6c6ecb19c90b0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variant90e9d8e740b3f8217aed5848d5e04a82c680b479d0b762339b6c6ecb19c90b0e.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de3615aa257e048d272585e2db475f8cd582bbde` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
