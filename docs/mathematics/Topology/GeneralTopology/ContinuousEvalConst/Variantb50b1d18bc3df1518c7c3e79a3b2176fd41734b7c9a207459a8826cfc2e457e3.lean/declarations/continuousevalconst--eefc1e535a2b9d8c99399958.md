# ContinuousEvalConst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a9b7dec5a686529c7b19f351d2bcc7592ac1461145c81d201e217ff0b2b4e488",
  "kind": "class",
  "lexical_name": "ContinuousEvalConst",
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
  "slug": "continuousevalconst--eefc1e535a2b9d8c99399958",
  "source": {
    "blob": "3d51c146c1080ba5fed30f5d490988cbbf1307e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 35,
    "path": "GRWTSK/Topology/GeneralTopology/ContinuousEvalConst/Variantb50b1d18bc3df1518c7c3e79a3b2176fd41734b7c9a207459a8826cfc2e457e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eefc1e535a2b9d8c9939995845a453f4d5acc5ba5f61661097ceb901db204ed7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContinuousEvalConst/Variantb50b1d18bc3df1518c7c3e79a3b2176fd41734b7c9a207459a8826cfc2e457e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a9b7dec5a686529c7b19f351d2bcc7592ac1461145c81d201e217ff0b2b4e488`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class ContinuousEvalConst (F : Type*) (α X : outParam Type*) [FunLike F α X]
    [TopologicalSpace F] [TopologicalSpace X] : Prop where
  continuous_eval_const (x : α) : Continuous fun f : F ↦ f x

export ContinuousEvalConst (continuous_eval_const)

section ContinuousEvalConst

variable {F α X Z : Type*} [FunLike F α X] [TopologicalSpace F] [TopologicalSpace X]
  [ContinuousEvalConst F α X] [TopologicalSpace Z] {f : Z → F} {s : Set Z} {z : Z}

/-- If a type `F'` of bundled morphisms admits a continuous projection
to a type satisfying `ContinuousEvalConst`,
then `F'` satisfies this predicate too.

The word "forget" in the name is motivated by the term "forgetful functor". -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContinuousEvalConst/Variantb50b1d18bc3df1518c7c3e79a3b2176fd41734b7c9a207459a8826cfc2e457e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContinuousEvalConst/Variantb50b1d18bc3df1518c7c3e79a3b2176fd41734b7c9a207459a8826cfc2e457e3.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d51c146c1080ba5fed30f5d490988cbbf1307e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
