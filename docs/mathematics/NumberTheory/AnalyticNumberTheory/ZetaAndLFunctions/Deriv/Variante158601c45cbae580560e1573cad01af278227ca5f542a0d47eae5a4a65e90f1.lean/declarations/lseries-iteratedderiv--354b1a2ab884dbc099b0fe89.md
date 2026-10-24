# LSeries_iteratedDeriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0b58015c3daa525dc2c2699bf62a1a7b36a95d78",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 129,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e158601c45cbae580560e1573cad01af278227ca5f542a0d47eae5a4a65e90f1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c6e5c169-8044-312a-dc23-34bde59edb7d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:712b183a-a31a-927d-88a2-c421a775cf9a",
  "kind": "lemma",
  "lexical_name": "LSeries_iteratedDeriv",
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
  "slug": "lseries-iteratedderiv--354b1a2ab884dbc099b0fe89",
  "source": {
    "blob": "0b58015c3daa525dc2c2699bf62a1a7b36a95d78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 129,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Deriv/Variante158601c45cbae580560e1573cad01af278227ca5f542a0d47eae5a4a65e90f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:354b1a2ab884dbc099b0fe892785b1886db7c9623926ea0c4f23171503b717bb",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Deriv/Variante158601c45cbae580560e1573cad01af278227ca5f542a0d47eae5a4a65e90f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:712b183a-a31a-927d-88a2-c421a775cf9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LSeries_iteratedDeriv {f : ℕ → ℂ} (m : ℕ) {s : ℂ} (h : abscissaOfAbsConv f < s.re) :
    iteratedDeriv m (LSeries f) s = (-1) ^ m * LSeries (logMul^[m] f) s := by
  induction m generalizing s with
  | zero => simp
  | succ m ih =>
    have ih' : {s | abscissaOfAbsConv f < re s}.EqOn (iteratedDeriv m (LSeries f))
        ((-1) ^ m * LSeries (logMul^[m] f)) := fun _ hs ↦ ih hs
    have := derivWithin_congr ih' (ih h)
    simp_rw [derivWithin_of_isOpen (isOpen_re_gt_EReal _) h] at this
    rw [iteratedDeriv_succ, this]
    simp [Pi.mul_def, pow_succ, mul_assoc, Function.iterate_succ', Function.comp_def,
      LSeries_deriv <| absicssaOfAbsConv_logPowMul.symm ▸ h, -Function.iterate_succ]

/-!
### The L-series is holomorphic
-/

/-- The L-series of `f` is complex differentiable in its open half-plane of absolute
convergence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Deriv/Variante158601c45cbae580560e1573cad01af278227ca5f542a0d47eae5a4a65e90f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Deriv/Variante158601c45cbae580560e1573cad01af278227ca5f542a0d47eae5a4a65e90f1.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b58015c3daa525dc2c2699bf62a1a7b36a95d78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
