# abs_trig_div_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "192647ee4b2e7d3959d3e8bb09e974a7200c7616",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 149,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3e/3e34ada8d33127d10721a2cc4ed9301b8c728cb852e9ad0b47fc3edc6f6bed44.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:81a98060-f404-078c-1660-7acee309ee23",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cf632a62-52c0-6997-e2bf-4381f3a9dfb5",
  "kind": "lemma",
  "lexical_name": "abs_trig_div_le",
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
  "slug": "abs-trig-div-le--f8fde39d0fed62abb94de567",
  "source": {
    "blob": "192647ee4b2e7d3959d3e8bb09e974a7200c7616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 149,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Dependence/Variant3e34ada8d33127d10721a2cc4ed9301b8c728cb852e9ad0b47fc3edc6f6bed44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8fde39d0fed62abb94de56795e2936aa0bf57255ff020c4d674508ac694f610",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Dependence/Variant3e34ada8d33127d10721a2cc4ed9301b8c728cb852e9ad0b47fc3edc6f6bed44.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf632a62-52c0-6997-e2bf-4381f3a9dfb5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma abs_trig_div_le (x N : ℝ) (f : ℝ → ℝ) (hf : ∀ x, |f x| ≤ 1) :
    |f x / (Real.pi * Real.sqrt N)| ≤ 1 / (Real.pi * Real.sqrt N) := by
  rw [abs_div, abs_of_nonneg (by positivity : (0:ℝ) ≤ Real.pi * Real.sqrt N)]
  exact div_le_div_of_nonneg_right (hf x) (by positivity)

/-- **Q_{kl}(e) as a finite ℝ-linear functional of the coefficients**:
GentryNu (P_e) k l = Σ_{N≤X} (Re e_N · Jc N + Im e_N · Js N). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Dependence/Variant3e34ada8d33127d10721a2cc4ed9301b8c728cb852e9ad0b47fc3edc6f6bed44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Dependence/Variant3e34ada8d33127d10721a2cc4ed9301b8c728cb852e9ad0b47fc3edc6f6bed44.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `192647ee4b2e7d3959d3e8bb09e974a7200c7616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
