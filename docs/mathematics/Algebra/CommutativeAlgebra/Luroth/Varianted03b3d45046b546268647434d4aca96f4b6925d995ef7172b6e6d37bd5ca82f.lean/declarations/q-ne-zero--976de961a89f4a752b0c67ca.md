# q_ne_zero

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
      "line": 298,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/ed03b3d45046b546268647434d4aca96f4b6925d995ef7172b6e6d37bd5ca82f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0f5b5f19-a182-50ff-0ded-132de449ce34",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d673a9d0-7e8f-cd3a-a735-f7b2f300a090",
  "kind": "lemma",
  "lexical_name": "q_ne_zero",
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
  "slug": "q-ne-zero--976de961a89f4a752b0c67ca",
  "source": {
    "blob": "e8766bfdee1cff4e8efe141ca5a66de3ebf89879",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 310,
    "line": 298,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Luroth/Varianted03b3d45046b546268647434d4aca96f4b6925d995ef7172b6e6d37bd5ca82f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:976de961a89f4a752b0c67caf99fbce9971f3a17c1763929eacfbbc7ead006e8",
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

Occurrence: `result:d673a9d0-7e8f-cd3a-a735-f7b2f300a090`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 298–310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma q_ne_zero (h : E ≠ ⊥) : q E ≠ 0 := right_ne_zero_of_mul <|
  φ_mul_q (E := E) ▸ Polynomial.map_ne_zero <|
    (generator E).minpolyX_eq_zero_iff.not.mpr (generator_ne_C h)

-- The next series of definitions concerns the polynomial `Q` in Cohn's proof.
-- A priori, it will be a polynomial with coefficients in `K⟮X⟯`, which we call `Q₀`.
-- We then show that `Q₀` is also a polynomial in the other variable, hence we get
-- a bivariate polynomial `Q₁`. Then we show that it is independent of `X`, hence we may
-- replace it by a univariate polynomial `Q₂`. Finally, we prove that it is also independent
-- of `x`, hence we replace it by a constant `Q₃`.

variable (E) in
/-- A polynomial `Q₀` with coefficients in `K⟮X⟯` that satisfies `Q₀ * Φ = θ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Luroth/Varianted03b3d45046b546268647434d4aca96f4b6925d995ef7172b6e6d37bd5ca82f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Luroth/Varianted03b3d45046b546268647434d4aca96f4b6925d995ef7172b6e6d37bd5ca82f.lean#L298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8766bfdee1cff4e8efe141ca5a66de3ebf89879` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
