# sigma_uniform_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb12bea3-a39d-be23-9650-6bef58d68fa9",
  "kind": "theorem",
  "lexical_name": "sigma_uniform_bound",
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
  "slug": "sigma-uniform-bound--e45f407eabf3fe7fc2fa1d0d",
  "source": {
    "blob": "79f2b5b3934ee51fe12240b7c0f9f3e0075339cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 24,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/UniverseBounds/Variantc13301d3dd2236d6347fcc68690dc2db2b007be0133ede11f9314d0e01e8e742.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e45f407eabf3fe7fc2fa1d0d4b2860ca51c30413f7051e0ff430c2fcae6e6dd5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/UniverseBounds/Variantc13301d3dd2236d6347fcc68690dc2db2b007be0133ede11f9314d0e01e8e742.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb12bea3-a39d-be23-9650-6bef58d68fa9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sigma_uniform_bound {I : Type u} (X : I → Type u)
    (ρ : Cardinal.{u}) (hX : ∀ i, #(X i) ≤ ρ) : #(Σ i, X i) ≤ #I * ρ := by
  rw [Cardinal.mk_sigma, ← Cardinal.sum_const']
  exact Cardinal.sum_le_sum _ _ hX

/-- A common bound controls the complete dependent product. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/UniverseBounds/Variantc13301d3dd2236d6347fcc68690dc2db2b007be0133ede11f9314d0e01e8e742.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/UniverseBounds/Variantc13301d3dd2236d6347fcc68690dc2db2b007be0133ede11f9314d0e01e8e742.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79f2b5b3934ee51fe12240b7c0f9f3e0075339cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
