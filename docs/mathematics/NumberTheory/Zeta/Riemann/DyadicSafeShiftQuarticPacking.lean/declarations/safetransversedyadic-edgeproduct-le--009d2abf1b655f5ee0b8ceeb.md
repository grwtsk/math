# safeTransverseDyadic_edgeProduct_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:502a1186-ac75-b4c1-be47-ab92d477de1a",
  "kind": "theorem",
  "lexical_name": "safeTransverseDyadic_edgeProduct_le",
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
  "slug": "safetransversedyadic-edgeproduct-le--009d2abf1b655f5ee0b8ceeb",
  "source": {
    "blob": "41227433d053477cc82cf2a39b7046424e78eeec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 388,
    "line": 346,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticPacking.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:009d2abf1b655f5ee0b8ceeb23129c23e0e343514014e602312117f61f048437",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticPacking.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:502a1186-ac75-b4c1-be47-ab92d477de1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 346–388.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem safeTransverseDyadic_edgeProduct_le
    (z : ZeroPoint) (j : ℕ) :
    (safeTransverseDyadicPacking z j).edgeProductEnclosure ≤
      16 * safeDyadicEnvelopePairProduct z j := by
  have h01 :=
    PackingPoint.sub_normSq_le_two
      (safeTransverseDyadicPoint z (j + 1))
      (safeTransverseDyadicPoint z j)
  have h12 :=
    PackingPoint.sub_normSq_le_two
      (safeTransverseDyadicPoint z (j + 2))
      (safeTransverseDyadicPoint z (j + 1))
  have h0 := safeTransverseDyadicPoint_normSq_le z j
  have h1 := safeTransverseDyadicPoint_normSq_le z (j + 1)
  have h2 := safeTransverseDyadicPoint_normSq_le z (j + 2)
  have he01 :
      (safeTransverseDyadicPacking z j).edge01.normSq ≤
        4 * ((safeDyadicQuarticBlockEnvelope z j)^2 +
          (safeDyadicQuarticBlockEnvelope z (j+1))^2) := by
    simpa [safeTransverseDyadicPacking, dyadicPackingAt,
      ThreePointPacking.edge01] using h01.trans (by nlinarith)
  have he12 :
      (safeTransverseDyadicPacking z j).edge12.normSq ≤
        4 * ((safeDyadicQuarticBlockEnvelope z (j+1))^2 +
          (safeDyadicQuarticBlockEnvelope z (j+2))^2) := by
    simpa [safeTransverseDyadicPacking, dyadicPackingAt,
      ThreePointPacking.edge12] using h12.trans (by nlinarith)
  unfold ThreePointPacking.edgeProductEnclosure safeDyadicEnvelopePairProduct
  calc
    _ ≤
        (4 * ((safeDyadicQuarticBlockEnvelope z j)^2 +
          (safeDyadicQuarticBlockEnvelope z (j+1))^2)) *
        (4 * ((safeDyadicQuarticBlockEnvelope z (j+1))^2 +
          (safeDyadicQuarticBlockEnvelope z (j+2))^2)) := by
      exact mul_le_mul he01 he12 (PackingPoint.normSq_nonneg _) (by positivity)
    _ = 16 *
        (((safeDyadicQuarticBlockEnvelope z j)^2 +
          (safeDyadicQuarticBlockEnvelope z (j+1))^2) *
        ((safeDyadicQuarticBlockEnvelope z (j+1))^2 +
          (safeDyadicQuarticBlockEnvelope z (j+2))^2)) := by ring

/-- Complete dyadic quartic occupied volume is explicitly bounded by three
adjacent Green-energy envelopes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticPacking.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticPacking.lean#L346).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41227433d053477cc82cf2a39b7046424e78eeec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
