# unitsEquivUnitsType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:85b93e89ed48ee9e889214368217a8eaaab0faf05be4b644506064386b6efe29",
  "kind": "def",
  "lexical_name": "unitsEquivUnitsType",
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
  "slug": "unitsequivunitstype--f226fcce0d3d1f7d2a2e9c56",
  "source": {
    "blob": "c38ff4ff41d5845b867d42c3efaa78f19f8f11bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 135,
    "path": "GRWTSK/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f226fcce0d3d1f7d2a2e9c567bc572faee6abb45be95d62f3db0bc2450f48a64",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:85b93e89ed48ee9e889214368217a8eaaab0faf05be4b644506064386b6efe29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def unitsEquivUnitsType (S : Submonoid M) : S.units ≃* Sˣ where
  toFun := fun ⟨_, h⟩ => ⟨⟨_, h.1⟩, ⟨_, h.2⟩, S.mk_mul_mk_inv_eq_one h, S.mk_inv_mul_mk_eq_one h⟩
  invFun := fun x => ⟨⟨_, _, S.coe_val_mul_coe_inv_val, S.coe_inv_val_mul_coe_val⟩, ⟨x.1.2, x.2.2⟩⟩
  left_inv := fun _ => rfl
  right_inv := fun _ => rfl
  map_mul' := fun _ _ => rfl

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c38ff4ff41d5845b867d42c3efaa78f19f8f11bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
