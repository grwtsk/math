# sq_sqrt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:859c8517-444e-3b5c-1642-bb999ab8c67d",
  "kind": "lemma",
  "lexical_name": "sq_sqrt",
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
  "slug": "sq-sqrt--3fcdd69769d6556df749ce6b",
  "source": {
    "blob": "8a073a067a25a3cba971bb00baffda86dafe8e1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 220,
    "path": "GRWTSK/Algebra/LinearAlgebra/PosDef/Variant8f6d1529db1144edc5c289621848b970a3ebe1f35198a9232ac0c88fba263a48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3fcdd69769d6556df749ce6b80a4c37f28bdcc9122d0993477ce2fa9a7efe054",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PosDef/Variant8f6d1529db1144edc5c289621848b970a3ebe1f35198a9232ac0c88fba263a48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:859c8517-444e-3b5c-1642-bb999ab8c67d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sq_sqrt : hA.sqrt ^ 2 = A := by
  let C : Matrix n n 𝕜 := hA.1.eigenvectorUnitary
  let E := diagonal ((↑) ∘ (√·) ∘ hA.1.eigenvalues : n → 𝕜)
  suffices C * (E * (star C * C) * E) * star C = A by
    rw [Matrix.PosSemidef.sqrt, pow_two]
    simpa only [← mul_assoc] using this
  have : E * E = diagonal ((↑) ∘ hA.1.eigenvalues) := by
    rw [diagonal_mul_diagonal]
    congr! with v
    simp [← pow_two, ← RCLike.ofReal_pow, Real.sq_sqrt (hA.eigenvalues_nonneg v)]
  simpa [C, this] using hA.1.spectral_theorem.symm

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PosDef/Variant8f6d1529db1144edc5c289621848b970a3ebe1f35198a9232ac0c88fba263a48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PosDef/Variant8f6d1529db1144edc5c289621848b970a3ebe1f35198a9232ac0c88fba263a48.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a073a067a25a3cba971bb00baffda86dafe8e1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
