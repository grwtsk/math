# iteratedDeriv_cos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a6c6829e8730fc564ee9c4c8215bb55539bae25a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 737,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9f5d55776c9b353656498a97b0569cac6621456c550427c8ca5d5a57da8db252.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3a20f510-0e46-a1ad-693a-73374df8d715",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:daa22303-6170-1820-1cfd-2c7d265d43ac",
  "kind": "lemma",
  "lexical_name": "iteratedDeriv_cos",
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
  "slug": "iteratedderiv-cos--601695ced3962168d2157d56",
  "source": {
    "blob": "a6c6829e8730fc564ee9c4c8215bb55539bae25a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 762,
    "line": 737,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant9f5d55776c9b353656498a97b0569cac6621456c550427c8ca5d5a57da8db252.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:601695ced3962168d2157d5678725a5af15008561436d092dddca5368210b126",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant9f5d55776c9b353656498a97b0569cac6621456c550427c8ca5d5a57da8db252.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:daa22303-6170-1820-1cfd-2c7d265d43ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 737–762.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma iteratedDeriv_cos (n : ℕ) : iteratedDeriv n Real.cos =
    if n % 4 = 0 then Real.cos
    else if n % 4 = 1 then fun x => -Real.sin x
    else if n % 4 = 2 then fun x => -Real.cos x
    else Real.sin := by
  induction n with
  | zero =>
    simp only [iteratedDeriv_zero, Nat.zero_mod, ↓reduceIte]
  | succ n ih =>
    rw [iteratedDeriv_succ, ih]
    have h4 : n % 4 < 4 := Nat.mod_lt n (by norm_num)
    rcases (by omega : n % 4 = 0 ∨ n % 4 = 1 ∨ n % 4 = 2 ∨ n % 4 = 3) with h0 | h1 | h2 | h3
    · -- n % 4 = 0: deriv cos = -sin
      have hn1 : (n + 1) % 4 = 1 := by omega
      simp only [h0, hn1, ↓reduceIte]; norm_num
    · -- n % 4 = 1: deriv (-sin) = -cos
      have hn1 : (n + 1) % 4 = 2 := by omega
      simp only [h1, hn1, ↓reduceIte]; norm_num
    · -- n % 4 = 2: deriv (-cos) = sin
      have hn1 : (n + 1) % 4 = 3 := by omega
      simp only [h2, hn1, ↓reduceIte]; norm_num
    · -- n % 4 = 3: deriv sin = cos
      have hn1 : (n + 1) % 4 = 0 := by omega
      simp only [h3, hn1, ↓reduceIte]; norm_num

/-- The iterated derivative of cos at 0 follows the pattern 1, 0, -1, 0, 1, 0, ... -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant9f5d55776c9b353656498a97b0569cac6621456c550427c8ca5d5a57da8db252.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant9f5d55776c9b353656498a97b0569cac6621456c550427c8ca5d5a57da8db252.lean#L737).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6c6829e8730fc564ee9c4c8215bb55539bae25a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
