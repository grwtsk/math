# card_le_of_pairwise_disjoint_separator_sets

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7daa11ec-a851-37df-1409-6fe0c81c0791",
  "kind": "theorem",
  "lexical_name": "card_le_of_pairwise_disjoint_separator_sets",
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
  "slug": "card-le-of-pairwise-disjoint-separator-sets--770d87c27d2963c015e40efb",
  "source": {
    "blob": "5317dc39f6dcc69bd21053e283f26dd8cac3f82d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 32,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SeparationBounds/Variant4b74bc99788f74a84bda16ca0d1f912e305f6efd573dfb527dafb3745811f310.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:770d87c27d2963c015e40efb5b36d22abcaecf27819d8da7cb265083b528a86e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SeparationBounds/Variant4b74bc99788f74a84bda16ca0d1f912e305f6efd573dfb527dafb3745811f310.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7daa11ec-a851-37df-1409-6fe0c81c0791`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_le_of_pairwise_disjoint_separator_sets {I : Type*} [DecidableEq Value]
    (obs : Test → Object → Value) (admitted selected : Finset Test)
    (target : Object → Result) (pairs : Finset I) (left right : I → Object)
    (targetDistinct : ∀ i ∈ pairs, target (left i) ≠ target (right i))
    (pairwiseDisjoint : (pairs : Set I).PairwiseDisjoint
      (fun i => separatorSet obs admitted (left i) (right i)))
    (selectedAdmitted : selected ⊆ admitted)
    (separates : SeparatesTarget obs selected target) : pairs.card ≤ selected.card := by
  classical
  have witness (i : pairs) :
      ∃ test : selected, test.val ∈ separatorSet obs admitted (left i.val) (right i.val) := by
    obtain ⟨test, selectedMember, different⟩ :=
      separates (left i.val) (right i.val) (targetDistinct i.val i.property)
    exact ⟨⟨test, selectedMember⟩,
      (mem_separatorSet obs admitted (left i.val) (right i.val) test).mpr
        ⟨selectedAdmitted selectedMember, different⟩⟩
  let chosen (i : pairs) : selected := Classical.choose (witness i)
  have member (i : pairs) :
      (chosen i).val ∈ separatorSet obs admitted (left i.val) (right i.val) :=
    Classical.choose_spec (witness i)
  apply Finset.card_le_card_of_injective (f := chosen)
  intro i j same
  apply Subtype.ext
  by_contra distinct
  exact (Finset.disjoint_left.mp (pairwiseDisjoint i.property j.property distinct)
    (member i)) (by simpa only [same] using member j)

namespace FiniteNotion

/-- Existing finite determination is exactly target separation by all declared
tests whose individual costs lie within the specified budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SeparationBounds/Variant4b74bc99788f74a84bda16ca0d1f912e305f6efd573dfb527dafb3745811f310.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SeparationBounds/Variant4b74bc99788f74a84bda16ca0d1f912e305f6efd573dfb527dafb3745811f310.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5317dc39f6dcc69bd21053e283f26dd8cac3f82d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
