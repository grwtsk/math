# ContinuousLinearEquiv.continuousSMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fc92434cb9eacb55e366d5e2d529a5881adf85fa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 90,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/df/dfa129d7bfed57808b9a06bf7eee1e936a2d1b93fd7b35c81badbff0d53c4360.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:49953cd7-c98f-fb8c-5f43-488dd20d0f99",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eb6f71e9-6d76-8170-3e50-a0c64a9bfaa2",
  "kind": "lemma",
  "lexical_name": "ContinuousLinearEquiv.continuousSMul",
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
  "slug": "continuouslinearequiv-continuoussmul--57e745f01c4f7bf8c2a0d275",
  "source": {
    "blob": "fc92434cb9eacb55e366d5e2d529a5881adf85fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 90,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/TransferInstance/Variantdfa129d7bfed57808b9a06bf7eee1e936a2d1b93fd7b35c81badbff0d53c4360.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57e745f01c4f7bf8c2a0d275a5c25d1c7779cbc6304170f185633af963cc374a",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/TransferInstance/Variantdfa129d7bfed57808b9a06bf7eee1e936a2d1b93fd7b35c81badbff0d53c4360.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb6f71e9-6d76-8170-3e50-a0c64a9bfaa2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ContinuousLinearEquiv.continuousSMul
    [TopologicalSpace β] [AddCommGroup β] [Module R β] [TopologicalSpace R] [ContinuousSMul R β]
    [TopologicalSpace α] [AddCommGroup α] [Module R α]
    (e : α ≃L[R] β) :
    ContinuousSMul R α where
  continuous_smul := by
    let f : R × α → α := fun p ↦ e.symm <| p.1 • (e p.2)
    have : Continuous f := by fun_prop
    exact this.congr (fun p ↦ by simp [f])

end ContinuousLinearEquiv

universe v

variable (R α) in
/-- Shrinking `α` to a smaller universe preserves the continuous module structure. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/TransferInstance/Variantdfa129d7bfed57808b9a06bf7eee1e936a2d1b93fd7b35c81badbff0d53c4360.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/TransferInstance/Variantdfa129d7bfed57808b9a06bf7eee1e936a2d1b93fd7b35c81badbff0d53c4360.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc92434cb9eacb55e366d5e2d529a5881adf85fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
