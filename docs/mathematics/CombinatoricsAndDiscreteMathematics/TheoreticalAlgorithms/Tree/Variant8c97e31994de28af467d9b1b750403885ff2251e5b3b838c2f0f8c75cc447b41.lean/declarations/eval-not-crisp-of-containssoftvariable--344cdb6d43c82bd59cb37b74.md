# eval_not_crisp_of_containsSoftVariable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5e8f450db356672f7d6b89d3974c758924bf1dcc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 80,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8c/8c97e31994de28af467d9b1b750403885ff2251e5b3b838c2f0f8c75cc447b41.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bcab1322-ace0-b4a9-69e3-a73ca2495c33",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6d9d50ec-1fc7-90bb-dd5a-66e06717c373",
  "kind": "theorem",
  "lexical_name": "eval_not_crisp_of_containsSoftVariable",
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
  "slug": "eval-not-crisp-of-containssoftvariable--344cdb6d43c82bd59cb37b74",
  "source": {
    "blob": "5e8f450db356672f7d6b89d3974c758924bf1dcc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 80,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variant8c97e31994de28af467d9b1b750403885ff2251e5b3b838c2f0f8c75cc447b41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:344cdb6d43c82bd59cb37b74ce588790840f736c7539aeb5aa9227d55d6b1f15",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variant8c97e31994de28af467d9b1b750403885ff2251e5b3b838c2f0f8c75cc447b41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d9d50ec-1fc7-90bb-dd5a-66e06717c373`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eval_not_crisp_of_containsSoftVariable
    {ρ : EdgeRelaxation.FuzzyTree.Valuation α} :
    ∀ t : Tree α,
      ContainsSoftVariable ρ t →
        ¬ EdgeRelaxation.DensityExpr.IsCrisp
          (EdgeRelaxation.FuzzyTree.eval ρ t)
  | .var _a, h => by
      simpa [ContainsSoftVariable, EdgeRelaxation.FuzzyTree.eval,
        EdgeRelaxation.DensityExpr.IsCrisp] using h
  | .falsum, h => False.elim h
  | .truth, h => False.elim h
  | .neg p, _h => by
      simp [EdgeRelaxation.FuzzyTree.eval,
        EdgeRelaxation.DensityExpr.IsCrisp]
  | .conj p q, _h => by
      simp [EdgeRelaxation.FuzzyTree.eval,
        EdgeRelaxation.DensityExpr.IsCrisp]
  | .disj p q, _h => by
      simp [EdgeRelaxation.FuzzyTree.eval,
        EdgeRelaxation.DensityExpr.IsCrisp]
  | .impl p q, _h => by
      simp [EdgeRelaxation.FuzzyTree.eval,
        EdgeRelaxation.DensityExpr.IsCrisp]
  | .eqv p q, _h => by
      simp [EdgeRelaxation.FuzzyTree.eval,
        EdgeRelaxation.DensityExpr.IsCrisp]
  | .nand p q, _h => by
      simp [EdgeRelaxation.FuzzyTree.eval,
        EdgeRelaxation.DensityExpr.IsCrisp]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variant8c97e31994de28af467d9b1b750403885ff2251e5b3b838c2f0f8c75cc447b41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variant8c97e31994de28af467d9b1b750403885ff2251e5b3b838c2f0f8c75cc447b41.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e8f450db356672f7d6b89d3974c758924bf1dcc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
