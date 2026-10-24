# ker_le_range_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:70bb9e7c-5958-f6d2-cb83-53ee7a490441",
  "kind": "theorem",
  "lexical_name": "ker_le_range_iff",
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
  "slug": "ker-le-range-iff--80d802e1540c800a37e79c5d",
  "source": {
    "blob": "05a716a2e72e22e4687a5be72b596f8a0718474c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 591,
    "line": 586,
    "path": "GRWTSK/Algebra/LinearAlgebra/Quotient/Variant10f4e6b27b82dc10cc7672a1f38ca3010fa85dab3bbe81ff191bd78c1168c804.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80d802e1540c800a37e79c5df5b457cf0f54726ac328c2ac1dcada7c66d98778",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Quotient/Variant10f4e6b27b82dc10cc7672a1f38ca3010fa85dab3bbe81ff191bd78c1168c804.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70bb9e7c-5958-f6d2-cb83-53ee7a490441`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 586–591.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ker_le_range_iff {f : M →ₛₗ[τ₁₂] M₂} {g : M₂ →ₛₗ[τ₂₃] M₃} :
    ker g ≤ range f ↔ f.range.mkQ.comp g.ker.subtype = 0 := by
  rw [← range_le_ker_iff, Submodule.ker_mkQ, Submodule.range_subtype]
#align linear_map.ker_le_range_iff LinearMap.ker_le_range_iff

/-- An epimorphism is surjective. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Quotient/Variant10f4e6b27b82dc10cc7672a1f38ca3010fa85dab3bbe81ff191bd78c1168c804.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Quotient/Variant10f4e6b27b82dc10cc7672a1f38ca3010fa85dab3bbe81ff191bd78c1168c804.lean#L586).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05a716a2e72e22e4687a5be72b596f8a0718474c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
