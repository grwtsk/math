# measure_eq_zero_iff_eq_empty_of_smulInvariant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:05ba1416-ca90-e733-35b5-4429ca864877",
  "kind": "theorem",
  "lexical_name": "measure_eq_zero_iff_eq_empty_of_smulInvariant",
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
  "slug": "measure-eq-zero-iff-eq-empty-of-smulinvariant--cf1b12f1c38c19745b5e1fe6",
  "source": {
    "blob": "8385a29014b00306f92d2f13598cb6134846a1f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 264,
    "path": "GRWTSK/Analysis/MeasureTheory/Action/Variant6404e4b910c6a39addf952fa5aacd90c66f526270aa2b9deb9b1279a9cbf7106.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf1b12f1c38c19745b5e1fe6057fcf065ac7a6a21969ae2643c465b829d15fad",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Action/Variant6404e4b910c6a39addf952fa5aacd90c66f526270aa2b9deb9b1279a9cbf7106.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05ba1416-ca90-e733-35b5-4429ca864877`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_eq_zero_iff_eq_empty_of_smulInvariant (hμ : μ ≠ 0) (hU : IsOpen U) :
    μ U = 0 ↔ U = ∅ := by
  rw [← not_iff_not, ← Ne.def, ← pos_iff_ne_zero,
    measure_pos_iff_nonempty_of_smulInvariant G hμ hU, nonempty_iff_ne_empty]
#align measure_theory.measure_eq_zero_iff_eq_empty_of_smul_invariant MeasureTheory.measure_eq_zero_iff_eq_empty_of_smulInvariant
#align measure_theory.measure_eq_zero_iff_eq_empty_of_vadd_invariant MeasureTheory.measure_eq_zero_iff_eq_empty_of_vaddInvariant

end IsMinimal

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Action/Variant6404e4b910c6a39addf952fa5aacd90c66f526270aa2b9deb9b1279a9cbf7106.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Action/Variant6404e4b910c6a39addf952fa5aacd90c66f526270aa2b9deb9b1279a9cbf7106.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8385a29014b00306f92d2f13598cb6134846a1f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
