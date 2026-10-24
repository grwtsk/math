# constantCocycleEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ddc1135c8d210d2865aface4452dd30fb5f56160fbb5fe68353223a542786e50",
  "kind": "def",
  "lexical_name": "constantCocycleEquiv",
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
  "slug": "constantcocycleequiv--aec3de0080baf1b1723e935f",
  "source": {
    "blob": "be628449f9aa7149d8b8d4e8f34d5c491881580a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 164,
    "path": "GRWTSK/Geometry/Hodge/DegreeZeroCohomology.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aec3de0080baf1b1723e935fcec87d6e36994a05a835082799419120dce1ff54",
  "verification": {
    "reference": "docs/verification/Geometry/Hodge/DegreeZeroCohomology.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ddc1135c8d210d2865aface4452dd30fb5f56160fbb5fe68353223a542786e50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def constantCocycleEquiv : ℚ ≃ₗ[ℚ] Cocycle0 edgeHodge where
  toFun := constantCocycle
  invFun x := (x : ℚ × ℚ).1
  left_inv c := rfl
  right_inv x := by
    apply Subtype.ext
    rcases x with ⟨⟨a, b⟩, h⟩
    have hab : a = b := by
      change edgeDelta (a, b) = 0 at h
      exact sub_eq_zero.mp h
    simp [constantCocycle, hab]
  map_add' s t := by
    apply Subtype.ext
    ext <;> simp [constantCocycle]
  map_smul' r t := by
    apply Subtype.ext
    ext <;> simp [constantCocycle]

/-- On the positive finite-edge Hodge complex, harmonicity is exactly the cocycle equation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Geometry/Hodge/DegreeZeroCohomology.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/Hodge/DegreeZeroCohomology.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be628449f9aa7149d8b8d4e8f34d5c491881580a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
