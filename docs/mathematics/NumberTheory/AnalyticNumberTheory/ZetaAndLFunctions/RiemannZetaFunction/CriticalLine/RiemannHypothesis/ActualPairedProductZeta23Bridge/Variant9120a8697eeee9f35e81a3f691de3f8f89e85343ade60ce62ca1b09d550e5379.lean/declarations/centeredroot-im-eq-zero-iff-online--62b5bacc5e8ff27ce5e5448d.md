# centeredRoot_im_eq_zero_iff_onLine

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f9bbf0256e83cfd6968f6182747c120bd527f4f3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 140,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/91/9120a8697eeee9f35e81a3f691de3f8f89e85343ade60ce62ca1b09d550e5379.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:68949f22-6cf7-fdda-0420-cd540983e7f4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fed50156-85c1-2751-1f9e-d097575fcfb8",
  "kind": "theorem",
  "lexical_name": "centeredRoot_im_eq_zero_iff_onLine",
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
  "slug": "centeredroot-im-eq-zero-iff-online--62b5bacc5e8ff27ce5e5448d",
  "source": {
    "blob": "f9bbf0256e83cfd6968f6182747c120bd527f4f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 140,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPairedProductZeta23Bridge/Variant9120a8697eeee9f35e81a3f691de3f8f89e85343ade60ce62ca1b09d550e5379.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62b5bacc5e8ff27ce5e5448df904be22345757c6fb71054ae0af53ba5a3eb7b5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPairedProductZeta23Bridge/Variant9120a8697eeee9f35e81a3f691de3f8f89e85343ade60ce62ca1b09d550e5379.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fed50156-85c1-2751-1f9e-d097575fcfb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredRoot_im_eq_zero_iff_onLine {ρ : ℂ} (hρ : ρ.im ≠ 0) :
    (centeredRoot ρ).im = 0 ↔ ρ.re = 1 / 2 := by
  rw [centeredRoot_im]
  constructor
  · intro h
    have hp : (ρ.re - 1 / 2) * ρ.im = 0 := by
      linarith
    rcases mul_eq_zero.mp hp with hd | hi
    · linarith
    · exact (hρ hi).elim
  · intro h
    rw [h]
    norm_num

/-- A critical-line nonreal zero descends to a strictly negative real root. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPairedProductZeta23Bridge/Variant9120a8697eeee9f35e81a3f691de3f8f89e85343ade60ce62ca1b09d550e5379.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPairedProductZeta23Bridge/Variant9120a8697eeee9f35e81a3f691de3f8f89e85343ade60ce62ca1b09d550e5379.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9bbf0256e83cfd6968f6182747c120bd527f4f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
