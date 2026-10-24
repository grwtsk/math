# support_residueClass_prime_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a47f08371abfb838979363184bcdf36841335128",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 117,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a2/a2491d48850056b27fe6ad31cf7b210a7f6455e8e0fa4fbb714671bbffb61ca4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6bc776ed-c3a1-3cfb-3104-f5bf9488fd2b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:56c8cc36-b9ef-428e-93f1-4fb942a43826",
  "kind": "lemma",
  "lexical_name": "support_residueClass_prime_div",
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
  "slug": "support-residueclass-prime-div--5059c3a73acdd63ac1503f67",
  "source": {
    "blob": "a47f08371abfb838979363184bcdf36841335128",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 117,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Varianta2491d48850056b27fe6ad31cf7b210a7f6455e8e0fa4fbb714671bbffb61ca4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5059c3a73acdd63ac1503f675651e3862e69e1b69feba6414fcf8c1b636049ba",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Varianta2491d48850056b27fe6ad31cf7b210a7f6455e8e0fa4fbb714671bbffb61ca4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56c8cc36-b9ef-428e-93f1-4fb942a43826`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma support_residueClass_prime_div :
    Function.support (fun n : ℕ ↦ (if n.Prime then residueClass a n else 0) / n) =
      {p : ℕ | p.Prime ∧ (p : ZMod q) = a} := by
  simp only [Function.support, ne_eq, div_eq_zero_iff, ite_eq_right_iff,
    Set.indicator_apply_eq_zero, Set.mem_ofPred_eq, Nat.cast_eq_zero, not_or, Classical.not_imp]
  ext1 p
  simp only [Set.mem_ofPred_eq]
  exact ⟨fun H ↦ ⟨H.1.1, H.1.2.1⟩,
    fun H ↦ ⟨⟨H.1, H.2, vonMangoldt_ne_zero_iff.mpr H.1.isPrimePow⟩, H.1.ne_zero⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Varianta2491d48850056b27fe6ad31cf7b210a7f6455e8e0fa4fbb714671bbffb61ca4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Varianta2491d48850056b27fe6ad31cf7b210a7f6455e8e0fa4fbb714671bbffb61ca4.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a47f08371abfb838979363184bcdf36841335128` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
