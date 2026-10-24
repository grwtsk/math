# finrank_add_inf_finrank_orthogonal'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d755b874-12d3-48bb-346e-3e8901e56e2a",
  "kind": "theorem",
  "lexical_name": "finrank_add_inf_finrank_orthogonal'",
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
  "slug": "finrank-add-inf-finrank-orthogonal--74cc7c08e0727014044e8ef2",
  "source": {
    "blob": "a3d15476e98dcad6d9a5e976a534bcd0e73a6798",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 112,
    "path": "GRWTSK/Algebra/LinearAlgebra/FiniteDimensional/Variant29bb42c4485d7b7adb2d55a5d3809adaee1cc3738c7b5510e674ba2ccecd799d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74cc7c08e0727014044e8ef259c60192315dc39a36370e3bedb20c0210030bcd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FiniteDimensional/Variant29bb42c4485d7b7adb2d55a5d3809adaee1cc3738c7b5510e674ba2ccecd799d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d755b874-12d3-48bb-346e-3e8901e56e2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finrank_add_inf_finrank_orthogonal' {K₁ K₂ : Submodule 𝕜 E}
    [FiniteDimensional 𝕜 K₂] (h : K₁ ≤ K₂) {n : ℕ} (h_dim : finrank 𝕜 K₁ + n = finrank 𝕜 K₂) :
    finrank 𝕜 (K₁ᗮ ⊓ K₂ : Submodule 𝕜 E) = n := by
  rw [← add_right_inj (finrank 𝕜 K₁)]
  simp [Submodule.finrank_add_inf_finrank_orthogonal h, h_dim]

/-- Given a finite-dimensional space `E` and subspace `K`, the dimensions of `K` and `Kᗮ` add to
that of `E`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FiniteDimensional/Variant29bb42c4485d7b7adb2d55a5d3809adaee1cc3738c7b5510e674ba2ccecd799d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FiniteDimensional/Variant29bb42c4485d7b7adb2d55a5d3809adaee1cc3738c7b5510e674ba2ccecd799d.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3d15476e98dcad6d9a5e976a534bcd0e73a6798` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
