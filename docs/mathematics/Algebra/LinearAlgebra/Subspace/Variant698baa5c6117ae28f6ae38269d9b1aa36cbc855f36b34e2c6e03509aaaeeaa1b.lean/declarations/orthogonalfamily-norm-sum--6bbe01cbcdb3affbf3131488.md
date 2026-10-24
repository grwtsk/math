# OrthogonalFamily.norm_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8323128c-b643-6a35-c270-5de39f9720f8",
  "kind": "theorem",
  "lexical_name": "OrthogonalFamily.norm_sum",
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
  "slug": "orthogonalfamily-norm-sum--6bbe01cbcdb3affbf3131488",
  "source": {
    "blob": "ec17f29c8bf18588355ece0ea1cd5e21874d6c3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 164,
    "path": "GRWTSK/Algebra/LinearAlgebra/Subspace/Variant698baa5c6117ae28f6ae38269d9b1aa36cbc855f36b34e2c6e03509aaaeeaa1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6bbe01cbcdb3affbf313148855430a757b52f48adf1b91d3839f3b52ad4e27c5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Subspace/Variant698baa5c6117ae28f6ae38269d9b1aa36cbc855f36b34e2c6e03509aaaeeaa1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8323128c-b643-6a35-c270-5de39f9720f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem OrthogonalFamily.norm_sum (l : ∀ i, G i) (s : Finset ι) :
    ‖∑ i ∈ s, V i (l i)‖ ^ 2 = ∑ i ∈ s, ‖l i‖ ^ 2 := by
  have : ((‖∑ i ∈ s, V i (l i)‖ : ℝ) : 𝕜) ^ 2 = ∑ i ∈ s, ((‖l i‖ : ℝ) : 𝕜) ^ 2 := by
    simp only [← inner_self_eq_norm_sq_to_K, hV.inner_sum]
  exact mod_cast this

/-- The composition of an orthogonal family of subspaces with an injective function is also an
orthogonal family. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Subspace/Variant698baa5c6117ae28f6ae38269d9b1aa36cbc855f36b34e2c6e03509aaaeeaa1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Subspace/Variant698baa5c6117ae28f6ae38269d9b1aa36cbc855f36b34e2c6e03509aaaeeaa1b.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec17f29c8bf18588355ece0ea1cd5e21874d6c3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
