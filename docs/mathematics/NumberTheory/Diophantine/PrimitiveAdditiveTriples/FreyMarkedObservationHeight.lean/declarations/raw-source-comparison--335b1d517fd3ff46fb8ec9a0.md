# raw_source_comparison

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc8bc872-dfde-ae89-b8bf-a391162d12d5",
  "kind": "theorem",
  "lexical_name": "raw_source_comparison",
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
  "slug": "raw-source-comparison--335b1d517fd3ff46fb8ec9a0",
  "source": {
    "blob": "b97e30744f8bdfc847fbea928d56cfa714958b4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 174,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedObservationHeight.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:335b1d517fd3ff46fb8ec9a05c8786c3195e955e4545b4e44c347e42ef5abb7b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedObservationHeight.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc8bc872-dfde-ae89-b8bf-a391162d12d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem raw_source_comparison (t : PrimitiveAdditiveTriple) :
    height (raw t) ≤ (t.c : ℚ) ∧ (t.c : ℚ) ≤ 2 * height (raw t) := by
  rw [raw_height]
  have hs : (t.a : ℚ) + (t.b : ℚ) = (t.c : ℚ) := by exact_mod_cast t.sum_eq
  constructor
  · apply max_le
    · exact_mod_cast t.a_lt_c.le
    · exact_mod_cast t.b_lt_c.le
  · have ha := le_max_left (t.a : ℚ) (t.b : ℚ)
    have hb := le_max_right (t.a : ℚ) (t.b : ℚ)
    linarith

/-- The original ordered primitive triple in the SAME affine-height convention. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedObservationHeight.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedObservationHeight.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b97e30744f8bdfc847fbea928d56cfa714958b4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
