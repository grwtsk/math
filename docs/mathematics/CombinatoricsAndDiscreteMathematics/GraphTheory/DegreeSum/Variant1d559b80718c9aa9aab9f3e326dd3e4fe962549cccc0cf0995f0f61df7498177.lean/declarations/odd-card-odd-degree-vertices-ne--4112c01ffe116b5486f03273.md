# odd_card_odd_degree_vertices_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71dd2579-b843-b1c3-cc17-b6c79403ab1e",
  "kind": "theorem",
  "lexical_name": "odd_card_odd_degree_vertices_ne",
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
  "slug": "odd-card-odd-degree-vertices-ne--4112c01ffe116b5486f03273",
  "source": {
    "blob": "79459bc2cb9efd52d7cf08f5d69a3edfcf7e7c1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 146,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variant1d559b80718c9aa9aab9f3e326dd3e4fe962549cccc0cf0995f0f61df7498177.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4112c01ffe116b5486f03273d1d467ffa2d731f57bd948d9116a3a4a096656a6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variant1d559b80718c9aa9aab9f3e326dd3e4fe962549cccc0cf0995f0f61df7498177.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71dd2579-b843-b1c3-cc17-b6c79403ab1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem odd_card_odd_degree_vertices_ne [Fintype V] [DecidableEq V] [DecidableRel G.Adj] (v : V)
    (h : Odd (G.degree v)) : Odd #{w | w ≠ v ∧ Odd (G.degree w)} := by
  rcases G.even_card_odd_degree_vertices with ⟨k, hg⟩
  have hk : 0 < k := by
    have hh : Finset.Nonempty {v : V | Odd (G.degree v)} := by
      use v
      simp only [true_and, mem_filter, mem_univ]
      exact h
    rwa [← card_pos, hg, ← two_mul, mul_pos_iff_of_pos_left] at hh
    exact zero_lt_two
  have hc : (fun w : V => w ≠ v ∧ Odd (G.degree w)) = fun w : V => Odd (G.degree w) ∧ w ≠ v := by
    ext w
    rw [and_comm]
  simp only [hc, filter_congr]
  rw [← filter_filter, filter_ne', card_erase_of_mem]
  · refine ⟨k - 1, tsub_eq_of_eq_add <| hg.trans ?_⟩
    rw [add_assoc, one_add_one_eq_two, ← Nat.mul_succ, ← two_mul]
    congr
    omega
  · simpa only [true_and, mem_filter, mem_univ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variant1d559b80718c9aa9aab9f3e326dd3e4fe962549cccc0cf0995f0f61df7498177.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variant1d559b80718c9aa9aab9f3e326dd3e4fe962549cccc0cf0995f0f61df7498177.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79459bc2cb9efd52d7cf08f5d69a3edfcf7e7c1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
