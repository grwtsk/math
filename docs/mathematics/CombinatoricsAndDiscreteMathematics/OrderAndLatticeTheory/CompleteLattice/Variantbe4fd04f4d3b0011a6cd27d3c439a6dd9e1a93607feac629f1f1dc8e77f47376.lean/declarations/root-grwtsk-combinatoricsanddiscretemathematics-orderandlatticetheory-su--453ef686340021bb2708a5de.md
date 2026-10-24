# _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.SubsingletonAtTopEq.Variantff0a6afdf5928a0163607dc199804c38403d1aad3eb7b6cbda744bdcafd72033.Monotone.ciSup_comp_tendsto_atTop_of_linearOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:131c4a17-0ad9-f217-0f9a-3223a6f05af1",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.SubsingletonAtTopEq.Variantff0a6afdf5928a0163607dc199804c38403d1aad3eb7b6cbda744bdcafd72033.Monotone.ciSup_comp_tendsto_atTop_of_linearOrder",
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
  "slug": "root-grwtsk-combinatoricsanddiscretemathematics-orderandlatticetheory-su--453ef686340021bb2708a5de",
  "source": {
    "blob": "1b5f39e9e408286d3430014ee4bb9583b7b8661e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 91,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variantbe4fd04f4d3b0011a6cd27d3c439a6dd9e1a93607feac629f1f1dc8e77f47376.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:453ef686340021bb2708a5dec3bd30af7b32b70a3f87d03725ffa2ac34e16315",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variantbe4fd04f4d3b0011a6cd27d3c439a6dd9e1a93607feac629f1f1dc8e77f47376.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:131c4a17-0ad9-f217-0f9a-3223a6f05af1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.SubsingletonAtTopEq.Variantff0a6afdf5928a0163607dc199804c38403d1aad3eb7b6cbda744bdcafd72033.Monotone.ciSup_comp_tendsto_atTop_of_linearOrder [Preorder β]
    [ConditionallyCompleteLinearOrder γ] {l : Filter α} [l.NeBot] {f : β → γ} (hf : Monotone f)
    {g : α → β} (hg : Tendsto g l atTop) : ⨆ a, f (g a) = ⨆ b, f b := by
  if hb : BddAbove (range f) then
    exact hf.ciSup_comp_tendsto_atTop hb hg
  else
    rw [iSup, iSup, csSup_of_not_bddAbove, csSup_of_not_bddAbove hb]
    rwa [BddAbove, ← Function.comp_def f g, hf.upperBounds_range_comp_tendsto_atTop hg]

/-- If `f` is an antitone function taking values in a conditionally complete linear order
and `g` tends to `atTop` along a nontrivial filter,
then the indexed infimum of `f ∘ g` is equal to the indexed infimum of `f`. -/
@[to_dual
/-- If `f` is an antitone function taking values in a conditionally complete linear order
and `g` tends to `atBot` along a nontrivial filter,
then the indexed supremum of `f ∘ g` is equal to the indexed supremum of `f`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variantbe4fd04f4d3b0011a6cd27d3c439a6dd9e1a93607feac629f1f1dc8e77f47376.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variantbe4fd04f4d3b0011a6cd27d3c439a6dd9e1a93607feac629f1f1dc8e77f47376.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b5f39e9e408286d3430014ee4bb9583b7b8661e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
