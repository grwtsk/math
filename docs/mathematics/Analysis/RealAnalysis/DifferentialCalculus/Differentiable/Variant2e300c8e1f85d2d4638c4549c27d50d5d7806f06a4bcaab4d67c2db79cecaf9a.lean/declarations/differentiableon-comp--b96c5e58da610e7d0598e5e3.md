# DifferentiableOn.comp'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:72365854-0f03-6ca8-b452-02f26423d41a",
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
  "slug": "differentiableon-comp--b96c5e58da610e7d0598e5e3",
  "source": {
    "blob": "5a3f08344f1002f6a37548dd74959027d25d53fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 54,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Differentiable/Variant2e300c8e1f85d2d4638c4549c27d50d5d7806f06a4bcaab4d67c2db79cecaf9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b96c5e58da610e7d0598e5e3e20feb0e2929179e2674730fccf10325f845ed14",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Differentiable/Variant2e300c8e1f85d2d4638c4549c27d50d5d7806f06a4bcaab4d67c2db79cecaf9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72365854-0f03-6ca8-b452-02f26423d41a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–145.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Differentiable/Variant2e300c8e1f85d2d4638c4549c27d50d5d7806f06a4bcaab4d67c2db79cecaf9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Differentiable/Variant2e300c8e1f85d2d4638c4549c27d50d5d7806f06a4bcaab4d67c2db79cecaf9a.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a3f08344f1002f6a37548dd74959027d25d53fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
