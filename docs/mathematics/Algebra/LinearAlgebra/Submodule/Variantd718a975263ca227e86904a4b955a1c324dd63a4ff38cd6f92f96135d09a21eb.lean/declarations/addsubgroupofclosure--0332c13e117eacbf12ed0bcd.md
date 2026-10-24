# addSubgroupOfClosure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6b9be1bcf4388c2f36451031ce0da18d621af75469a9edf5bae972efd1e4c2ed",
  "kind": "def",
  "lexical_name": "addSubgroupOfClosure",
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
  "slug": "addsubgroupofclosure--0332c13e117eacbf12ed0bcd",
  "source": {
    "blob": "9694d1ae6ba2445ce4b82955c058fa7b512bee51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 211,
    "path": "GRWTSK/Algebra/LinearAlgebra/Submodule/Variantd718a975263ca227e86904a4b955a1c324dd63a4ff38cd6f92f96135d09a21eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0332c13e117eacbf12ed0bcd1a45623be23dff37b685f25fb34d36949fd19a35",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Submodule/Variantd718a975263ca227e86904a4b955a1c324dd63a4ff38cd6f92f96135d09a21eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6b9be1bcf4388c2f36451031ce0da18d621af75469a9edf5bae972efd1e4c2ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def addSubgroupOfClosure (h : A = .closure (Set.range b)) :
    Basis ι ℤ A.toIntSubmodule :=
  (b.restrictScalars ℤ).map <|
    LinearEquiv.ofEq _ _
      (by rw [h, ← Submodule.span_int_eq_addSubgroupClosure, toAddSubgroup_toIntSubmodule])

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Submodule/Variantd718a975263ca227e86904a4b955a1c324dd63a4ff38cd6f92f96135d09a21eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Submodule/Variantd718a975263ca227e86904a4b955a1c324dd63a4ff38cd6f92f96135d09a21eb.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9694d1ae6ba2445ce4b82955c058fa7b512bee51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
