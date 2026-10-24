# hankelBox_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "69727bee5dbddc8f31610dc932def7c6bf062780",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 108,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/5269ab98fee8c8af8987202339261f47ba31be0eaded24a5ec0b20aca453013d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d98ad67b-091b-bd54-a97f-420519c659fd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eb1ffa02-cf59-0778-c9fb-b79264e984a2",
  "kind": "theorem",
  "lexical_name": "hankelBox_sound",
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
  "slug": "hankelbox-sound--0d0b08d984c417b631919d5a",
  "source": {
    "blob": "69727bee5dbddc8f31610dc932def7c6bf062780",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 108,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/5269ab98fee8c8af8987202339261f47ba31be0eaded24a5ec0b20aca453013dThetaIntervalScr/Variant5269ab98fee8c8af8987202339261f47ba31be0eaded24a5ec0b20aca453013d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d0b08d984c417b631919d5a683599274bb09fdc6b9e8500fd853095a5ff7f28",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/5269ab98fee8c8af8987202339261f47ba31be0eaded24a5ec0b20aca453013dThetaIntervalScr/Variant5269ab98fee8c8af8987202339261f47ba31be0eaded24a5ec0b20aca453013d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb1ffa02-cf59-0778-c9fb-b79264e984a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hankelBox_sound (M : Matrix (Fin 5) (Fin 5) ℝ)
    (h : ∀ i j, Contains (hankelBox i j) (M i j)) : Matrix.det M < 0 := by
  have hb := det_sound hankelBox M h
  have hn : ((det hankelBox).c : ℝ) + (det hankelBox).r < 0 := by
    exact_mod_cast hankelBox_strict_negative
  have := (abs_le.mp hb).2
  linarith

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
/-- A coarse enclosure includes the numerical margin, not only its sign. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/5269ab98fee8c8af8987202339261f47ba31be0eaded24a5ec0b20aca453013dThetaIntervalScr/Variant5269ab98fee8c8af8987202339261f47ba31be0eaded24a5ec0b20aca453013d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/5269ab98fee8c8af8987202339261f47ba31be0eaded24a5ec0b20aca453013dThetaIntervalScr/Variant5269ab98fee8c8af8987202339261f47ba31be0eaded24a5ec0b20aca453013d.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69727bee5dbddc8f31610dc932def7c6bf062780` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
