# judge_pairs_card_lower_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:796c94c2-653e-b0af-7246-a66e264e0e93",
  "kind": "theorem",
  "lexical_name": "judge_pairs_card_lower_bound",
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
  "slug": "judge-pairs-card-lower-bound--50992429533593b038b1ccc3",
  "source": {
    "blob": "f2dfab426e1ad15fbef5460e9196b4881633b330",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 179,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variantaaf9bb83f6e1e6710a950983d07a7bbc925266ce05b70e2bdbdf619d28880145.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50992429533593b038b1ccc3b09328155333fac98a91a9fd60cbc6ae3567a005",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variantaaf9bb83f6e1e6710a950983d07a7bbc925266ce05b70e2bdbdf619d28880145.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:796c94c2-653e-b0af-7246-a66e264e0e93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem judge_pairs_card_lower_bound {z : ℕ} (hJ : Fintype.card J = 2 * z + 1) (c : C) :
    2 * z * z + 2 * z + 1 ≤ (Finset.univ.filter fun p : JudgePair J => p.Agree r c).card := by
  let x := (Finset.univ.filter fun j => r c j).card
  let y := (Finset.univ.filter fun j => ¬r c j).card
  have h : (Finset.univ.filter fun p : JudgePair J => p.Agree r c).card = x * x + y * y := by
    simp [x, y, ← Finset.filter_product_card]
  rw [h]; apply Int.le_of_ofNat_le_ofNat; simp only [Int.natCast_add, Int.natCast_mul]
  apply norm_bound_of_odd_sum
  suffices x + y = 2 * z + 1 by simp [← Int.natCast_add, this]
  rw [Finset.filter_card_add_filter_neg_card_eq_card, ← hJ, Finset.card_univ]

open scoped Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variantaaf9bb83f6e1e6710a950983d07a7bbc925266ce05b70e2bdbdf619d28880145.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variantaaf9bb83f6e1e6710a950983d07a7bbc925266ce05b70e2bdbdf619d28880145.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2dfab426e1ad15fbef5460e9196b4881633b330` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
