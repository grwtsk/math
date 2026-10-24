# hasLinearOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c81a370801d8802825e725b6e65673ced1cb03f1f8d3e0c7f006e5bad7d02cc0",
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
  "slug": "haslinearorder--d4ad4e99cdfdc34a379023e1",
  "source": {
    "blob": "c37f4b7d87f73259d6818e5868467d9cce7e62d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 105,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Notation/Variantd714810da4127498264348f1ef583cc5af6166e9bf86cb29a0fb8914a1e02128.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d4ad4e99cdfdc34a379023e19e640a952cc6ffd258f453f899496e208bc5d17c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Notation/Variantd714810da4127498264348f1ef583cc5af6166e9bf86cb29a0fb8914a1e02128.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c81a370801d8802825e725b6e65673ced1cb03f1f8d3e0c7f006e5bad7d02cc0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–122.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Notation/Variantd714810da4127498264348f1ef583cc5af6166e9bf86cb29a0fb8914a1e02128.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Notation/Variantd714810da4127498264348f1ef583cc5af6166e9bf86cb29a0fb8914a1e02128.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c37f4b7d87f73259d6818e5868467d9cce7e62d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
