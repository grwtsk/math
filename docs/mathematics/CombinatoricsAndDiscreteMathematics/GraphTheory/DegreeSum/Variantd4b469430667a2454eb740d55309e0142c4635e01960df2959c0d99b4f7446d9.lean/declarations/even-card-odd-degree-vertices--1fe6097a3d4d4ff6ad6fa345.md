# even_card_odd_degree_vertices

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:918c095f-9c72-44a5-208d-b15f3b02002b",
  "kind": "theorem",
  "lexical_name": "even_card_odd_degree_vertices",
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
  "slug": "even-card-odd-degree-vertices--1fe6097a3d4d4ff6ad6fa345",
  "source": {
    "blob": "17fd6b486d986d6b270d7613555e34e719bfa8eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 127,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variantd4b469430667a2454eb740d55309e0142c4635e01960df2959c0d99b4f7446d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1fe6097a3d4d4ff6ad6fa345c74e679805b2bd6552f0926bcac9bf26d740d701",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variantd4b469430667a2454eb740d55309e0142c4635e01960df2959c0d99b4f7446d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:918c095f-9c72-44a5-208d-b15f3b02002b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem even_card_odd_degree_vertices [Fintype V] [DecidableRel G.Adj] :
    Even (univ.filter fun v => Odd (G.degree v)).card := by
  classical
    have h := congr_arg (fun n => ↑n : ℕ → ZMod 2) G.sum_degrees_eq_twice_card_edges
    simp only [ZMod.nat_cast_self, zero_mul, Nat.cast_mul] at h
    rw [Nat.cast_sum, ← sum_filter_ne_zero] at h
    rw [@sum_congr _ _ _ _ (fun v => (G.degree v : ZMod 2)) (fun _v => (1 : ZMod 2)) _ rfl] at h
    · simp only [filter_congr, mul_one, nsmul_eq_mul, sum_const, Ne.def] at h
      rw [← ZMod.eq_zero_iff_even]
      convert h
      exact ZMod.ne_zero_iff_odd.symm
    · intro v
      simp only [true_and_iff, mem_filter, mem_univ, Ne.def]
      rw [ZMod.eq_zero_iff_even, ZMod.eq_one_iff_odd, Nat.odd_iff_not_even, imp_self]
      trivial
#align simple_graph.even_card_odd_degree_vertices SimpleGraph.even_card_odd_degree_vertices

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variantd4b469430667a2454eb740d55309e0142c4635e01960df2959c0d99b4f7446d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variantd4b469430667a2454eb740d55309e0142c4635e01960df2959c0d99b4f7446d9.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17fd6b486d986d6b270d7613555e34e719bfa8eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
