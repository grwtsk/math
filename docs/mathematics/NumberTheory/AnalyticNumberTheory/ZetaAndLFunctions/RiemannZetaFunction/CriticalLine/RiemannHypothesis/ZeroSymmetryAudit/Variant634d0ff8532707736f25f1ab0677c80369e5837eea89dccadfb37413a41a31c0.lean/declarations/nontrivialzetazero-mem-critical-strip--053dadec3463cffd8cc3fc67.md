# NontrivialZetaZero.mem_critical_strip

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9f0ffbcd-de16-232a-65c4-3b51254a0f3e",
  "kind": "theorem",
  "lexical_name": "NontrivialZetaZero.mem_critical_strip",
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
  "slug": "nontrivialzetazero-mem-critical-strip--053dadec3463cffd8cc3fc67",
  "source": {
    "blob": "b6b2bbe661b246ce4e773f81c9c441e3d400e540",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 113,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetryAudit/Variant634d0ff8532707736f25f1ab0677c80369e5837eea89dccadfb37413a41a31c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:053dadec3463cffd8cc3fc67c9b25894954f07424fae39b2f27d782af2b4963c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetryAudit/Variant634d0ff8532707736f25f1ab0677c80369e5837eea89dccadfb37413a41a31c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f0ffbcd-de16-232a-65c4-3b51254a0f3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem NontrivialZetaZero.mem_critical_strip {s : ℂ} (hs : NontrivialZetaZero s) :
    0 < s.re ∧ s.re < 1 := by
  have hright : s.re < 1 := lt_of_not_ge fun h ↦
    riemannZeta_ne_zero_of_one_le_re h hs.1
  have hleft : (zeroReflect s).re < 1 := lt_of_not_ge fun h ↦
    riemannZeta_ne_zero_of_one_le_re h hs.reflect.1
  simp only [zeroReflect, sub_re, one_re] at hleft
  exact ⟨by linarith, hright⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetryAudit/Variant634d0ff8532707736f25f1ab0677c80369e5837eea89dccadfb37413a41a31c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetryAudit/Variant634d0ff8532707736f25f1ab0677c80369e5837eea89dccadfb37413a41a31c0.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6b2bbe661b246ce4e773f81c9c441e3d400e540` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
