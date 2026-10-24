# sum_mul_le_sqrt_mul_sqrt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f5e4469c-541b-5850-69f7-1c802fc2bb22",
  "kind": "lemma",
  "lexical_name": "sum_mul_le_sqrt_mul_sqrt",
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
  "slug": "sum-mul-le-sqrt-mul-sqrt--2fe662df812532d121aa73d4",
  "source": {
    "blob": "3f2cbb1f63bc77b372b725a6eb929a1ce6421db0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 429,
    "line": 425,
    "path": "GRWTSK/Topology/GeneralTopology/Sqrt/Variant403a00f9c340b29dace4526729e3530bc2cb6a1bbf764c9ee5280cb133e6860d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2fe662df812532d121aa73d441f6db3bb5d100d7650916b386ba41efbb474cc6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sqrt/Variant403a00f9c340b29dace4526729e3530bc2cb6a1bbf764c9ee5280cb133e6860d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5e4469c-541b-5850-69f7-1c802fc2bb22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 425–429.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_mul_le_sqrt_mul_sqrt (s : Finset ι) (f g : ι → ℝ≥0) :
    ∑ i ∈ s, f i * g i ≤ sqrt (∑ i ∈ s, f i ^ 2) * sqrt (∑ i ∈ s, g i ^ 2) :=
  (le_sqrt_iff_sq_le.2 <| sum_mul_sq_le_sq_mul_sq _ _ _).trans_eq <| sqrt_mul _ _

/-- **Cauchy-Schwarz inequality** for finsets using square roots in `ℝ≥0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sqrt/Variant403a00f9c340b29dace4526729e3530bc2cb6a1bbf764c9ee5280cb133e6860d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sqrt/Variant403a00f9c340b29dace4526729e3530bc2cb6a1bbf764c9ee5280cb133e6860d.lean#L425).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f2cbb1f63bc77b372b725a6eb929a1ce6421db0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
