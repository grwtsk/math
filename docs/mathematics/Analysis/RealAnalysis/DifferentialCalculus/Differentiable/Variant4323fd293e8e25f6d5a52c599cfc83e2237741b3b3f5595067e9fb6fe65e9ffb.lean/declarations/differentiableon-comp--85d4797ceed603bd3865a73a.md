# DifferentiableOn.comp'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a692cd880dab521366a7686b158392db46d96a88",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 46,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/43/4323fd293e8e25f6d5a52c599cfc83e2237741b3b3f5595067e9fb6fe65e9ffb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a5ea6e51-175d-b7f0-4733-b5a6453f548c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a8ce1eca-dcec-82a3-f093-8688a33995e8",
  "kind": "theorem",
  "lexical_name": "DifferentiableOn.comp'",
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
  "slug": "differentiableon-comp--85d4797ceed603bd3865a73a",
  "source": {
    "blob": "a692cd880dab521366a7686b158392db46d96a88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 46,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Differentiable/Variant4323fd293e8e25f6d5a52c599cfc83e2237741b3b3f5595067e9fb6fe65e9ffb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:85d4797ceed603bd3865a73a685df485b6ffc3bc83e6e76880d5fd14901319da",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Differentiable/Variant4323fd293e8e25f6d5a52c599cfc83e2237741b3b3f5595067e9fb6fe65e9ffb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8ce1eca-dcec-82a3-f093-8688a33995e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem DifferentiableOn.comp' {g : F → G} {t : Set F} (hg : DifferentiableOn K g t)
    (hf : DifferentiableOn K f s) (st : Set.MapsTo f s t) :
    DifferentiableOn K (fun x => g (f x)) s :=
  fun x hx => DifferentiableWithinAt.comp x (hg (f x) (st hx)) (hf x hx) st

end lambda_rules

end Missing


-- mark definition
attribute [fun_prop]
  Differentiable
  DifferentiableAt
  DifferentiableOn


-- lambda rules
attribute [fun_prop]
  differentiable_id'
  differentiable_const
  Differentiable.comp'

  differentiableAt_id'
  differentiableAt_const
  DifferentiableAt.comp'

  differentiableOn_id'
  differentiableOn_const
  DifferentiableOn.comp'

-- product
attribute [fun_prop]
  Differentiable.prod
  Differentiable.fst
  Differentiable.snd

  DifferentiableAt.prod
  DifferentiableAt.fst
  DifferentiableAt.snd

  DifferentiableOn.prod
  DifferentiableOn.fst
  DifferentiableOn.snd

-- transitions
attribute [fun_prop]
  Differentiable.differentiableAt
  Differentiable.differentiableOn
  DifferentiableAt.continuousAt
  DifferentiableOn.continuousOn

-- algebra
attribute [fun_prop]
  Differentiable.add
  Differentiable.sub
  Differentiable.neg
  Differentiable.mul
  Differentiable.smul
  Differentiable.div
  Differentiable.inv

  DifferentiableAt.add
  DifferentiableAt.sub
  DifferentiableAt.neg
  DifferentiableAt.mul
  DifferentiableAt.smul
  DifferentiableAt.div
  DifferentiableAt.inv

  DifferentiableOn.add
  DifferentiableOn.sub
  DifferentiableOn.neg
  DifferentiableOn.mul
  DifferentiableOn.smul
  DifferentiableOn.div
  DifferentiableOn.inv


-- special function
attribute [fun_prop]
  Differentiable.exp
  Differentiable.log
  Differentiable.pow

  DifferentiableAt.exp
  DifferentiableAt.log
  DifferentiableAt.pow

  DifferentiableOn.exp
  DifferentiableOn.log
  DifferentiableOn.pow
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Differentiable/Variant4323fd293e8e25f6d5a52c599cfc83e2237741b3b3f5595067e9fb6fe65e9ffb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Differentiable/Variant4323fd293e8e25f6d5a52c599cfc83e2237741b3b3f5595067e9fb6fe65e9ffb.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a692cd880dab521366a7686b158392db46d96a88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
