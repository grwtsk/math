# restrictScalars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fab9337c3e794e4d90ed4eb0e8b75fc55903d4e7f78ac7bf167bb98a9051347d",
  "kind": "def",
  "lexical_name": "restrictScalars",
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
  "slug": "restrictscalars--5faeb414043210f7df09dc6f",
  "source": {
    "blob": "228502941109329435282b9aad1f8aa47da946ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 472,
    "line": 466,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearMap/Variant082cf928f4f8e9fb45f05a8162c31bd5c9d1a369566e4134791acd9d71709e08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5faeb414043210f7df09dc6ffa14dac3bd340f8f78779cc794670778226b3ee4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearMap/Variant082cf928f4f8e9fb45f05a8162c31bd5c9d1a369566e4134791acd9d71709e08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fab9337c3e794e4d90ed4eb0e8b75fc55903d4e7f78ac7bf167bb98a9051347d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 466–472.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[coe] def restrictScalars (fₗ : M →ₗ[S] M₂) : M →ₗ[R] M₂ where
  toFun := fₗ
  map_add' := fₗ.map_add
  map_smul' := fₗ.map_smul_of_tower
#align linear_map.restrict_scalars LinearMap.restrictScalars

-- porting note: generalized from `Algebra` to `CompatibleSMul`
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearMap/Variant082cf928f4f8e9fb45f05a8162c31bd5c9d1a369566e4134791acd9d71709e08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearMap/Variant082cf928f4f8e9fb45f05a8162c31bd5c9d1a369566e4134791acd9d71709e08.lean#L466).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `228502941109329435282b9aad1f8aa47da946ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
