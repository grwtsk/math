# closure_of_rat_image_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "16e0bb058bc607baf07f47717d75da382ede54b4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 93,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b6/b6d6edbef3ff87a0d8158a88615040dca8e39eae363194339db2b714e3b554a7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:304aa546-7937-5d4c-96d6-d88e5bef8abd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fed2cd9c-1d50-4935-1c42-0ba566d860ef",
  "kind": "theorem",
  "lexical_name": "closure_of_rat_image_lt",
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
  "slug": "closure-of-rat-image-lt--058ae68cb8722a0ff7c0c643",
  "source": {
    "blob": "16e0bb058bc607baf07f47717d75da382ede54b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 93,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variantb6d6edbef3ff87a0d8158a88615040dca8e39eae363194339db2b714e3b554a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:058ae68cb8722a0ff7c0c643ce6cec8fbb0619bb2be0630d985024a569427736",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variantb6d6edbef3ff87a0d8158a88615040dca8e39eae363194339db2b714e3b554a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fed2cd9c-1d50-4935-1c42-0ba566d860ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closure_of_rat_image_lt {q : ℚ} :
    closure (((↑) : ℚ → ℝ) '' { x | q < x }) = { r | ↑q ≤ r } :=
  Subset.antisymm
    (isClosed_Ici.closure_subset_iff.2
      (image_subset_iff.2 fun p (h : q < p) => by simpa using h.le))
    fun x hx => mem_closure_iff_nhds.2 fun _ ht =>
      let ⟨ε, ε0, hε⟩ := Metric.mem_nhds_iff.1 ht
      let ⟨p, h₁, h₂⟩ := exists_rat_btwn ((lt_add_iff_pos_right x).2 ε0)
      ⟨p, hε <| by rwa [mem_ball, Real.dist_eq, abs_of_pos (sub_pos.2 h₁), sub_lt_iff_lt_add'],
        mem_image_of_mem _ <| Rat.cast_lt.1 <| lt_of_le_of_lt hx.out h₁⟩

/- TODO(Mario): Put these back only if needed later
lemma closure_of_rat_image_le_eq {q : ℚ} : closure ((coe : ℚ → ℝ) '' {x | q ≤ x}) = {r | ↑q ≤ r} :=
  _

lemma closure_of_rat_image_le_le_eq {a b : ℚ} (hab : a ≤ b) :
    closure (of_rat '' {q:ℚ | a ≤ q ∧ q ≤ b}) = {r:ℝ | of_rat a ≤ r ∧ r ≤ of_rat b} :=
  _
-/

end

section Periodic

namespace Function

/-- A continuous, periodic function has compact range. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variantb6d6edbef3ff87a0d8158a88615040dca8e39eae363194339db2b714e3b554a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variantb6d6edbef3ff87a0d8158a88615040dca8e39eae363194339db2b714e3b554a7.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16e0bb058bc607baf07f47717d75da382ede54b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
