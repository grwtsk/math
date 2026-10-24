# lift_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:331ae5a5-c7af-f5b9-37ae-d2115c771480",
  "kind": "theorem",
  "lexical_name": "lift_unique",
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
  "slug": "lift-unique--cd35a52d822aca4c3761fdba",
  "source": {
    "blob": "62d10082754200dbb9ac6632e65bb6b87b0b7a36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 260,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Free/Variantfca4a6a6994559aa4af56d6f32cd629601a391a4ab88c1918b2d292f6785a773.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd35a52d822aca4c3761fdbab934496181361b2776cff218e90d711b2fe4b49c",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Free/Variantfca4a6a6994559aa4af56d6f32cd629601a391a4ab88c1918b2d292f6785a773.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:331ae5a5-c7af-f5b9-37ae-d2115c771480`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 260–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift_unique (f : X → L) (g : FreeLieAlgebra R X →ₗ⁅R⁆ L) : g ∘ of R = f ↔ g = lift R f :=
  (lift R).symm_apply_eq
#align free_lie_algebra.lift_unique FreeLieAlgebra.lift_unique

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Free/Variantfca4a6a6994559aa4af56d6f32cd629601a391a4ab88c1918b2d292f6785a773.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Free/Variantfca4a6a6994559aa4af56d6f32cd629601a391a4ab88c1918b2d292f6785a773.lean#L260).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62d10082754200dbb9ac6632e65bb6b87b0b7a36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
