# freyValueJet_commonDivisor_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd62fbf3-2e25-3f1d-aa04-dd814f3c73d4",
  "kind": "theorem",
  "lexical_name": "freyValueJet_commonDivisor_iff",
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
  "slug": "freyvaluejet-commondivisor-iff--c87bd164481521c5a8167958",
  "source": {
    "blob": "8dde77d1422cd126b6e8e1d695ebd7abfa7d7b7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 153,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetRankGrowth.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c87bd164481521c5a8167958d6bea2c64d5548320dd95d5f32161305d23b21e8",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetRankGrowth.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd62fbf3-2e25-3f1d-aa04-dd814f3c73d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem freyValueJet_commonDivisor_iff
    {a b r s : ℤ} (h : r * a + s * b = 1)
    (d : ℤ) (v : FreyPlaneCoordinates) :
    (∀ i, d ∣ freyValueJetEval a b v i) ↔ (∀ j, d ∣ v j) := by
  constructor
  · intro hv j
    fin_cases j
    · exact hv 0
    · have hrec : d ∣ freyValueJetRecover r s (freyValueJetEval a b v) 1 := by
        change d ∣ r * (freyValueJetEval a b v 1 - freyValueJetEval a b v 0) +
          s * (freyValueJetEval a b v 0 - freyValueJetEval a b v 2)
        exact dvd_add
          (dvd_mul_of_dvd_right (dvd_sub (hv 1) (hv 0)) r)
          (dvd_mul_of_dvd_right (dvd_sub (hv 0) (hv 2)) s)
      simpa only [freyValueJetRecover_leftInverse h v] using hrec
    · exact hv 3
  · intro hv i
    fin_cases i
    · exact hv 0
    · change d ∣ v 0 + a * v 1
      exact dvd_add (hv 0) (dvd_mul_of_dvd_right (hv 1) a)
    · change d ∣ v 0 - b * v 1
      exact dvd_sub (hv 0) (dvd_mul_of_dvd_right (hv 1) b)
    · exact hv 2

/-- The original compatibility equation remains the only obstruction.
The extra first jet does not make arbitrary four-value data interpolable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetRankGrowth.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetRankGrowth.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8dde77d1422cd126b6e8e1d695ebd7abfa7d7b7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
