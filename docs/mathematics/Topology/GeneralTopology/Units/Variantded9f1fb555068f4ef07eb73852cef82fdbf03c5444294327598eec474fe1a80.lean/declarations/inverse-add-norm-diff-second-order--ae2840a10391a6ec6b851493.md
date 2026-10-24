# inverse_add_norm_diff_second_order

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9c5f4d53-871b-9a13-508c-e6c6e7ea32eb",
  "kind": "theorem",
  "lexical_name": "inverse_add_norm_diff_second_order",
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
  "slug": "inverse-add-norm-diff-second-order--ae2840a10391a6ec6b851493",
  "source": {
    "blob": "0fde9cccf9e0880c148a3ac4bb963cfab7eaa106",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 183,
    "path": "GRWTSK/Topology/GeneralTopology/Units/Variantded9f1fb555068f4ef07eb73852cef82fdbf03c5444294327598eec474fe1a80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae2840a10391a6ec6b8514931ad28f06eafe5f5915f0f620cf5710e446b314a9",
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

Occurrence: `result:9c5f4d53-871b-9a13-508c-e6c6e7ea32eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inverse_add_norm_diff_second_order (x : Rˣ) :
    (fun t : R => inverse (↑x + t) - ↑x⁻¹ + ↑x⁻¹ * t * ↑x⁻¹) =O[𝓝 0] fun t => ‖t‖ ^ 2 := by
  convert inverse_add_norm_diff_nth_order x 2 using 2
  simp only [sum_range_succ, sum_range_zero, zero_add, pow_zero, pow_one, add_mul, one_mul,
    ← sub_sub, neg_mul, sub_neg_eq_add]

/-- The function `Ring.inverse` is continuous at each unit of `R`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Units/Variantded9f1fb555068f4ef07eb73852cef82fdbf03c5444294327598eec474fe1a80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Units/Variantded9f1fb555068f4ef07eb73852cef82fdbf03c5444294327598eec474fe1a80.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fde9cccf9e0880c148a3ac4bb963cfab7eaa106` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
