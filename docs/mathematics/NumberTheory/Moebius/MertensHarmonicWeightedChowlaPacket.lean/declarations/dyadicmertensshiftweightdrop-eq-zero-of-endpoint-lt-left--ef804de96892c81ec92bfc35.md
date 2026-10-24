# dyadicMertensShiftWeightDrop_eq_zero_of_endpoint_lt_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7e307d1a-deed-ddd8-b856-276fbad50ccf",
  "kind": "theorem",
  "lexical_name": "dyadicMertensShiftWeightDrop_eq_zero_of_endpoint_lt_left",
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
  "slug": "dyadicmertensshiftweightdrop-eq-zero-of-endpoint-lt-left--ef804de96892c81ec92bfc35",
  "source": {
    "blob": "beda3189ebf7791a2856274b8d0fb28a2c0bb92f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 21,
    "path": "GRWTSK/NumberTheory/Moebius/MertensHarmonicWeightedChowlaPacket.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef804de96892c81ec92bfc35462b80bfcfde87931db40c7aa53326b76a1068d4",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/MertensHarmonicWeightedChowlaPacket.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e307d1a-deed-ddd8-b856-276fbad50ccf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dyadicMertensShiftWeightDrop_eq_zero_of_endpoint_lt_left
    {j h t : ℕ}
    (hb : t + 1 + h < 2 ^ j) :
    dyadicMertensShiftWeightDrop j h t = 0 := by
  unfold dyadicMertensShiftWeightDrop
  rw [dyadicMertensShiftWeight_eq_max,
    dyadicMertensShiftWeight_eq_max]
  have hb1 : t + 1 + h ≤ 2 ^ j := by omega
  have hb2 : (t + 1) + 1 + h ≤ 2 ^ j := by omega
  rw [max_eq_left hb1, max_eq_left hb2]
  ring

/-- Once the endpoint has entered the right dyadic half, the Abel drop is the
exact reciprocal difference. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/MertensHarmonicWeightedChowlaPacket.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/MertensHarmonicWeightedChowlaPacket.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `beda3189ebf7791a2856274b8d0fb28a2c0bb92f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
