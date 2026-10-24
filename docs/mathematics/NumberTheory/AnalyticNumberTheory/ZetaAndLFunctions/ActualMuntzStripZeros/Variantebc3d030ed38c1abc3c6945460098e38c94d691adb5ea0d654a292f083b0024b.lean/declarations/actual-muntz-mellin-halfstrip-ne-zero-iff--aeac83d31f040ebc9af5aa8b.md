# actual_muntz_mellin_halfstrip_ne_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:53e66aaa-5eea-21d3-ddff-cfc913edfeb2",
  "kind": "theorem",
  "lexical_name": "actual_muntz_mellin_halfstrip_ne_zero_iff",
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
  "slug": "actual-muntz-mellin-halfstrip-ne-zero-iff--aeac83d31f040ebc9af5aa8b",
  "source": {
    "blob": "6c8183af7cb4da0a07d62dcc7b9031bb77830a52",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 23,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ActualMuntzStripZeros/Variantebc3d030ed38c1abc3c6945460098e38c94d691adb5ea0d654a292f083b0024b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aeac83d31f040ebc9af5aa8bd53d538f427e2c0911a7165f434598971c6b967b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ActualMuntzStripZeros/Variantebc3d030ed38c1abc3c6945460098e38c94d691adb5ea0d654a292f083b0024b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53e66aaa-5eea-21d3-ddff-cfc913edfeb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_muntz_mellin_halfstrip_ne_zero_iff {A : ℝ} (hA : 1 ≤ A) {s : ℂ}
    (hl : 1/2 < s.re) (hu : s.re < 1) :
    mellin (complexMuntz A) s ≠ 0 ↔ riemannZeta s ≠ 0 :=
  not_congr (actual_muntz_mellin_halfstrip_zero_iff hA hl hu)

end ContinuousResearch.ActualMuntzStripZeros

/- Exact public type, proof and trusted dependency audits. -/

#check ContinuousResearch.ActualMuntzStripZeros.actual_source_mellin_halfstrip_ne_zero
#print axioms ContinuousResearch.ActualMuntzStripZeros.actual_source_mellin_halfstrip_ne_zero
#print ContinuousResearch.ActualMuntzStripZeros.actual_source_mellin_halfstrip_ne_zero

#check ContinuousResearch.ActualMuntzStripZeros.actual_muntz_mellin_halfstrip_zero_iff
#print axioms ContinuousResearch.ActualMuntzStripZeros.actual_muntz_mellin_halfstrip_zero_iff
#print ContinuousResearch.ActualMuntzStripZeros.actual_muntz_mellin_halfstrip_zero_iff

#check ContinuousResearch.ActualMuntzStripZeros.actual_muntz_mellin_halfstrip_ne_zero_iff
#print axioms ContinuousResearch.ActualMuntzStripZeros.actual_muntz_mellin_halfstrip_ne_zero_iff
#print ContinuousResearch.ActualMuntzStripZeros.actual_muntz_mellin_halfstrip_ne_zero_iff
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ActualMuntzStripZeros/Variantebc3d030ed38c1abc3c6945460098e38c94d691adb5ea0d654a292f083b0024b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ActualMuntzStripZeros/Variantebc3d030ed38c1abc3c6945460098e38c94d691adb5ea0d654a292f083b0024b.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c8183af7cb4da0a07d62dcc7b9031bb77830a52` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
