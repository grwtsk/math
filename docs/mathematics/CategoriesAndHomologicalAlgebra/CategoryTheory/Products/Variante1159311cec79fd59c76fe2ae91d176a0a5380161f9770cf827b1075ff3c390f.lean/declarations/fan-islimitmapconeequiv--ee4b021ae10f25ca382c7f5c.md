# Fan.isLimitMapConeEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4685dc2d54520b88630aaaff808e998b22155bfd68b125442e5ac40b5d87001a",
  "kind": "def",
  "lexical_name": "Fan.isLimitMapConeEquiv",
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
  "slug": "fan-islimitmapconeequiv--ee4b021ae10f25ca382c7f5c",
  "source": {
    "blob": "473a8aaf5f691f920e6a9c829217e83749c62899",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 483,
    "line": 474,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variante1159311cec79fd59c76fe2ae91d176a0a5380161f9770cf827b1075ff3c390f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ee4b021ae10f25ca382c7f5c2fb38d4df0a7c05ae303a16ad1682b4b4fd3b350",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variante1159311cec79fd59c76fe2ae91d176a0a5380161f9770cf827b1075ff3c390f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4685dc2d54520b88630aaaff808e998b22155bfd68b125442e5ac40b5d87001a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 474–483.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Fan.isLimitMapConeEquiv (F : C ⥤ D) {ι : Type*} (X : ι → C) (c : Fan X) :
    IsLimit (F.mapCone c) ≃ IsLimit (Fan.mk _ fun i ↦ F.map (c.proj i)) :=
  (IsLimit.postcomposeHomEquiv Discrete.natIsoFunctor (F.mapCone c)).symm.trans <|
    IsLimit.equivIsoLimit (Cone.ext (Iso.refl _))

end Comparison

variable (C) in
/-- An abbreviation for `Π J, HasLimitsOfShape (Discrete J) C` -/
@[to_dual /-- An abbreviation for `Π J, HasColimitsOfShape (Discrete J) C` -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variante1159311cec79fd59c76fe2ae91d176a0a5380161f9770cf827b1075ff3c390f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variante1159311cec79fd59c76fe2ae91d176a0a5380161f9770cf827b1075ff3c390f.lean#L474).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `473a8aaf5f691f920e6a9c829217e83749c62899` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
