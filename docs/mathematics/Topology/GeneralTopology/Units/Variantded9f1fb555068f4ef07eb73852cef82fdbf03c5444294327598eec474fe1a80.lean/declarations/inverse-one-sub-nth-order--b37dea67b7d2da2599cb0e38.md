# inverse_one_sub_nth_order

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:81ab57bf-e54b-6ed0-724a-b78e3f131cc3",
  "kind": "theorem",
  "lexical_name": "inverse_one_sub_nth_order",
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
  "slug": "inverse-one-sub-nth-order--b37dea67b7d2da2599cb0e38",
  "source": {
    "blob": "0fde9cccf9e0880c148a3ac4bb963cfab7eaa106",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 123,
    "path": "GRWTSK/Topology/GeneralTopology/Units/Variantded9f1fb555068f4ef07eb73852cef82fdbf03c5444294327598eec474fe1a80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b37dea67b7d2da2599cb0e3835e3439ea55ae439fb6e135525da7436ee55cc6c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Units/Variantded9f1fb555068f4ef07eb73852cef82fdbf03c5444294327598eec474fe1a80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81ab57bf-e54b-6ed0-724a-b78e3f131cc3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inverse_one_sub_nth_order (n : ℕ) :
    ∀ᶠ t in 𝓝 0, inverse ((1 : R) - t) = (∑ i ∈ range n, t ^ i) + t ^ n * inverse (1 - t) :=
  Metric.eventually_nhds_iff.2 ⟨1, one_pos, fun t ht ↦ inverse_one_sub_nth_order' n <| by
    rwa [← dist_zero_right]⟩


/-- The formula
`Ring.inverse (x + t) =
  (∑ i ∈ Finset.range n, (- x⁻¹ * t) ^ i) * x⁻¹ + (- x⁻¹ * t) ^ n * Ring.inverse (x + t)`
holds for `t` sufficiently small. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Units/Variantded9f1fb555068f4ef07eb73852cef82fdbf03c5444294327598eec474fe1a80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Units/Variantded9f1fb555068f4ef07eb73852cef82fdbf03c5444294327598eec474fe1a80.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fde9cccf9e0880c148a3ac4bb963cfab7eaa106` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
