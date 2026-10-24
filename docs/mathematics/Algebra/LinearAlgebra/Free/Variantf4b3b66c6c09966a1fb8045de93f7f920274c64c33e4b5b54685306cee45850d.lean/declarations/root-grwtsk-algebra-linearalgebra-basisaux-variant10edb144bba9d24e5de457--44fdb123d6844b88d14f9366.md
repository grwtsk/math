# _root_.GRWTSK.Algebra.LinearAlgebra.BasisAux.Variant10edb144bba9d24e5de4573420664a6a26d2805fff44fa1df88981aa5dbe2143.Basis.baseChange_linearMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d326e89b-5e65-bfed-af48-69c9daec7d4f",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.BasisAux.Variant10edb144bba9d24e5de4573420664a6a26d2805fff44fa1df88981aa5dbe2143.Basis.baseChange_linearMap",
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
  "slug": "root-grwtsk-algebra-linearalgebra-basisaux-variant10edb144bba9d24e5de457--44fdb123d6844b88d14f9366",
  "source": {
    "blob": "247aa29a6abf08130084e306273eba524a4261b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 100,
    "path": "GRWTSK/Algebra/LinearAlgebra/Free/Variantf4b3b66c6c09966a1fb8045de93f7f920274c64c33e4b5b54685306cee45850d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44fdb123d6844b88d14f93664073900d2430bda619540ae94c25792bd4326092",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Free/Variantf4b3b66c6c09966a1fb8045de93f7f920274c64c33e4b5b54685306cee45850d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d326e89b-5e65-bfed-af48-69c9daec7d4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Algebra.LinearAlgebra.BasisAux.Variant10edb144bba9d24e5de4573420664a6a26d2805fff44fa1df88981aa5dbe2143.Basis.baseChange_linearMap (b : Basis ι R M) (b' : Basis ι' R N) (ij : ι × ι') :
    baseChange A (b'.linearMap b ij) = (basis A b').linearMap (basis A b) ij := by
  apply (basis A b').ext
  intro k
  conv_lhs => simp only [basis_apply, baseChange_tmul]
  simp_rw [Basis.linearMap_apply_apply, basis_apply]
  split <;> simp only [TensorProduct.tmul_zero]

variable [DecidableEq ι]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Free/Variantf4b3b66c6c09966a1fb8045de93f7f920274c64c33e4b5b54685306cee45850d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Free/Variantf4b3b66c6c09966a1fb8045de93f7f920274c64c33e4b5b54685306cee45850d.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `247aa29a6abf08130084e306273eba524a4261b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
