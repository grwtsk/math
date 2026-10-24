# analyticOrderAt_hardyW_conj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4d33d26edcbb986938c335bb99f43dedafa396fb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 268,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/15/15f5155467d0dfc0e58244509a184f3c42bcd1b140349d894a000cef7fe8554b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:820db60a-080c-0675-d301-0fc1dc51f376",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fa29453c-dc45-8935-876a-029738dfceaf",
  "kind": "theorem",
  "lexical_name": "analyticOrderAt_hardyW_conj",
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
  "slug": "analyticorderat-hardyw-conj--adf43d8b8d6149e9e51b1b0d",
  "source": {
    "blob": "4d33d26edcbb986938c335bb99f43dedafa396fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 268,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant15f5155467d0dfc0e58244509a184f3c42bcd1b140349d894a000cef7fe8554b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:adf43d8b8d6149e9e51b1b0d763ebdec54dbfc267d2baf7899dccb0dc033bf6a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant15f5155467d0dfc0e58244509a184f3c42bcd1b140349d894a000cef7fe8554b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa29453c-dc45-8935-876a-029738dfceaf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem analyticOrderAt_hardyW_conj {w : ℂ} (hw : w.im ≠ 0) :
    analyticOrderAt hardyW (conj w) = analyticOrderAt hardyW w := by
  have hw' : (conj w).im ≠ 0 := by simpa using hw
  have hev : (fun z => conj (hardyW (conj z))) =ᶠ[𝓝 (conj w)] hardyW := by
    filter_upwards [isOpen_im_ne_zero.mem_nhds hw'] with z hz
    have hz' : (conj z).im ≠ 0 := by simpa using hz
    rw [hardyW_conj hz, Complex.conj_conj]
  calc analyticOrderAt hardyW (conj w)
      = analyticOrderAt (fun z => conj (hardyW (conj z))) (conj w) := (analyticOrderAt_congr hev).symm
    _ = analyticOrderAt hardyW w := Zeta23.analyticOrderAt_conj_conj _ _

/-- **m_{1−ρ̄} = m_ρ** for non-real ρ. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant15f5155467d0dfc0e58244509a184f3c42bcd1b140349d894a000cef7fe8554b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant15f5155467d0dfc0e58244509a184f3c42bcd1b140349d894a000cef7fe8554b.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d33d26edcbb986938c335bb99f43dedafa396fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
