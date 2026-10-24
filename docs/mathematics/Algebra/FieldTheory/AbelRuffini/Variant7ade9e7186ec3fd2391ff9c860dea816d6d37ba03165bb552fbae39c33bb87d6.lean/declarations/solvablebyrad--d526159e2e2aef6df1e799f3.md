# solvableByRad

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2e21731e3e26760476acc6a9a117b7da62ce8ed3715b84e9aadbf3117b952ca7",
  "kind": "def",
  "lexical_name": "solvableByRad",
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
  "slug": "solvablebyrad--d526159e2e2aef6df1e799f3",
  "source": {
    "blob": "fa55cb792a8c141ee4bff880e3d529ac4d62e9a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 234,
    "path": "GRWTSK/Algebra/FieldTheory/AbelRuffini/Variant7ade9e7186ec3fd2391ff9c860dea816d6d37ba03165bb552fbae39c33bb87d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d526159e2e2aef6df1e799f38f920c496771b25c9c1556df9d4fa9d9481ef224",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/AbelRuffini/Variant7ade9e7186ec3fd2391ff9c860dea816d6d37ba03165bb552fbae39c33bb87d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2e21731e3e26760476acc6a9a117b7da62ce8ed3715b84e9aadbf3117b952ca7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def solvableByRad : IntermediateField F E where
  carrier := IsSolvableByRad F
  zero_mem' := by
    change IsSolvableByRad F 0
    convert IsSolvableByRad.base (E := E) (0 : F); rw [RingHom.map_zero]
  add_mem' := by apply IsSolvableByRad.add
  one_mem' := by
    change IsSolvableByRad F 1
    convert IsSolvableByRad.base (E := E) (1 : F); rw [RingHom.map_one]
  mul_mem' := by apply IsSolvableByRad.mul
  inv_mem' := IsSolvableByRad.inv
  algebraMap_mem' := IsSolvableByRad.base
#align solvable_by_rad solvableByRad

namespace solvableByRad

variable {F} {E} {α : E}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/FieldTheory/AbelRuffini/Variant7ade9e7186ec3fd2391ff9c860dea816d6d37ba03165bb552fbae39c33bb87d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FieldTheory/AbelRuffini/Variant7ade9e7186ec3fd2391ff9c860dea816d6d37ba03165bb552fbae39c33bb87d6.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa55cb792a8c141ee4bff880e3d529ac4d62e9a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
