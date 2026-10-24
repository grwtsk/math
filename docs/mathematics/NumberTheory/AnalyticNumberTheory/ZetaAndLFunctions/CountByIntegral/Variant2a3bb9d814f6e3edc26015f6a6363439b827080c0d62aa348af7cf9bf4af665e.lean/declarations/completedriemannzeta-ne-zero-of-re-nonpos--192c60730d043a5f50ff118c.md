# completedRiemannZeta_ne_zero_of_re_nonpos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c6dc0b19f21a4a031573ad63c3edd2c75c193e00",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2a/2a3bb9d814f6e3edc26015f6a6363439b827080c0d62aa348af7cf9bf4af665e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c162c504-4135-7c04-d4fe-6045cebd7767",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1ff3d946-58a9-9cf4-9389-819ab4a9f550",
  "kind": "lemma",
  "lexical_name": "completedRiemannZeta_ne_zero_of_re_nonpos",
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
  "slug": "completedriemannzeta-ne-zero-of-re-nonpos--192c60730d043a5f50ff118c",
  "source": {
    "blob": "c6dc0b19f21a4a031573ad63c3edd2c75c193e00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 58,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/CountByIntegral/Variant2a3bb9d814f6e3edc26015f6a6363439b827080c0d62aa348af7cf9bf4af665e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:192c60730d043a5f50ff118cb4f084b64e1167637bf72493e4f824a33cf26909",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/CountByIntegral/Variant2a3bb9d814f6e3edc26015f6a6363439b827080c0d62aa348af7cf9bf4af665e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ff3d946-58a9-9cf4-9389-819ab4a9f550`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma completedRiemannZeta_ne_zero_of_re_nonpos {s : ℂ} (hs : s.re ≤ 0) :
    completedRiemannZeta s ≠ 0 := by
  rw [← completedRiemannZeta_one_sub]
  exact completedRiemannZeta_ne_zero_of_one_le_re (by simp; linarith)

/-- The zeros of Λ are exactly the nontrivial zeros of ζ (everywhere: at the poles 0, 1 Mathlib's
junk values are nonzero too, since ζ(1) ≠ 0 in Mathlib and Λ(0) = Λ(1)). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/CountByIntegral/Variant2a3bb9d814f6e3edc26015f6a6363439b827080c0d62aa348af7cf9bf4af665e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/CountByIntegral/Variant2a3bb9d814f6e3edc26015f6a6363439b827080c0d62aa348af7cf9bf4af665e.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6dc0b19f21a4a031573ad63c3edd2c75c193e00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
