# mem_maximalIdeal_iff_eval_one_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "96f69a6f421625af228e65a8e884988d552b8655",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 101,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f3/f3719324a0fb37466ef0a5785743c6917c48732e7a9de7b3b5385a747c6496ba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c7c690cb-14ad-3fc1-3c84-d561c2157b30",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:902fc55b-8974-33e5-00c3-6b959ac589e8",
  "kind": "lemma",
  "lexical_name": "mem_maximalIdeal_iff_eval_one_eq_zero",
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
  "slug": "mem-maximalideal-iff-eval-one-eq-zero--b678cd6027b91b61c33fcb54",
  "source": {
    "blob": "96f69a6f421625af228e65a8e884988d552b8655",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 101,
    "path": "GRWTSK/Algebra/LinearAlgebra/LocalRing/Variantf3719324a0fb37466ef0a5785743c6917c48732e7a9de7b3b5385a747c6496ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b678cd6027b91b61c33fcb5415cf25b00bbef99ceb8b5eed66015abd7ecb21e5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LocalRing/Variantf3719324a0fb37466ef0a5785743c6917c48732e7a9de7b3b5385a747c6496ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:902fc55b-8974-33e5-00c3-6b959ac589e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_maximalIdeal_iff_eval_one_eq_zero [IsNoetherianRing R] [IsLocalRing R]
    (x : AdicCompletion (maximalIdeal R) R) :
    x ∈ maximalIdeal (AdicCompletion (maximalIdeal R) R) ↔ x.1 1 = 0 := by
  have : (AdicCompletion.eval (maximalIdeal R) R 1).ker =
    (maximalIdeal R) • (⊤ : Submodule R (AdicCompletion (maximalIdeal R) R)) := by
    simp [← pow_smul_top_eq_ker_eval (maximalIdeal R).fg_of_isNoetherianRing]
  rw [maximalIdeal_eq_map, ← Submodule.restrictScalars_mem R, ← Ideal.smul_top_eq_map]
  simp [← this, eval]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LocalRing/Variantf3719324a0fb37466ef0a5785743c6917c48732e7a9de7b3b5385a747c6496ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LocalRing/Variantf3719324a0fb37466ef0a5785743c6917c48732e7a9de7b3b5385a747c6496ba.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96f69a6f421625af228e65a8e884988d552b8655` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
