# ordinary_trace_distinguishes_identity_from_trace_mod_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b015fcbf-3207-9164-9229-5b0f4d74f83d",
  "kind": "theorem",
  "lexical_name": "ordinary_trace_distinguishes_identity_from_trace_mod_two",
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
  "slug": "ordinary-trace-distinguishes-identity-from-trace-mod-two--62747959191a52124163c579",
  "source": {
    "blob": "c3fdab1d2bff70095b6064bd532202a2ce56c43d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 420,
    "line": 416,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/FinitePhaseBitmatrixAlgebra/Variant2c4d779a905dd321fc646acd2a3c56ac78fea64ce223c136381a12647206127b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62747959191a52124163c579d49b7e056b688370f2f2aff9155c3d178471b19a",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/FinitePhaseBitmatrixAlgebra/Variant2c4d779a905dd321fc646acd2a3c56ac78fea64ce223c136381a12647206127b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b015fcbf-3207-9164-9229-5b0f4d74f83d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 416–420.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ordinary_trace_distinguishes_identity_from_trace_mod_two :
    ordinaryTrace identityMatrix = 2 ∧
      traceMod2 identityMatrix = 0 := by
  exact ⟨rfl, rfl⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/FinitePhaseBitmatrixAlgebra/Variant2c4d779a905dd321fc646acd2a3c56ac78fea64ce223c136381a12647206127b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/FinitePhaseBitmatrixAlgebra/Variant2c4d779a905dd321fc646acd2a3c56ac78fea64ce223c136381a12647206127b.lean#L416).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3fdab1d2bff70095b6064bd532202a2ce56c43d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
