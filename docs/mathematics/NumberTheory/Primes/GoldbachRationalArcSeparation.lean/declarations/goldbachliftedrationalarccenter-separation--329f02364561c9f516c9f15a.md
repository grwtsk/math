# goldbachLiftedRationalArcCenter_separation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2851d8fa-1263-3746-3db8-7e9d0a1fa0f1",
  "kind": "theorem",
  "lexical_name": "goldbachLiftedRationalArcCenter_separation",
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
  "slug": "goldbachliftedrationalarccenter-separation--329f02364561c9f516c9f15a",
  "source": {
    "blob": "d92f4cfddbfef7a5784ef4bb2784477f4a272269",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 195,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachRationalArcSeparation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:329f02364561c9f516c9f15a446d8f251d40927730e2adddf494b192460024fa",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachRationalArcSeparation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2851d8fa-1263-3746-3db8-7e9d0a1fa0f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachLiftedRationalArcCenter_separation
    {Q a q b r : ℕ} {k l : ℤ}
    (ha : (a, q) ∈ goldbachRationalArcIndices Q)
    (hb : (b, r) ∈ goldbachRationalArcIndices Q)
    (hdistinct : (a, q) ≠ (b, r) ∨ k ≠ l) :
    1 / ((q : ℝ) * (r : ℝ)) ≤
      |goldbachLiftedRationalArcCenter a q k -
        goldbachLiftedRationalArcCenter b r l| := by
  rcases (mem_goldbachRationalArcIndices).1 ha with
    ⟨haQ, hqQ, hq, haq, hcoprimeA⟩
  rcases (mem_goldbachRationalArcIndices).1 hb with
    ⟨hbQ, hrQ, hr, hbr, hcoprimeB⟩
  have hden : 0 < (q : ℝ) * (r : ℝ) := by positivity
  have hdet :
      goldbachLiftedRationalDeterminant a q b r k l ≠ 0 :=
    goldbachLiftedRationalDeterminant_ne_zero ha hb hdistinct
  have hdetabs :
      (1 : ℝ) ≤
        |(goldbachLiftedRationalDeterminant a q b r k l : ℝ)| := by
    rw [← Int.cast_one, ← Int.cast_abs, Int.cast_le]
    exact Int.one_le_abs hdet
  rw [goldbachLiftedRationalArcCenter_sub_eq hq hr,
    abs_div, abs_of_pos hden]
  exact (div_le_div_iff_of_pos_right hden).2 hdetabs

/-- Pair-specific radius control needed to beat the denominator-product
separation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachRationalArcSeparation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachRationalArcSeparation.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d92f4cfddbfef7a5784ef4bb2784477f4a272269` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
