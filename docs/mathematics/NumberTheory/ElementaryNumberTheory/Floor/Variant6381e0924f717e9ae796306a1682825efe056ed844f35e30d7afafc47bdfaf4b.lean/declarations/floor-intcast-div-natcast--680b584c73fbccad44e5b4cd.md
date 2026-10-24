# floor_intCast_div_natCast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1a530c5ccba80e7ee21f2b2d504f0b1069edcfaf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 59,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/63/6381e0924f717e9ae796306a1682825efe056ed844f35e30d7afafc47bdfaf4b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:58e8c8c1-3093-b91f-be19-47763dd2a00a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ea157ddf-4613-64f4-fa29-dbe7ef8c9e78",
  "kind": "theorem",
  "lexical_name": "floor_intCast_div_natCast",
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
  "slug": "floor-intcast-div-natcast--680b584c73fbccad44e5b4cd",
  "source": {
    "blob": "1a530c5ccba80e7ee21f2b2d504f0b1069edcfaf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 59,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Floor/Variant6381e0924f717e9ae796306a1682825efe056ed844f35e30d7afafc47bdfaf4b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:680b584c73fbccad44e5b4cdecad490097be2a998e3087adff205b23e28555e1",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Floor/Variant6381e0924f717e9ae796306a1682825efe056ed844f35e30d7afafc47bdfaf4b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea157ddf-4613-64f4-fa29-dbe7ef8c9e78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem floor_intCast_div_natCast (n : ℤ) (d : ℕ) : ⌊(↑n / ↑d : ℚ)⌋ = n / (↑d : ℤ) := by
  rw [Rat.floor_def]
  obtain rfl | hd := eq_zero_or_pos (a := d)
  · simp
  set q := (n : ℚ) / d with q_eq
  obtain ⟨c, n_eq_c_mul_num, d_eq_c_mul_denom⟩ : ∃ c, n = c * q.num ∧ (d : ℤ) = c * q.den := by
    rw [q_eq]
    exact mod_cast @Rat.exists_eq_mul_div_num_and_eq_mul_div_den n d (mod_cast hd.ne')
  rw [n_eq_c_mul_num, d_eq_c_mul_denom]
  refine (Int.mul_ediv_mul_of_pos _ _ <| pos_of_mul_pos_left ?_ <| Int.natCast_nonneg q.den).symm
  rwa [← d_eq_c_mul_denom, Int.natCast_pos]

@[norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Floor/Variant6381e0924f717e9ae796306a1682825efe056ed844f35e30d7afafc47bdfaf4b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Floor/Variant6381e0924f717e9ae796306a1682825efe056ed844f35e30d7afafc47bdfaf4b.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a530c5ccba80e7ee21f2b2d504f0b1069edcfaf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
