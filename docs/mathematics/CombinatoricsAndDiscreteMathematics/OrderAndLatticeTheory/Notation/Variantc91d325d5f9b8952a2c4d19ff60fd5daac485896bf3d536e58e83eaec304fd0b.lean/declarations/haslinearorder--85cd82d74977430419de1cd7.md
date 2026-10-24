# hasLinearOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:423cf45368ce7f498330b2da577e0f4fc1d68fce53684425e7e2668e72f07a1d",
  "kind": "def",
  "lexical_name": "hasLinearOrder",
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
  "slug": "haslinearorder--85cd82d74977430419de1cd7",
  "source": {
    "blob": "583c8d8de1a4bc954d7d848a2101396ce45fe5ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 97,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Notation/Variantc91d325d5f9b8952a2c4d19ff60fd5daac485896bf3d536e58e83eaec304fd0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:85cd82d74977430419de1cd7132a8b6033ba9bc449dac34df43f74e3be0be7d7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Notation/Variantc91d325d5f9b8952a2c4d19ff60fd5daac485896bf3d536e58e83eaec304fd0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:423cf45368ce7f498330b2da577e0f4fc1d68fce53684425e7e2668e72f07a1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def hasLinearOrder (u : Level) (α : Q(Type u)) (cls : Q(Type u → Type u))
    (toCls : Q((α : Type u) → $(linearOrderExpr u) α → $cls α)) (inst : Q($cls $α)) :
    MetaM Bool := do
  try
    withNewMCtxDepth do
    -- `isDefEq` may call type class search to instantiate `mvar`, so we need the local instances
    -- In Lean 4.19 the pretty printer clears local instances, so we re-add them here.
    -- TODO(Jovan): remove
    withLocalInstances (← getLCtx).decls.toList.reduceOption do
      let mvar ← mkFreshExprMVarQ q($(linearOrderExpr u) $α) (kind := .synthetic)
      let inst' : Q($cls $α) := q($toCls $α $mvar)
      isDefEq inst inst'
  catch _ =>
    -- For instance, if `LinearOrder` is not yet imported.
    return false

/-- Delaborate `max x y` into `x ⊔ y` if the type is not a linear order. -/
@[delab app.Max.max]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Notation/Variantc91d325d5f9b8952a2c4d19ff60fd5daac485896bf3d536e58e83eaec304fd0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Notation/Variantc91d325d5f9b8952a2c4d19ff60fd5daac485896bf3d536e58e83eaec304fd0b.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `583c8d8de1a4bc954d7d848a2101396ce45fe5ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
