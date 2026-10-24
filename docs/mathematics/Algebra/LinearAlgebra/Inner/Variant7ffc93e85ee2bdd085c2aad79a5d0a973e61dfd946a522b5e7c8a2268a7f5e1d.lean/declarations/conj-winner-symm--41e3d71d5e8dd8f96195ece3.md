# conj_wInner_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d89c2cc5-654e-d979-81f5-8f50b73fd4a5",
  "kind": "lemma",
  "lexical_name": "conj_wInner_symm",
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
  "slug": "conj-winner-symm--41e3d71d5e8dd8f96195ece3",
  "source": {
    "blob": "4fe2247fd071bdca9c772b370f9fdeaaa8670532",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 53,
    "path": "GRWTSK/Algebra/LinearAlgebra/Inner/Variant7ffc93e85ee2bdd085c2aad79a5d0a973e61dfd946a522b5e7c8a2268a7f5e1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41e3d71d5e8dd8f96195ece37e2c30c8de3b0d6a0e113b52f483bc06e4f7fcf8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Inner/Variant7ffc93e85ee2bdd085c2aad79a5d0a973e61dfd946a522b5e7c8a2268a7f5e1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d89c2cc5-654e-d979-81f5-8f50b73fd4a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma conj_wInner_symm (w : ι → ℝ) (f g : ∀ i, E i) :
    conj ⟪f, g⟫_[𝕜, w] = ⟪g, f⟫_[𝕜, w] := by
  simp [wInner, map_sum, inner_conj_symm, rclike_simps]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Inner/Variant7ffc93e85ee2bdd085c2aad79a5d0a973e61dfd946a522b5e7c8a2268a7f5e1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Inner/Variant7ffc93e85ee2bdd085c2aad79a5d0a973e61dfd946a522b5e7c8a2268a7f5e1d.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fe2247fd071bdca9c772b370f9fdeaaa8670532` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
