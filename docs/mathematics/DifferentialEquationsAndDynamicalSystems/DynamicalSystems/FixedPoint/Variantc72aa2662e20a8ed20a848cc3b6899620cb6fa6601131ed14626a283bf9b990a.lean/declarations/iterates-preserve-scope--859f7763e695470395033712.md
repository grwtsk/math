# iterates_preserve_scope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2ee5f99fbca4c07ceeb2c16dcf9b377de48cc5b7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c7/c72aa2662e20a8ed20a848cc3b6899620cb6fa6601131ed14626a283bf9b990a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1eaf4028-27a7-c880-00f9-1d00f032a2de",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f40a92e9-52f1-9822-2bb7-6aa474f137a5",
  "kind": "theorem",
  "lexical_name": "iterates_preserve_scope",
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
  "slug": "iterates-preserve-scope--859f7763e695470395033712",
  "source": {
    "blob": "2ee5f99fbca4c07ceeb2c16dcf9b377de48cc5b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 71,
    "path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/FixedPoint/Variantc72aa2662e20a8ed20a848cc3b6899620cb6fa6601131ed14626a283bf9b990a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:859f7763e695470395033712914570209fa527792f27cad8c7eac8c7b086d46a",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/FixedPoint/Variantc72aa2662e20a8ed20a848cc3b6899620cb6fa6601131ed14626a283bf9b990a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f40a92e9-52f1-9822-2bb7-6aa474f137a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iterates_preserve_scope
    (operator : Operator)
    (initial : State) :
    ∀ iteration,
      ((operator.step^[iteration]) initial).workPackage =
        initial.workPackage := by
  intro iteration
  induction iteration with
  | zero => rfl
  | succ iteration inductionHypothesis =>
      rw [Function.iterate_succ_apply']
      exact
        (operator.source_preserved
          ((operator.step^[iteration]) initial)).2.trans
          inductionHypothesis

end Operator

end Mathematics.Relaxation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/FixedPoint/Variantc72aa2662e20a8ed20a848cc3b6899620cb6fa6601131ed14626a283bf9b990a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/FixedPoint/Variantc72aa2662e20a8ed20a848cc3b6899620cb6fa6601131ed14626a283bf9b990a.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ee5f99fbca4c07ceeb2c16dcf9b377de48cc5b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
