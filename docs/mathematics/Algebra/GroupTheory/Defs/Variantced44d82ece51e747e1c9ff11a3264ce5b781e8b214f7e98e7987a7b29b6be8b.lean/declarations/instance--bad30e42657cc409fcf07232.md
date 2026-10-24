# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:132cd25eba4ab1db92b0e66144df5e01aac218365c6b2dcefa4548afe479c8e4",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--bad30e42657cc409fcf07232",
  "source": {
    "blob": "d3b7ba8c2bf2ce5d8ce9f29372e9f32273bc215b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 290,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variantced44d82ece51e747e1c9ff11a3264ce5b781e8b214f7e98e7987a7b29b6be8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bad30e42657cc409fcf07232f2f84d07e552cb7c128d1f174b9b64d918277ebd",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variantced44d82ece51e747e1c9ff11a3264ce5b781e8b214f7e98e7987a7b29b6be8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:132cd25eba4ab1db92b0e66144df5e01aac218365c6b2dcefa4548afe479c8e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 290–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : SetLike (Subgroup G) G where
  coe s := s.carrier
  coe_injective' p q h := by
    obtain ⟨⟨⟨hp,_⟩,_⟩,_⟩ := p
    obtain ⟨⟨⟨hq,_⟩,_⟩,_⟩ := q
    congr

initialize_simps_projections Subgroup (carrier → coe, as_prefix coe)
initialize_simps_projections AddSubgroup (carrier → coe, as_prefix coe)

/-- The actual `Subgroup` obtained from an element of a `SubgroupClass` -/
@[to_additive (attr := simps) "The actual `AddSubgroup` obtained from an element of a
`AddSubgroupClass`"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variantced44d82ece51e747e1c9ff11a3264ce5b781e8b214f7e98e7987a7b29b6be8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variantced44d82ece51e747e1c9ff11a3264ce5b781e8b214f7e98e7987a7b29b6be8b.lean#L290).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3b7ba8c2bf2ce5d8ce9f29372e9f32273bc215b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
