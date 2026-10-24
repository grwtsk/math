# arbitrarily_small_local_fixed_total

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e4050e13f789676033dcacc527b90f4bf358d461",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 122,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6d41a87962058fbb77a41748060d37b5eab0e828861039d33bea5dfe3d63948a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5cfe8a2e-1ae1-338c-1c1c-a199a8f42dc8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:636a30af-4cc8-aace-6c79-1320043da209",
  "kind": "theorem",
  "lexical_name": "arbitrarily_small_local_fixed_total",
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
  "slug": "arbitrarily-small-local-fixed-total--02ebae39ad48ad9e20dd1bc8",
  "source": {
    "blob": "e4050e13f789676033dcacc527b90f4bf358d461",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 122,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NetAngleAccounting/Variant6d41a87962058fbb77a41748060d37b5eab0e828861039d33bea5dfe3d63948a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02ebae39ad48ad9e20dd1bc8cb323585cfd31b405e00fd84174a4ee6617ecf1f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/NetAngleAccounting/Variant6d41a87962058fbb77a41748060d37b5eab0e828861039d33bea5dfe3d63948a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:636a30af-4cc8-aace-6c79-1320043da209`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem arbitrarily_small_local_fixed_total (epsilon : ℝ) (he : 0 < epsilon) :
    ∃ n : ℕ, 3 ≤ n ∧
      0 < prismVertexDeficit n ∧ prismVertexDeficit n < epsilon ∧
      (2 * (n : ℝ)) * prismVertexDeficit n = 4 * Real.pi := by
  obtain ⟨m, hm⟩ := exists_nat_gt (2 * Real.pi / epsilon)
  have hn : (0 : ℝ) < ((m + 3 : ℕ) : ℝ) := by positivity
  have hlarge : 2 * Real.pi / epsilon < ((m + 3 : ℕ) : ℝ) := by
    push_cast
    linarith
  refine ⟨m + 3, by omega, ?_, ?_, prism_total (m + 3) (by omega)⟩
  · exact div_pos (mul_pos (by norm_num) Real.pi_pos) hn
  · unfold prismVertexDeficit
    apply (div_lt_iff₀ hn).mpr
    have h := (div_lt_iff₀ he).mp hlarge
    nlinarith

end

end FormalResearch.PositiveAtlas.Boundary
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/NetAngleAccounting/Variant6d41a87962058fbb77a41748060d37b5eab0e828861039d33bea5dfe3d63948a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/NetAngleAccounting/Variant6d41a87962058fbb77a41748060d37b5eab0e828861039d33bea5dfe3d63948a.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4050e13f789676033dcacc527b90f4bf358d461` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
