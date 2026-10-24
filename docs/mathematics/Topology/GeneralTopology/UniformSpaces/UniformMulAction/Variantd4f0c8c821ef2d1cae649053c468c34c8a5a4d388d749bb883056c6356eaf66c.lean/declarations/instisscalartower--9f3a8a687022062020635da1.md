# instIsScalarTower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3c0d437f23e719ac318784fd0eb43aa925d0f8adcdd347adb7443c9b57a7d5e3",
  "kind": "instance",
  "lexical_name": "instIsScalarTower",
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
  "slug": "instisscalartower--9f3a8a687022062020635da1",
  "source": {
    "blob": "9c9d077e22095d0fd89b7422be65a26b9d6e4c78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 216,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variantd4f0c8c821ef2d1cae649053c468c34c8a5a4d388d749bb883056c6356eaf66c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9f3a8a687022062020635da131a9bda9fd8f861f90484ea5f0613644af63d775",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variantd4f0c8c821ef2d1cae649053c468c34c8a5a4d388d749bb883056c6356eaf66c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3c0d437f23e719ac318784fd0eb43aa925d0f8adcdd347adb7443c9b57a7d5e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instIsScalarTower [SMul N X] [SMul M N] [UniformContinuousConstSMul M X]
    [UniformContinuousConstSMul N X] [IsScalarTower M N X] : IsScalarTower M N (Completion X) :=
  ⟨fun m n x => by
    have : _ = (_ : Completion X → Completion X) :=
      map_comp (uniformContinuous_const_smul m) (uniformContinuous_const_smul n)
    refine Eq.trans ?_ (congr_fun this.symm x)
    exact congr_arg (fun f => Completion.map f x) (funext (smul_assoc _ _))⟩

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variantd4f0c8c821ef2d1cae649053c468c34c8a5a4d388d749bb883056c6356eaf66c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variantd4f0c8c821ef2d1cae649053c468c34c8a5a4d388d749bb883056c6356eaf66c.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c9d077e22095d0fd89b7422be65a26b9d6e4c78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
