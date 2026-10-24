# _root_.MulAut.characteristic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9b08c87efb3da7c2e66ce88f4961e55551c04e0d0b399479461e564968cb8ee9",
  "kind": "def",
  "lexical_name": "_root_.MulAut.characteristic",
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
  "slug": "root-mulaut-characteristic--51194f70a86a4b50b9dce526",
  "source": {
    "blob": "e5e4f4febdacfcd9055276f4632df153795b6122",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 376,
    "line": 362,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variante8aabba3afe2b34f8712e9d70e3c05270acb31cb8a9045426b91dec58c44a81b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:51194f70a86a4b50b9dce526e3bb0c779b5bbe4a1ba692e15ef1a024f977f165",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variante8aabba3afe2b34f8712e9d70e3c05270acb31cb8a9045426b91dec58c44a81b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9b08c87efb3da7c2e66ce88f4961e55551c04e0d0b399479461e564968cb8ee9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 362–376.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.MulAut.characteristic (H : Subgroup G) [H.Characteristic] : MulAut G →* MulAut H where
  toFun φ :=
    { toFun := fun h => ⟨φ h, characteristic_iff_le_comap.mp inferInstance φ h.2⟩
      invFun := fun h => ⟨φ.symm h, characteristic_iff_le_comap.mp inferInstance φ.symm h.2⟩
      left_inv h := Subtype.ext (φ.symm_apply_apply h)
      right_inv h := Subtype.ext (φ.apply_symm_apply h)
      map_mul' h k := Subtype.ext (map_mul φ (h : G) (k : G)) }
  map_one' := rfl
  map_mul' _ _ := rfl

/-- If `H` is a characteristic subgroup of `G` and `K` is a characteristic subgroup of `H`, then
`K` is a characteristic subgroup of `G`. -/
@[to_additive
  /-- If `H` is a characteristic additive subgroup of `G` and `K` is a characteristic additive
  subgroup of `H`, then `K` is a characteristic additive subgroup of `G`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variante8aabba3afe2b34f8712e9d70e3c05270acb31cb8a9045426b91dec58c44a81b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variante8aabba3afe2b34f8712e9d70e3c05270acb31cb8a9045426b91dec58c44a81b.lean#L362).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5e4f4febdacfcd9055276f4632df153795b6122` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
