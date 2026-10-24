# sq_mul_squarefree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "56bc98e5e10a0538253bdd06defddebadf2b7d28",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 364,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/0167dc6e1db2c53fa5abb73211b0e594937e673fd6b8bcdd12bbfd5d9733fe2e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:01371fc3-cd8c-0c33-d183-1e4a58f7d615",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:abac9ea3-8507-222c-b479-671d26dea800",
  "kind": "theorem",
  "lexical_name": "sq_mul_squarefree",
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
  "slug": "sq-mul-squarefree--35d89a8b6dd4d3521b23bad5",
  "source": {
    "blob": "56bc98e5e10a0538253bdd06defddebadf2b7d28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 373,
    "line": 364,
    "path": "GRWTSK/Topology/GeneralTopology/Squarefree/Variant0167dc6e1db2c53fa5abb73211b0e594937e673fd6b8bcdd12bbfd5d9733fe2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35d89a8b6dd4d3521b23bad5d93cd39d327a1be025a2dc7c2b1dcc1379294f8d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Squarefree/Variant0167dc6e1db2c53fa5abb73211b0e594937e673fd6b8bcdd12bbfd5d9733fe2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:abac9ea3-8507-222c-b479-671d26dea800`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 364–373.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sq_mul_squarefree (n : ℕ) : ∃ a b : ℕ, b ^ 2 * a = n ∧ Squarefree a := by
  cases' n with n
  · exact ⟨1, 0, by simp, squarefree_one⟩
  · obtain ⟨a, b, -, -, h₁, h₂⟩ := sq_mul_squarefree_of_pos (succ_pos n)
    exact ⟨a, b, h₁, h₂⟩
#align nat.sq_mul_squarefree Nat.sq_mul_squarefree

/-- `squarefree` is multiplicative. Note that the → direction does not require `hmn`
and generalizes to arbitrary commutative monoids. See `squarefree.of_mul_left` and
`squarefree.of_mul_right` above for auxiliary lemmas. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Squarefree/Variant0167dc6e1db2c53fa5abb73211b0e594937e673fd6b8bcdd12bbfd5d9733fe2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Squarefree/Variant0167dc6e1db2c53fa5abb73211b0e594937e673fd6b8bcdd12bbfd5d9733fe2e.lean#L364).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56bc98e5e10a0538253bdd06defddebadf2b7d28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
