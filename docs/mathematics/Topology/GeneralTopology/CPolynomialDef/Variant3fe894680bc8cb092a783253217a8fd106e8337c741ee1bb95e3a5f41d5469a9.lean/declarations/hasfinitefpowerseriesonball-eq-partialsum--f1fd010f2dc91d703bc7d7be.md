# HasFiniteFPowerSeriesOnBall.eq_partialSum'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d01c2cbbbb1603fb244f1e2f3c0b6d2455b1946d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 229,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3fe894680bc8cb092a783253217a8fd106e8337c741ee1bb95e3a5f41d5469a9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:be94893a-b59a-e574-1d4e-6468c1b4ffc2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:434d49c2-2075-2bfd-18b5-0045070e9b88",
  "kind": "theorem",
  "lexical_name": "HasFiniteFPowerSeriesOnBall.eq_partialSum'",
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
  "slug": "hasfinitefpowerseriesonball-eq-partialsum--f1fd010f2dc91d703bc7d7be",
  "source": {
    "blob": "d01c2cbbbb1603fb244f1e2f3c0b6d2455b1946d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 229,
    "path": "GRWTSK/Topology/GeneralTopology/CPolynomialDef/Variant3fe894680bc8cb092a783253217a8fd106e8337c741ee1bb95e3a5f41d5469a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1fd010f2dc91d703bc7d7be966a7d037e5bdc5c91bdb098c766ce1eb68055ad",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CPolynomialDef/Variant3fe894680bc8cb092a783253217a8fd106e8337c741ee1bb95e3a5f41d5469a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:434d49c2-2075-2bfd-18b5-0045070e9b88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasFiniteFPowerSeriesOnBall.eq_partialSum'
    (hf : HasFiniteFPowerSeriesOnBall f p x n r) :
    ∀ y ∈ Metric.eball x r, ∀ m, n ≤ m →
    f y = p.partialSum m (y - x) := by
  intro y hy m hm
  rw [Metric.mem_eball, edist_eq_enorm_sub, ← mem_eball_zero_iff] at hy
  rw [← (HasFiniteFPowerSeriesOnBall.eq_partialSum hf _ hy m hm), add_sub_cancel]

/-! The particular cases where `f` has a finite power series bounded by `0` or `1`. -/

/-- If `f` has a formal power series on a ball bounded by `0`, then `f` is equal to `0` on
the ball. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CPolynomialDef/Variant3fe894680bc8cb092a783253217a8fd106e8337c741ee1bb95e3a5f41d5469a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CPolynomialDef/Variant3fe894680bc8cb092a783253217a8fd106e8337c741ee1bb95e3a5f41d5469a9.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d01c2cbbbb1603fb244f1e2f3c0b6d2455b1946d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
