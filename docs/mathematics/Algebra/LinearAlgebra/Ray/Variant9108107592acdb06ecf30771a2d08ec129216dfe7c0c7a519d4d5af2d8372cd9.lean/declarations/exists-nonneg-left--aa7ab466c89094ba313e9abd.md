# exists_nonneg_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f66cc34d-7791-8740-8695-f82c2ddf3f14",
  "kind": "theorem",
  "lexical_name": "exists_nonneg_left",
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
  "slug": "exists-nonneg-left--aa7ab466c89094ba313e9abd",
  "source": {
    "blob": "36cb6e3569e3ca26e10e16aca78ce017fdb7412c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 619,
    "line": 613,
    "path": "GRWTSK/Algebra/LinearAlgebra/Ray/Variant9108107592acdb06ecf30771a2d08ec129216dfe7c0c7a519d4d5af2d8372cd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa7ab466c89094ba313e9abde916a8eef3938dbf63c77e9518e157d72802b98e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Ray/Variant9108107592acdb06ecf30771a2d08ec129216dfe7c0c7a519d4d5af2d8372cd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f66cc34d-7791-8740-8695-f82c2ddf3f14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 613–619.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_nonneg_left (h : SameRay R x y) (hx : x ≠ 0) : ∃ r : R, 0 ≤ r ∧ r • x = y := by
  obtain rfl | hy := eq_or_ne y 0
  · exact ⟨0, le_rfl, zero_smul _ _⟩
  · exact (h.exists_pos_left hx hy).imp fun _ => And.imp_left le_of_lt

/-- If a vector `v₁` is on the same ray as a nonzero vector `v₂`, then it is equal to `c • v₂` for
some nonnegative `c`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Ray/Variant9108107592acdb06ecf30771a2d08ec129216dfe7c0c7a519d4d5af2d8372cd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Ray/Variant9108107592acdb06ecf30771a2d08ec129216dfe7c0c7a519d4d5af2d8372cd9.lean#L613).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36cb6e3569e3ca26e10e16aca78ce017fdb7412c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
