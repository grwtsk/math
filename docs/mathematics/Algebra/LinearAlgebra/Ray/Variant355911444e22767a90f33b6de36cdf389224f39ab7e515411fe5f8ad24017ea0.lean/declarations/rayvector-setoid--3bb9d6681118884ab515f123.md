# RayVector.Setoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6f3b599657f8bcef6116413cbac71961b4ed4c66ac35a376a343a1aabb64ff28",
  "kind": "instance",
  "lexical_name": "RayVector.Setoid",
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
  "slug": "rayvector-setoid--3bb9d6681118884ab515f123",
  "source": {
    "blob": "257e065352ec69d77ab4f8d94ea59abe8a4e2960",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 221,
    "path": "GRWTSK/Algebra/LinearAlgebra/Ray/Variant355911444e22767a90f33b6de36cdf389224f39ab7e515411fe5f8ad24017ea0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3bb9d6681118884ab515f12326b7ae6594bf6a993c5e45d79f5e5681a0653c2a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Ray/Variant355911444e22767a90f33b6de36cdf389224f39ab7e515411fe5f8ad24017ea0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6f3b599657f8bcef6116413cbac71961b4ed4c66ac35a376a343a1aabb64ff28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance RayVector.Setoid : Setoid (RayVector R M) where
  r x y := SameRay R (x : M) y
  iseqv :=
    ⟨fun _ => SameRay.refl _, fun h => h.symm, by
      intro x y z hxy hyz
      exact hxy.trans hyz fun hy => (y.2 hy).elim⟩

/-- A ray (equivalence class of nonzero vectors with common positive multiples) in a module. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Ray/Variant355911444e22767a90f33b6de36cdf389224f39ab7e515411fe5f8ad24017ea0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Ray/Variant355911444e22767a90f33b6de36cdf389224f39ab7e515411fe5f8ad24017ea0.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `257e065352ec69d77ab4f8d94ea59abe8a4e2960` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
