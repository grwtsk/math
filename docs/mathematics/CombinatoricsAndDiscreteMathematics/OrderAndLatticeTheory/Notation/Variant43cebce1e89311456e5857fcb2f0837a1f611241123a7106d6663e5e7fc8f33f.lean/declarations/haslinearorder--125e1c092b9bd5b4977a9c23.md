# hasLinearOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7b0f1ad9216edd3d3618a2ce00a3a0c3b82bee781c029a55fc19c5454a198119",
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
  "slug": "haslinearorder--125e1c092b9bd5b4977a9c23",
  "source": {
    "blob": "f65d59e35fda74f4c3f59810a9ad4cdc0fef2206",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 100,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Notation/Variant43cebce1e89311456e5857fcb2f0837a1f611241123a7106d6663e5e7fc8f33f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:125e1c092b9bd5b4977a9c23daeb85fcd90a8e8e57eb184c55dd91566c980ad2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Notation/Variant43cebce1e89311456e5857fcb2f0837a1f611241123a7106d6663e5e7fc8f33f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7b0f1ad9216edd3d3618a2ce00a3a0c3b82bee781c029a55fc19c5454a198119`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private meta def hasLinearOrder (u : Level) (α : Q(Type u)) (cls : Q(Type u → Type u))
    (toCls : Q((α : Type u) → $(linearOrderExpr u) α → $cls α)) (inst : Q($cls $α)) :
    MetaM Bool := do
  try
    withNewMCtxDepth do
    -- `isDefEq` may call type class search to instantiate `mvar`, so we need the local instances.
    -- Unfortunately, the local instances are not present in delaboration.
    -- See https://leanprover.zulipchat.com/#narrow/channel/270676-lean4/topic/Bug.3F.20Local.20instances.20not.20populated.20during.20delaboration/with/545766705
    withLocalInstances (← getLCtx).decls.toList.reduceOption do
      let mvar ← mkFreshExprMVarQ q($(linearOrderExpr u) $α) (kind := .synthetic)
      let inst' : Q($cls $α) := q($toCls $α $mvar)
      withImplicit <| isDefEq inst inst'
  catch _ =>
    -- For instance, if `LinearOrder` is not yet imported.
    return false

/-- Delaborate `max x y` into `x ⊔ y` if the type is not a linear order. -/
@[delab app.Max.max]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Notation/Variant43cebce1e89311456e5857fcb2f0837a1f611241123a7106d6663e5e7fc8f33f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Notation/Variant43cebce1e89311456e5857fcb2f0837a1f611241123a7106d6663e5e7fc8f33f.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f65d59e35fda74f4c3f59810a9ad4cdc0fef2206` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
