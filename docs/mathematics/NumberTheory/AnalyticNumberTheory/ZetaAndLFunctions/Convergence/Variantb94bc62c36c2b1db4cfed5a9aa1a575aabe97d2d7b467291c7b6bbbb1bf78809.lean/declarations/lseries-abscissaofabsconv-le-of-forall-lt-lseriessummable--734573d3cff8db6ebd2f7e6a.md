# LSeries.abscissaOfAbsConv_le_of_forall_lt_LSeriesSummable'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:435926f6-0631-e3d4-25b7-b4eee882600e",
  "kind": "lemma",
  "lexical_name": "LSeries.abscissaOfAbsConv_le_of_forall_lt_LSeriesSummable'",
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
  "slug": "lseries-abscissaofabsconv-le-of-forall-lt-lseriessummable--734573d3cff8db6ebd2f7e6a",
  "source": {
    "blob": "03e4660de008227642b508c74d184ff18571fbe8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 76,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variantb94bc62c36c2b1db4cfed5a9aa1a575aabe97d2d7b467291c7b6bbbb1bf78809.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:734573d3cff8db6ebd2f7e6ab3f1f3ee740c707230ff7df140365d654b3e1242",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variantb94bc62c36c2b1db4cfed5a9aa1a575aabe97d2d7b467291c7b6bbbb1bf78809.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:435926f6-0631-e3d4-25b7-b4eee882600e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LSeries.abscissaOfAbsConv_le_of_forall_lt_LSeriesSummable' {f : ℕ → ℂ} {x : EReal}
    (h : ∀ y : ℝ, x < y → LSeriesSummable f y) :
    abscissaOfAbsConv f ≤ x := by
  cases x with
  | coe => exact abscissaOfAbsConv_le_of_forall_lt_LSeriesSummable <| mod_cast h
  | top => exact le_top
  | bot =>
    refine le_of_eq <| sInf_eq_bot.mpr fun y hy ↦ ?_
    cases y with
    | bot => simp at hy
    | coe y => exact ⟨_, ⟨_, h _ <| EReal.bot_lt_coe _, rfl⟩, mod_cast sub_one_lt y⟩
    | top => exact ⟨_, ⟨_, h _ <| EReal.bot_lt_coe 0, rfl⟩, EReal.zero_lt_top⟩

/-- If `‖f n‖` is bounded by a constant times `n^x`, then the abscissa of absolute convergence
of `f` is bounded by `x + 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variantb94bc62c36c2b1db4cfed5a9aa1a575aabe97d2d7b467291c7b6bbbb1bf78809.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variantb94bc62c36c2b1db4cfed5a9aa1a575aabe97d2d7b467291c7b6bbbb1bf78809.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03e4660de008227642b508c74d184ff18571fbe8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
