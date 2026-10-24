# sumPolynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4f04b19e68b6c7baa0d981786a29b1de763c243c3f641c7b1f6a60e229d0cd9f",
  "kind": "def",
  "lexical_name": "sumPolynomial",
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
  "slug": "sumpolynomial--a54f0ef14c3e8207964821cb",
  "source": {
    "blob": "86fe652e3130992e4cd18280ed104cd494ff4478",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 75,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Eval/Variant173018cc86b306b5a795ea6f403c2ad75153fd786badd31b8fa170aeed13e0b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a54f0ef14c3e8207964821cbe7bf2c4aa5d99de3d2e77805ea34b57aba2e4de6",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Eval/Variant173018cc86b306b5a795ea6f403c2ad75153fd786badd31b8fa170aeed13e0b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4f04b19e68b6c7baa0d981786a29b1de763c243c3f641c7b1f6a60e229d0cd9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sumPolynomial (p : R[X]) : symmetricSubalgebra σ R :=
  ⟨∑ i, Polynomial.aeval (X i) p, fun e ↦ by
    simp_rw [map_sum, rename_eq_aeval, ← Polynomial.aeval_algHom_apply, aeval_X, (· ∘ ·)]
    rw [← Equiv.sum_comp e (fun i ↦ Polynomial.aeval (X i) p)]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Eval/Variant173018cc86b306b5a795ea6f403c2ad75153fd786badd31b8fa170aeed13e0b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Eval/Variant173018cc86b306b5a795ea6f403c2ad75153fd786badd31b8fa170aeed13e0b4.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86fe652e3130992e4cd18280ed104cd494ff4478` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
