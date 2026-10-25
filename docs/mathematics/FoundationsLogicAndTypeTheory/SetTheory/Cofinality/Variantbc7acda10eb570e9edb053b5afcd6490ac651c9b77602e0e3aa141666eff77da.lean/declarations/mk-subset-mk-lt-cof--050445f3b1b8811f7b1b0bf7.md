# mk_subset_mk_lt_cof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a25490b3-b52a-d99a-8436-9f7f136cf5f5",
  "kind": "theorem",
  "lexical_name": "mk_subset_mk_lt_cof",
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
  "slug": "mk-subset-mk-lt-cof--050445f3b1b8811f7b1b0bf7",
  "source": {
    "blob": "91dc1cb0e2e93f5c35363983ae9ddf88f9b5ddf3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 956,
    "line": 935,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cofinality/Variantbc7acda10eb570e9edb053b5afcd6490ac651c9b77602e0e3aa141666eff77da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:050445f3b1b8811f7b1b0bf759bd00fddbeb3bab105d3ecec92ab91e9181055f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Cofinality/Variantbc7acda10eb570e9edb053b5afcd6490ac651c9b77602e0e3aa141666eff77da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a25490b3-b52a-d99a-8436-9f7f136cf5f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 935–956.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mk_subset_mk_lt_cof {α : Type*} (h : ∀ x < #α, (2^x) < #α) :
    #{ s : Set α // #s < cof (#α).ord } = #α := by
  rcases eq_or_ne #α 0 with (ha | ha)
  · rw [ha]
    simp [fun s => (Cardinal.zero_le s).not_lt]
  have h' : IsStrongLimit #α := ⟨ha, h⟩
  rcases ord_eq α with ⟨r, wo, hr⟩
  haveI := wo
  apply le_antisymm
  · conv_rhs => rw [← mk_bounded_subset h hr]
    apply mk_le_mk_of_subset
    intro s hs
    rw [hr] at hs
    exact lt_cof_type hs
  · refine' @mk_le_of_injective α _ (fun x => Subtype.mk {x} _) _
    · rw [mk_singleton]
      exact one_lt_aleph0.trans_le (aleph0_le_cof.2 (ord_isLimit h'.isLimit.aleph0_le))
    · intro a b hab
      simpa [singleton_eq_singleton_iff] using hab
#align cardinal.mk_subset_mk_lt_cof Cardinal.mk_subset_mk_lt_cof

/-- A cardinal is regular if it is infinite and it equals its own cofinality. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Cofinality/Variantbc7acda10eb570e9edb053b5afcd6490ac651c9b77602e0e3aa141666eff77da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cofinality/Variantbc7acda10eb570e9edb053b5afcd6490ac651c9b77602e0e3aa141666eff77da.lean#L935).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91dc1cb0e2e93f5c35363983ae9ddf88f9b5ddf3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
