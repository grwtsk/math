# arbitrarily_small_local_fixed_total

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ea7ab1d40a7901e37e62b7bbe65306d9a32d7a75",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 127,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/456116ba8f94bcc7cae566b67799aed0092263e4861113bb63ab861278081bef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b4ac528c-32c6-e426-0d84-d33a2fd562f0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fc770d13-760e-1203-6f5b-02773f5161c9",
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
  "slug": "arbitrarily-small-local-fixed-total--29870753c41e4d6fa4de7233",
  "source": {
    "blob": "ea7ab1d40a7901e37e62b7bbe65306d9a32d7a75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 127,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NetAngleAccounting/Variant456116ba8f94bcc7cae566b67799aed0092263e4861113bb63ab861278081bef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29870753c41e4d6fa4de7233867a59ce78ce88396def99a7455cef1ea62f2cc4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/NetAngleAccounting/Variant456116ba8f94bcc7cae566b67799aed0092263e4861113bb63ab861278081bef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc770d13-760e-1203-6f5b-02773f5161c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–145.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/NetAngleAccounting/Variant456116ba8f94bcc7cae566b67799aed0092263e4861113bb63ab861278081bef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/NetAngleAccounting/Variant456116ba8f94bcc7cae566b67799aed0092263e4861113bb63ab861278081bef.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea7ab1d40a7901e37e62b7bbe65306d9a32d7a75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
