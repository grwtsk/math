# MulEquiv.decompositionMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8845040f-812d-4fb7-db98-54c746e1e68c",
  "kind": "theorem",
  "lexical_name": "MulEquiv.decompositionMonoid",
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
  "slug": "mulequiv-decompositionmonoid--5ae2f42125bbf3fb70dfd009",
  "source": {
    "blob": "1a93b54380b9fcca73a2efda5ea4446e3e5a9c13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 43,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantbefe0989dfe7b20a1c2c39ff4aa679984ddcf622732dda0e19d33358b73ede49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ae2f42125bbf3fb70dfd00913cfe148c9c2e494316547b418eab10976828857",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantbefe0989dfe7b20a1c2c39ff4aa679984ddcf622732dda0e19d33358b73ede49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8845040f-812d-4fb7-db98-54c746e1e68c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MulEquiv.decompositionMonoid (f : F) [DecompositionMonoid β] : DecompositionMonoid α where
  primal a b c h := by
    rw [← map_dvd_iff f, map_mul] at h
    obtain ⟨a₁, a₂, h⟩ := DecompositionMonoid.primal _ h
    refine ⟨symm f a₁, symm f a₂, ?_⟩
    simp_rw [← map_dvd_iff f, ← map_mul, eq_symm_apply]
    iterate 2 erw [(f : α ≃* β).apply_symm_apply]
    exact h

/--
If `G` is a `LeftCancelSemiGroup`, left multiplication by `g` yields an equivalence between `G`
and the set of elements of `G` divisible by `g`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantbefe0989dfe7b20a1c2c39ff4aa679984ddcf622732dda0e19d33358b73ede49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantbefe0989dfe7b20a1c2c39ff4aa679984ddcf622732dda0e19d33358b73ede49.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a93b54380b9fcca73a2efda5ea4446e3e5a9c13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
