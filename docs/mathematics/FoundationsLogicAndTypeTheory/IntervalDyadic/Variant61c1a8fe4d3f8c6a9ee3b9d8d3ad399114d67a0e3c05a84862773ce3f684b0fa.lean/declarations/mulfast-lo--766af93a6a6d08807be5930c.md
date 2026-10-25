# mulFast_lo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b77f3102dc0f912b0389995fefcaf7161365b344",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 328,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/61/61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e811b358-ff47-9bc6-6ceb-458870330900",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fee25c44-f01f-6d6c-c1d7-f6364e40f9fd",
  "kind": "theorem",
  "lexical_name": "mulFast_lo",
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
  "slug": "mulfast-lo--766af93a6a6d08807be5930c",
  "source": {
    "blob": "b77f3102dc0f912b0389995fefcaf7161365b344",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 371,
    "line": 328,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:766af93a6a6d08807be5930c0c869ede536d859f811a6db10e3bed5267629119",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fee25c44-f01f-6d6c-c1d7-f6364e40f9fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 328–371.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem mulFast_lo (I J : IntervalDyadic) : (mulFast I J).lo.toRat = (mul I J).lo.toRat := by
  have hrhs : (mul I J).lo.toRat = IntervalRat.min4
      (I.lo.toRat * J.lo.toRat) (I.lo.toRat * J.hi.toRat)
      (I.hi.toRat * J.lo.toRat) (I.hi.toRat * J.hi.toRat) := by
    simp only [mul, Dyadic.toRat_mul, min4_toRat]
  rw [hrhs]; unfold mulFast
  split
  · rename_i hI; have hIlo := toRat_nonneg_of_le hI
    split
    · rename_i hJ; have hJlo := toRat_nonneg_of_le hJ
      simp only [Dyadic.toRat_mul]
      exact IntervalRat.eq_min4_of_le (by nlinarith [I.le, J.le]) (by nlinarith [I.le, J.le]) (by nlinarith [I.le, J.le])
    · split
      · rename_i _ hJ2; have hJhi := toRat_nonpos_of_le hJ2
        simp only [Dyadic.toRat_mul]
        exact IntervalRat.eq_min4_of_le3 (by nlinarith [I.le, J.le]) (by nlinarith [I.le, J.le]) (by nlinarith [I.le, J.le])
      · rename_i hJ hJ2; have hJlo := le_of_lt (toRat_neg_of_not_le hJ); have hJhi := le_of_lt (toRat_pos_of_not_le hJ2)
        simp only [Dyadic.toRat_mul]
        exact IntervalRat.eq_min4_of_le3 (by nlinarith [I.le, J.le]) (by nlinarith [I.le, J.le]) (by nlinarith [I.le, J.le])
  · split
    · rename_i _ hI2; have hIhi := toRat_nonpos_of_le hI2
      split
      · rename_i hJ; have hJlo := toRat_nonneg_of_le hJ
        simp only [Dyadic.toRat_mul]
        exact IntervalRat.eq_min4_of_le2 (by nlinarith [I.le, J.le]) (by nlinarith [I.le, J.le]) (by nlinarith [I.le, J.le])
      · split
        · rename_i _ hJ2; have hJhi := toRat_nonpos_of_le hJ2
          simp only [Dyadic.toRat_mul]
          exact IntervalRat.eq_min4_of_le4 (by nlinarith [I.le, J.le]) (by nlinarith [I.le, J.le]) (by nlinarith [I.le, J.le])
        · rename_i hJ hJ2; have hJlo := le_of_lt (toRat_neg_of_not_le hJ); have hJhi := le_of_lt (toRat_pos_of_not_le hJ2)
          simp only [Dyadic.toRat_mul]
          exact IntervalRat.eq_min4_of_le2 (by nlinarith [I.le, J.le]) (by nlinarith [I.le, J.le]) (by nlinarith [I.le, J.le])
    · rename_i hI hI2; have hIlo := le_of_lt (toRat_neg_of_not_le hI); have hIhi := le_of_lt (toRat_pos_of_not_le hI2)
      split
      · rename_i hJ; have hJlo := toRat_nonneg_of_le hJ
        simp only [Dyadic.toRat_mul]
        exact IntervalRat.eq_min4_of_le2 (by nlinarith [I.le, J.le]) (by nlinarith [I.le, J.le]) (by nlinarith [I.le, J.le])
      · split
        · rename_i _ hJ2; have hJhi := toRat_nonpos_of_le hJ2
          simp only [Dyadic.toRat_mul]
          exact IntervalRat.eq_min4_of_le3 (by nlinarith [I.le, J.le]) (by nlinarith [I.le, J.le]) (by nlinarith [I.le, J.le])
        · exact hrhs

/-- mulFast endpoints match mul endpoints: hi -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean#L328).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b77f3102dc0f912b0389995fefcaf7161365b344` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
