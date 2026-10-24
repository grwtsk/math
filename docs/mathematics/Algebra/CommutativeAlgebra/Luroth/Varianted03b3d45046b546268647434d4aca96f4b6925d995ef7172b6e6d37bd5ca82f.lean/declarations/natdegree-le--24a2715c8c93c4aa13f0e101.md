# θ_natDegree_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e8766bfdee1cff4e8efe141ca5a66de3ebf89879",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 331,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/ed03b3d45046b546268647434d4aca96f4b6925d995ef7172b6e6d37bd5ca82f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:958897c2-96be-b737-a63c-24ed98e57087",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:150b2347-2e50-bc2a-4b42-026d442dbcda",
  "kind": "lemma",
  "lexical_name": "θ_natDegree_le",
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
  "slug": "natdegree-le--24a2715c8c93c4aa13f0e101",
  "source": {
    "blob": "e8766bfdee1cff4e8efe141ca5a66de3ebf89879",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 340,
    "line": 331,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Luroth/Varianted03b3d45046b546268647434d4aca96f4b6925d995ef7172b6e6d37bd5ca82f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24a2715c8c93c4aa13f0e1013c637f1eacf590dd51c49cd80f5076b2926482a7",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Luroth/Varianted03b3d45046b546268647434d4aca96f4b6925d995ef7172b6e6d37bd5ca82f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:150b2347-2e50-bc2a-4b42-026d442dbcda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 331–340.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma θ_natDegree_le (h : E ≠ ⊥) : (θ E).natDegree ≤ m E := by
  convert! natDegree_sub_le _ _ using 3
  · rw [natDegree_mul (C_ne_zero.mpr (generator E).denom_ne_zero)
      (Polynomial.map_ne_zero (num_ne_zero (generator_ne_zero h))), natDegree_C, zero_add,
      natDegree_map]
  · rw [natDegree_mul (C_ne_zero.mpr (num_ne_zero (generator_ne_zero h)))
      (Polynomial.map_ne_zero (generator E).denom_ne_zero), natDegree_C, zero_add, natDegree_map]

/-- Equation (11.3.8) from Cohn's proof, viewed as an equation of polynomials with coefficients
in `K⟮X⟯`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Luroth/Varianted03b3d45046b546268647434d4aca96f4b6925d995ef7172b6e6d37bd5ca82f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Luroth/Varianted03b3d45046b546268647434d4aca96f4b6925d995ef7172b6e6d37bd5ca82f.lean#L331).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8766bfdee1cff4e8efe141ca5a66de3ebf89879` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
