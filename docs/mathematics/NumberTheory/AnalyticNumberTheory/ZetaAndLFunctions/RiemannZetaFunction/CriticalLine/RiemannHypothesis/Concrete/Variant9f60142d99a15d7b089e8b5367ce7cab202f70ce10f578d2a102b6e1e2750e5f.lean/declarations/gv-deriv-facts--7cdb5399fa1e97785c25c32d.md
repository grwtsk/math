# gv_deriv_facts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "164f6f3185ff95d6357bc7b46819ba8a6e294823",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 184,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9f60142d99a15d7b089e8b5367ce7cab202f70ce10f578d2a102b6e1e2750e5f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f32aeedb-e8ca-c3b5-bb29-bbe0a672fc25",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:323b5074-922e-3b2f-efa9-fba541aa1f90",
  "kind": "lemma",
  "lexical_name": "gv_deriv_facts",
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
  "slug": "gv-deriv-facts--7cdb5399fa1e97785c25c32d",
  "source": {
    "blob": "164f6f3185ff95d6357bc7b46819ba8a6e294823",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 184,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant9f60142d99a15d7b089e8b5367ce7cab202f70ce10f578d2a102b6e1e2750e5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7cdb5399fa1e97785c25c32d28bbd6ff42bd0e95ffeefb242ff9bdbee0553bd9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant9f60142d99a15d7b089e8b5367ce7cab202f70ce10f578d2a102b6e1e2750e5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:323b5074-922e-3b2f-efa9-fba541aa1f90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma gv_deriv_facts {v : ℝ → ℝ} {L w c : ℝ} (hW : AdmWindow v L w c) :
    Differentiable ℝ (AdmWindow.gv v) ∧ Continuous (deriv (AdmWindow.gv v))
      ∧ ∀ y : ℝ, |deriv (AdmWindow.gv v) y| ≤ 2 := by
  apply ThmD.autocorr_deriv_facts
  · exact (hW.contDiff.pow 2).of_le (by norm_num)
  · exact hW.sq_hasCompactSupport
  · intro x; exact hW.sq_even x
  · intro u
    rw [abs_of_nonneg (sq_nonneg _)]
    calc v u ^ 2 ≤ 1 ^ 2 := pow_le_pow_left₀ (hW.nonneg u) (hW.le_one u) 2
      _ = 1 := one_pow 2
  · exact hW.l1_deriv_sq

/-! ## The concrete FactsXi -/

/-- generic bridge: an EventuallyAtCore-type bound, specialised to the window family, is an
eventual pointwise bound in T. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant9f60142d99a15d7b089e8b5367ce7cab202f70ce10f578d2a102b6e1e2750e5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant9f60142d99a15d7b089e8b5367ce7cab202f70ce10f578d2a102b6e1e2750e5f.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `164f6f3185ff95d6357bc7b46819ba8a6e294823` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
