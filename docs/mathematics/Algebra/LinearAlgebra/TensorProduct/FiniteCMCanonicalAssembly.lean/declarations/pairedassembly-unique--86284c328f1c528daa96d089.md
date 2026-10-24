# pairedAssembly_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "edee2ce00089a3bb2b0959021be4d935256ed327",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 80,
      "path": "GRWTSK/LinearAlgebra/TensorProduct/FiniteCMCanonicalAssembly.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7ebfd41d-0244-5ddc-329c-748eaf6eeb1b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2d251290-575b-943c-0397-8d55769c680e",
  "kind": "theorem",
  "lexical_name": "pairedAssembly_unique",
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
  "slug": "pairedassembly-unique--86284c328f1c528daa96d089",
  "source": {
    "blob": "edee2ce00089a3bb2b0959021be4d935256ed327",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 80,
    "path": "GRWTSK/LinearAlgebra/TensorProduct/FiniteCMCanonicalAssembly.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86284c328f1c528daa96d089f55c15ff4c7d5a4fd5df7cc1ef3388d063c21f07",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TensorProduct/FiniteCMCanonicalAssembly.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d251290-575b-943c-0397-8d55769c680e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pairedAssembly_unique
    (F : Paired E →ₗ[ℚ] Output E)
    (hF : ∀ a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄ : E,
      F (pairedPure ℚ E a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄) =
        (a₁ * a₂ * a₃ * a₄) ⊗ₜ[ℚ]
          (((x₁ ⊗ₜ[ℚ] x₂) ⊗ₜ[ℚ] x₃) ⊗ₜ[ℚ] x₄)) :
    F = pairedAssembly E := by
  ext a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄
  simpa [pairedPure] using
    (hF a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄).trans
      (pairedAssembly_pure E a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄).symm

/-!
## Adapter for the archived finite-CM assembly source

The source in PR #502 used the same left-associated paired and separated
tensor carriers, but its iterated coefficient multiplication incorrectly
applied `lTensor` to a left-associated coefficient tensor. The corrected
rational-linear operation necessarily uses `rTensor`. The following
minimal algebraic adapter gives the normalized meaning of that original
formula without importing its geometric CM carrier or Hodge witnesses.
-/

/-- The archived CM coefficient multiplication, with its tensor direction
normalized to the actual left-associated source type. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TensorProduct/FiniteCMCanonicalAssembly.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/LinearAlgebra/TensorProduct/FiniteCMCanonicalAssembly.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edee2ce00089a3bb2b0959021be4d935256ed327` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
