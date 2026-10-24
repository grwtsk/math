# cylinder_eq_res

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ca3bd8d91265aeffa42571b7fef04cad045745bb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 246,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/17/17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6539baa1-2b7b-3483-4c41-b2066c940c0f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3f3b2a37-d2b5-5e98-6afa-53b7f748f3fc",
  "kind": "theorem",
  "lexical_name": "cylinder_eq_res",
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
  "slug": "cylinder-eq-res--50f410a352623c26f21fe058",
  "source": {
    "blob": "ca3bd8d91265aeffa42571b7fef04cad045745bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 246,
    "path": "GRWTSK/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50f410a352623c26f21fe058d56b0202ce98505cb8196726ea4bff2487f95b8f",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f3b2a37-d2b5-5e98-6afa-53b7f748f3fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cylinder_eq_res (x : ℕ → α) (n : ℕ) :
    cylinder x n = { y | res y n = res x n } := by
  ext y
  dsimp [cylinder]
  rw [res_eq_res]
#align pi_nat.cylinder_eq_res PiNat.cylinder_eq_res

end Res

/-!
### A distance function on `Π n, E n`

We define a distance function on `Π n, E n`, given by `dist x y = (1/2)^n` where `n` is the first
index at which `x` and `y` differ. When each `E n` has the discrete topology, this distance will
define the right topology on the product space. We do not record a global `Dist` instance nor
a `MetricSpace` instance, as other distances may be used on these spaces, but we register them as
local instances in this section.
-/

/-- The distance function on a product space `Π n, E n`, given by `dist x y = (1/2)^n` where `n` is
the first index at which `x` and `y` differ. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca3bd8d91265aeffa42571b7fef04cad045745bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
