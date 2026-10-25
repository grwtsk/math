# subobjectLE_trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1a607d837db68dd20558d558dc96eba39d57d23f017016f52a4ace1528b70f5b",
  "kind": "def",
  "lexical_name": "subobjectLE_trans",
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
  "slug": "subobjectle-trans--5db95f874cc59e78f503a76f",
  "source": {
    "blob": "168b416b794a7ace175308b7dbeb133e459042b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 327,
    "line": 302,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BoundaryCalculus/Variante633dc8bb072a0bd0980abce4d0fe3cb4890d0ecd6ab70ce718e959d7cdfe386.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5db95f874cc59e78f503a76f0aceda0bb0566bf4d856c8a34b55a8362aa9d97e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/BoundaryCalculus/Variante633dc8bb072a0bd0980abce4d0fe3cb4890d0ecd6ab70ce718e959d7cdfe386.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1a607d837db68dd20558d558dc96eba39d57d23f017016f52a4ace1528b70f5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–327.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def subobjectLE_trans
    {Obj : Type u}
    [Category Obj]
    {X : Obj}
    {S T U : Subobject X}
    (hST : SubobjectLE S T)
    (hTU : SubobjectLE T U) :
    SubobjectLE S U := by
  refine ⟨hST.hom ≫ hTU.hom, ?_⟩
  calc
    (hST.hom ≫ hTU.hom) ≫ U.arrow
        = hST.hom ≫ (hTU.hom ≫ U.arrow) := by
          rw [Category.assoc]
    _ = hST.hom ≫ T.arrow := by
          rw [hTU.comm]
    _ = S.arrow := hST.comm

/--
Categorical-logic boundary calculus.

If the certificate subobject is included in the claim subobject, then any
boundary-crossing morphism that factors through the certificate subobject also
factors through the claim subobject.

This constructs the factorization, so it is a `def`, not a `theorem`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/BoundaryCalculus/Variante633dc8bb072a0bd0980abce4d0fe3cb4890d0ecd6ab70ce718e959d7cdfe386.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BoundaryCalculus/Variante633dc8bb072a0bd0980abce4d0fe3cb4890d0ecd6ab70ce718e959d7cdfe386.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `168b416b794a7ace175308b7dbeb133e459042b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
