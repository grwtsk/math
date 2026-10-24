# rational_tangent_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9740ed7b-31cf-65cd-5e06-118d255f5829",
  "kind": "theorem",
  "lexical_name": "rational_tangent_identity",
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
  "slug": "rational-tangent-identity--b86aaff045e0071552e38ad4",
  "source": {
    "blob": "fe8a7418fba3c54538099ed25754e7a6d20785af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 72,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySelectedSplitReduction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b86aaff045e0071552e38ad4f307b3daa04ad907ffcfa3806b23f18e3f4c5c12",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySelectedSplitReduction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9740ed7b-31cf-65cd-5e06-118d255f5829`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rational_tangent_identity (t : PrimitiveAdditiveTriple) :
    C ((slopeScale t : ℚ)^6) * tangentPolynomial (selectedCurve t) =
      (tangentPolynomial t.freyCurve).comp
        (slopePolynomial (slopeScale t : ℚ) (slopeShear t : ℚ)) := by
  unfold selectedCurve selectedChange
  split_ifs with hfirst heven
  · have hd : Descends t := Or.inl hfirst
    simpa only [slopeScale, slopeShear, if_pos hd, Int.cast_ofNat,
      show (2 : ℚ)^6 = 64 by norm_num] using
      half_tangent_identity t.freyCurve (t.a : ℚ) 0
  · have hd : Descends t := Or.inr heven
    simpa only [slopeScale, slopeShear, if_pos hd, Int.cast_ofNat,
      show (2 : ℚ)^6 = 64 by norm_num] using
      half_tangent_identity t.freyCurve 0 0
  · have hn : ¬ Descends t := fun h => h.elim hfirst heven
    simp [slopeScale, slopeShear, hn, slopePolynomial]

/-- Descend the coefficient identity through the injective Z->Q map BEFORE any mod-p use. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySelectedSplitReduction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySelectedSplitReduction.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe8a7418fba3c54538099ed25754e7a6d20785af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
