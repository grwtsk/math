# tendsto_pow_div_factorial_at_top_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e9feb4d5-610c-cf67-35c2-4ae90a58304a",
  "kind": "lemma",
  "lexical_name": "tendsto_pow_div_factorial_at_top_aux",
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
  "slug": "tendsto-pow-div-factorial-at-top-aux--87f023c0ee137335c819a547",
  "source": {
    "blob": "9d7d8baccdf48fb42ed8437f2c63a4c8776bbb5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 276,
    "path": "GRWTSK/Topology/GeneralTopology/Irrational/Variantd10708b5c3d6ade620fde1fa1c2feef5aa6c2fb265749ce40d7077af58c7c1f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87f023c0ee137335c819a5472ae18a33d113a7ca6877f28f60cfe8895017cc9b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Irrational/Variantd10708b5c3d6ade620fde1fa1c2feef5aa6c2fb265749ce40d7077af58c7c1f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9feb4d5-610c-cf67-35c2-4ae90a58304a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma tendsto_pow_div_factorial_at_top_aux (a : ℝ) :
    Tendsto (fun n => (a : ℝ) ^ (2 * n + 1) / n !) atTop (nhds 0) := by
  rw [← mul_zero a]
  refine ((FloorSemiring.tendsto_pow_div_factorial_atTop (a ^ 2)).const_mul a).congr (fun x => ?_)
  rw [← pow_mul, mul_div_assoc', _root_.pow_succ']

/-- If `x` is rational, it can be written as `a / b` with `a : ℤ` and `b : ℕ` satisfying `b > 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Irrational/Variantd10708b5c3d6ade620fde1fa1c2feef5aa6c2fb265749ce40d7077af58c7c1f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Irrational/Variantd10708b5c3d6ade620fde1fa1c2feef5aa6c2fb265749ce40d7077af58c7c1f3.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d7d8baccdf48fb42ed8437f2c63a4c8776bbb5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
