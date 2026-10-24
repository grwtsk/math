# continuous_Hfn_line

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a2ae92dfd3852a435f3b7d5adc13cdde73073280",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 84,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ae/ae4bdd8b6fb5ad3f0b4bf0b951cd7d19802240f255b4d963d0ce96c8ed37e1a0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:32a19819-c75b-e70f-a6f8-01e41f63f7f9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a78cc31b-3244-4a00-3229-3ec3bd1a1bd2",
  "kind": "theorem",
  "lexical_name": "continuous_Hfn_line",
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
  "slug": "continuous-hfn-line--d74bbb19d5b2c0cf8b7a1f58",
  "source": {
    "blob": "a2ae92dfd3852a435f3b7d5adc13cdde73073280",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 84,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FullLine/Variantae4bdd8b6fb5ad3f0b4bf0b951cd7d19802240f255b4d963d0ce96c8ed37e1a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d74bbb19d5b2c0cf8b7a1f58e5c529df697dad6922897d30bb1c41d436c4277b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FullLine/Variantae4bdd8b6fb5ad3f0b4bf0b951cd7d19802240f255b4d963d0ce96c8ed37e1a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a78cc31b-3244-4a00-3229-3ec3bd1a1bd2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_Hfn_line {k : ℝ → ℂ} (hk : ContDiff ℝ 2 k) (hkc : HasCompactSupport k) (σ : ℝ) :
    Continuous (fun t : ℝ => Hfn k ((σ : ℂ) + t * I)) := by
  have h := (differentiable_paperFT hk.continuous hkc).continuous
  unfold Hfn
  exact h.comp (by fun_prop)

/-- **ζ'/ζ is bounded on vertical lines to the right of 1**:
`‖ζ'/ζ(c+it)‖ ≤ Σ Λ(n) n^{−c}`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FullLine/Variantae4bdd8b6fb5ad3f0b4bf0b951cd7d19802240f255b4d963d0ce96c8ed37e1a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FullLine/Variantae4bdd8b6fb5ad3f0b4bf0b951cd7d19802240f255b4d963d0ce96c8ed37e1a0.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2ae92dfd3852a435f3b7d5adc13cdde73073280` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
