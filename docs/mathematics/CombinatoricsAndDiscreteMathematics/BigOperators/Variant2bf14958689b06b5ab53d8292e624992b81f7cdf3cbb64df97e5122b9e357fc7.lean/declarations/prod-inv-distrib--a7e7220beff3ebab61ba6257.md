# prod_inv_distrib

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6afcd6db06cc17dd68f66c213692138d4e6f366a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 153,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2b/2bf14958689b06b5ab53d8292e624992b81f7cdf3cbb64df97e5122b9e357fc7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:66df49f6-ba21-ffc1-c773-a250713c9a42",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b57e3a40-9ab4-4d24-b543-66f4b5d81e75",
  "kind": "lemma",
  "lexical_name": "prod_inv_distrib",
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
  "slug": "prod-inv-distrib--a7e7220beff3ebab61ba6257",
  "source": {
    "blob": "6afcd6db06cc17dd68f66c213692138d4e6f366a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 153,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant2bf14958689b06b5ab53d8292e624992b81f7cdf3cbb64df97e5122b9e357fc7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7e7220beff3ebab61ba62573b2d8592e0dbda6aaff6abc1260055f94e0f859f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BigOperators/Variant2bf14958689b06b5ab53d8292e624992b81f7cdf3cbb64df97e5122b9e357fc7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b57e3a40-9ab4-4d24-b543-66f4b5d81e75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma prod_inv_distrib (hf : (s : Set ι).Pairwise fun i j ↦ f i ≠ 0 ∨ f j ≠ ∞) :
    (∏ i ∈ s, f i)⁻¹ = ∏ i ∈ s, (f i)⁻¹ := by
  induction s using Finset.cons_induction with
  | empty => simp
  | cons i s hi ih => ?_
  simp only [Finset.prod_cons, ← ih (hf.mono <| by simp)]
  refine ENNReal.mul_inv (not_or_of_imp fun hi₀ ↦ prod_ne_top fun j hj ↦ ?_)
    (not_or_of_imp fun hi₀ ↦ Finset.prod_ne_zero_iff.2 fun j hj ↦ ?_)
  · exact imp_iff_not_or.2 (hf (by simp) (by simp [hj]) <| .symm <| ne_of_mem_of_not_mem hj hi) hi₀
  · exact imp_iff_not_or.2 (hf (by simp [hj]) (by simp) <| ne_of_mem_of_not_mem hj hi).symm hi₀

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BigOperators/Variant2bf14958689b06b5ab53d8292e624992b81f7cdf3cbb64df97e5122b9e357fc7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant2bf14958689b06b5ab53d8292e624992b81f7cdf3cbb64df97e5122b9e357fc7.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6afcd6db06cc17dd68f66c213692138d4e6f366a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
