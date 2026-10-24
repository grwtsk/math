# swap_Q₁_natDegree

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
      "line": 382,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/ed03b3d45046b546268647434d4aca96f4b6925d995ef7172b6e6d37bd5ca82f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1f896c4a-fe15-251b-4de3-72a1951bfc68",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5e2825ef-37e0-6f19-a1b4-0d777d0b6181",
  "kind": "lemma",
  "lexical_name": "swap_Q₁_natDegree",
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
  "slug": "swap-q-natdegree--29ee3998d0e27a9106018ff8",
  "source": {
    "blob": "e8766bfdee1cff4e8efe141ca5a66de3ebf89879",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 395,
    "line": 382,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Luroth/Varianted03b3d45046b546268647434d4aca96f4b6925d995ef7172b6e6d37bd5ca82f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29ee3998d0e27a9106018ff8a5ca97d2854f29741257114efa5d3d77ff6f3d24",
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

Occurrence: `result:5e2825ef-37e0-6f19-a1b4-0d777d0b6181`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 382–395.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma swap_Q₁_natDegree (h : E ≠ ⊥) : (Bivariate.swap (Q₁ h)).natDegree = 0 := by
  have : Q₁ h * Φ E = θ E := Q₁_mul_Φ h
  apply_fun Bivariate.swap at this
  rw [map_mul] at this
  apply_fun natDegree at this
  rw [natDegree_mul
    ((map_ne_zero_iff _ Bivariate.swap.injective).mpr (Q₁_ne_zero h))
    ((map_ne_zero_iff _ Bivariate.swap.injective).mpr (Φ_ne_zero h))] at this
  have h₁ : (Bivariate.swap (θ E)).natDegree ≤ m E := by
    rw [swap_θ, natDegree_neg]
    exact θ_natDegree_le h
  grind [m_le_swap_Φ_natDegree h]

/-- A univariate polynomial `Q₂` that satisfies `Q₂ * Φ = θ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Luroth/Varianted03b3d45046b546268647434d4aca96f4b6925d995ef7172b6e6d37bd5ca82f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Luroth/Varianted03b3d45046b546268647434d4aca96f4b6925d995ef7172b6e6d37bd5ca82f.lean#L382).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8766bfdee1cff4e8efe141ca5a66de3ebf89879` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
