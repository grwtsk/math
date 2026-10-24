# re_term_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "744e30031e69bfe25e10559ca71b12a53ccc1c14",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 41,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/71e4d99a73604b9e09009d897a0bbbaf5d3a950a470758f07738ccc67a171c97.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:367c4660-3504-ae34-1088-d58bc6f784e5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:beed67ad-daf0-7fcb-1156-ac1b0f8c9566",
  "kind": "lemma",
  "lexical_name": "re_term_eq",
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
  "slug": "re-term-eq--1e3ee9e79b7d3c0553c9c19d",
  "source": {
    "blob": "744e30031e69bfe25e10559ca71b12a53ccc1c14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 41,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Mu/Variant71e4d99a73604b9e09009d897a0bbbaf5d3a950a470758f07738ccc67a171c97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e3ee9e79b7d3c0553c9c19d702a84c8e01e23d832a26951deebfd141ae626b8",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Mu/Variant71e4d99a73604b9e09009d897a0bbbaf5d3a950a470758f07738ccc67a171c97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:beed67ad-daf0-7fcb-1156-ac1b0f8c9566`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma re_term_eq (t : ℝ) (n : ℕ) :
    ((1 : ℂ) / ((n : ℂ) + 1) - 1 / (((a : ℂ) + Complex.I * t) + n + 1)).re
      = 1 / ((n : ℝ) + 1) - ((n : ℝ) + 1 + a) / (((n : ℝ) + 1 + a) ^ 2 + t ^ 2) := by
  rw [Complex.sub_re]
  congr 1
  · rw [show ((n : ℂ) + 1) = (((n : ℝ) + 1 : ℝ) : ℂ) by push_cast; ring,
      show (1 : ℂ) / ((((n : ℝ) + 1 : ℝ)) : ℂ) = ((((1 : ℝ) / ((n : ℝ) + 1)) : ℝ) : ℂ) by
        push_cast
        ring]
    exact Complex.ofReal_re _
  · rw [one_div, Complex.inv_re]
    have hre : (((a : ℂ) + Complex.I * t) + n + 1).re = (n : ℝ) + 1 + a := by
      simp
      ring
    have him : (((a : ℂ) + Complex.I * t) + n + 1).im = t := by simp
    rw [hre, Complex.normSq_apply, hre, him]
    ring

/-- Re(1/z) on the line. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Mu/Variant71e4d99a73604b9e09009d897a0bbbaf5d3a950a470758f07738ccc67a171c97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Mu/Variant71e4d99a73604b9e09009d897a0bbbaf5d3a950a470758f07738ccc67a171c97.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `744e30031e69bfe25e10559ca71b12a53ccc1c14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
