# map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "257e065352ec69d77ab4f8d94ea59abe8a4e2960",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 174,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/355911444e22767a90f33b6de36cdf389224f39ab7e515411fe5f8ad24017ea0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bfab5f78-38a1-b826-aef2-c339cb8b9c88",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c89a1495-5671-d1ca-333b-61f9acbc9d87",
  "kind": "theorem",
  "lexical_name": "map",
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
  "slug": "map--b733f4af25497c68faaf2dc1",
  "source": {
    "blob": "257e065352ec69d77ab4f8d94ea59abe8a4e2960",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 174,
    "path": "GRWTSK/Algebra/LinearAlgebra/Ray/Variant355911444e22767a90f33b6de36cdf389224f39ab7e515411fe5f8ad24017ea0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b733f4af25497c68faaf2dc1964ee98aa6f1a34930e10cca6fd7e4e66506eb4b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Ray/Variant355911444e22767a90f33b6de36cdf389224f39ab7e515411fe5f8ad24017ea0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c89a1495-5671-d1ca-333b-61f9acbc9d87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map (f : M →ₗ[R] N) (h : SameRay R x y) : SameRay R (f x) (f y) :=
  (h.imp fun hx => by rw [hx, map_zero]) <|
    Or.imp (fun hy => by rw [hy, map_zero]) fun ⟨r₁, r₂, hr₁, hr₂, h⟩ =>
      ⟨r₁, r₂, hr₁, hr₂, by rw [← f.map_smul, ← f.map_smul, h]⟩

/-- The images of two vectors under an injective linear map are on the same ray if and only if the
original vectors are on the same ray. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Ray/Variant355911444e22767a90f33b6de36cdf389224f39ab7e515411fe5f8ad24017ea0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Ray/Variant355911444e22767a90f33b6de36cdf389224f39ab7e515411fe5f8ad24017ea0.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `257e065352ec69d77ab4f8d94ea59abe8a4e2960` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
