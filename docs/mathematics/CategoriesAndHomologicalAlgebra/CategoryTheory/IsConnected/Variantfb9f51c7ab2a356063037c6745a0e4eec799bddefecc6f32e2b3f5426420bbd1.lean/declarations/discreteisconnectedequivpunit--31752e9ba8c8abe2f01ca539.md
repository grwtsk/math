# discreteIsConnectedEquivPUnit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3a628ab5417d20133924e407159c0653f8654e6da837f851760b76ca0e8387b2",
  "kind": "def",
  "lexical_name": "discreteIsConnectedEquivPUnit",
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
  "slug": "discreteisconnectedequivpunit--31752e9ba8c8abe2f01ca539",
  "source": {
    "blob": "1d0b6356e13ba451d6dcffde5372eb24266f587d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 446,
    "line": 434,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variantfb9f51c7ab2a356063037c6745a0e4eec799bddefecc6f32e2b3f5426420bbd1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:31752e9ba8c8abe2f01ca53968f2f644af09137baa852d7a58746bacca0a684b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variantfb9f51c7ab2a356063037c6745a0e4eec799bddefecc6f32e2b3f5426420bbd1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3a628ab5417d20133924e407159c0653f8654e6da837f851760b76ca0e8387b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 434–446.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def discreteIsConnectedEquivPUnit {α : Type u₁} [IsConnected (Discrete α)] : α ≃ PUnit :=
  Discrete.equivOfEquivalence.{u₁, u₁}
    { functor := Functor.star (Discrete α)
      inverse := Discrete.functor fun _ => Classical.arbitrary _
      unitIso := isoConstant _ (Classical.arbitrary _)
      counitIso := Functor.punitExt _ _ }

variable {C : Type w₂} [Category.{w₁} C]

/-- For objects `X Y : C`, any natural transformation `α : const X ⟶ const Y` from a connected
category must be constant.
This is the key property of connected categories which we use to establish properties about limits.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variantfb9f51c7ab2a356063037c6745a0e4eec799bddefecc6f32e2b3f5426420bbd1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variantfb9f51c7ab2a356063037c6745a0e4eec799bddefecc6f32e2b3f5426420bbd1.lean#L434).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d0b6356e13ba451d6dcffde5372eb24266f587d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
