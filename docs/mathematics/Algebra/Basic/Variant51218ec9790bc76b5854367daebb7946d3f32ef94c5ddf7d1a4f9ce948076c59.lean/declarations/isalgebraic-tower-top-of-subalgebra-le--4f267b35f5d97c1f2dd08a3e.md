# IsAlgebraic.tower_top_of_subalgebra_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:68a1a8b6-71d8-2bc5-1303-c63d26bbc668",
  "kind": "theorem",
  "lexical_name": "IsAlgebraic.tower_top_of_subalgebra_le",
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
  "slug": "isalgebraic-tower-top-of-subalgebra-le--4f267b35f5d97c1f2dd08a3e",
  "source": {
    "blob": "73b7d5a96117be596f110dbb2bec3f5ebca97c98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 437,
    "line": 429,
    "path": "GRWTSK/Algebra/Basic/Variant51218ec9790bc76b5854367daebb7946d3f32ef94c5ddf7d1a4f9ce948076c59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f267b35f5d97c1f2dd08a3eb0a28573d3e46afcc13d49f0d0a748eb8eb189d1",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant51218ec9790bc76b5854367daebb7946d3f32ef94c5ddf7d1a4f9ce948076c59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68a1a8b6-71d8-2bc5-1303-c63d26bbc668`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 429–437.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsAlgebraic.tower_top_of_subalgebra_le
    {A B : Subalgebra R S} (hle : A ≤ B) {x : S}
    (h : IsAlgebraic A x) : IsAlgebraic B x := by
  let : Algebra A B := (Subalgebra.inclusion hle).toAlgebra
  have : IsScalarTower A B S := .of_algebraMap_eq fun _ ↦ rfl
  exact h.extendScalars (Subalgebra.inclusion_injective hle)

/-- If `x` is transcendental over `S`, then `x` is transcendental over `R` when `S` is an extension
  of `R`, and the map from `R` to `S` is injective. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant51218ec9790bc76b5854367daebb7946d3f32ef94c5ddf7d1a4f9ce948076c59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant51218ec9790bc76b5854367daebb7946d3f32ef94c5ddf7d1a4f9ce948076c59.lean#L429).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73b7d5a96117be596f110dbb2bec3f5ebca97c98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
