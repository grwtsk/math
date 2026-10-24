# Filter.Tendsto.neg_mul_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b65d4979f389411fe345b3bfb83d9042d8cffc67",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 95,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2f/2fce1535aeb959e4df46df62c4b2f48ef0454d5e559e82ab18ee86637100bdae.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:37db41e5-4adb-310b-fbfa-5e09962f41b1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fa7d25cc-0365-d1e5-d3ed-a5e280605b8c",
  "kind": "theorem",
  "lexical_name": "Filter.Tendsto.neg_mul_atTop",
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
  "slug": "filter-tendsto-neg-mul-attop--e189b4ed4ee45ae1db66a5b6",
  "source": {
    "blob": "b65d4979f389411fe345b3bfb83d9042d8cffc67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 95,
    "path": "GRWTSK/Topology/GeneralTopology/Field/Variant2fce1535aeb959e4df46df62c4b2f48ef0454d5e559e82ab18ee86637100bdae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e189b4ed4ee45ae1db66a5b66379467fbb63ce28e9a48fc8761bd8843a5fb29b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Field/Variant2fce1535aeb959e4df46df62c4b2f48ef0454d5e559e82ab18ee86637100bdae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa7d25cc-0365-d1e5-d3ed-a5e280605b8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Filter.Tendsto.neg_mul_atTop {C : 𝕜} (hC : C < 0) (hf : Tendsto f l (𝓝 C))
    (hg : Tendsto g l atTop) : Tendsto (fun x => f x * g x) l atBot := by
  simpa only [mul_comm] using hg.atTop_mul_neg hC hf

/-- In a linearly ordered field with the order topology, if `f` tends to `Filter.atBot` and `g`
tends to a positive constant `C` then `f * g` tends to `Filter.atBot`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Field/Variant2fce1535aeb959e4df46df62c4b2f48ef0454d5e559e82ab18ee86637100bdae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Field/Variant2fce1535aeb959e4df46df62c4b2f48ef0454d5e559e82ab18ee86637100bdae.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b65d4979f389411fe345b3bfb83d9042d8cffc67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
