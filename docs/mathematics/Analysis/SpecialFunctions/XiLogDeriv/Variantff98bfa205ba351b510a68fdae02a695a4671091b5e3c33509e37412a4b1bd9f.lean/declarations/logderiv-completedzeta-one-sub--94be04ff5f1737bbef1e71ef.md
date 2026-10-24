# logDeriv_completedZeta_one_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "71b1eaed44eee2f700c68453a76ff012a30a5717",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 78,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ff/ff98bfa205ba351b510a68fdae02a695a4671091b5e3c33509e37412a4b1bd9f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:59855143-ce63-52da-29f9-9615d8ca2a89",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a1431c95-c38d-66e5-ca51-3febc27c7c4a",
  "kind": "theorem",
  "lexical_name": "logDeriv_completedZeta_one_sub",
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
  "slug": "logderiv-completedzeta-one-sub--94be04ff5f1737bbef1e71ef",
  "source": {
    "blob": "71b1eaed44eee2f700c68453a76ff012a30a5717",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 78,
    "path": "GRWTSK/Analysis/SpecialFunctions/XiLogDeriv/Variantff98bfa205ba351b510a68fdae02a695a4671091b5e3c33509e37412a4b1bd9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:94be04ff5f1737bbef1e71ef246b7104a94fda02eb3a1eec2486ba5813be67de",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/XiLogDeriv/Variantff98bfa205ba351b510a68fdae02a695a4671091b5e3c33509e37412a4b1bd9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1431c95-c38d-66e5-ca51-3febc27c7c4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logDeriv_completedZeta_one_sub (s : ℂ) (hs0 : s ≠ 0) (hs1 : s ≠ 1) :
    logDeriv completedRiemannZeta (1 - s) = -logDeriv completedRiemannZeta s := by
  have hcomp : completedRiemannZeta = completedRiemannZeta ∘ (fun u : ℂ => 1 - u) := by
    funext u; simp [completedRiemannZeta_one_sub]
  have hd : DifferentiableAt ℂ completedRiemannZeta (1 - s) :=
    differentiableAt_completedZeta (sub_ne_zero.mpr (Ne.symm hs1)) (by
      intro h; apply hs0; linear_combination -h)
  have hg : DifferentiableAt ℂ (fun u : ℂ => 1 - u) s := (differentiableAt_const _).sub differentiableAt_id
  have key := logDeriv_comp (x := s) hd hg
  rw [← hcomp] at key
  have hderiv : deriv (fun u : ℂ => 1 - u) s = -1 := by
    rw [deriv_const_sub, deriv_id'']
  rw [key, hderiv]
  ring

/-- In the open critical strip the zeros of Λ are exactly the nontrivial zeros of ζ, with the same
analytic order (Γℝ is analytic and nonvanishing there). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/XiLogDeriv/Variantff98bfa205ba351b510a68fdae02a695a4671091b5e3c33509e37412a4b1bd9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/XiLogDeriv/Variantff98bfa205ba351b510a68fdae02a695a4671091b5e3c33509e37412a4b1bd9f.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71b1eaed44eee2f700c68453a76ff012a30a5717` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
