# comapMk'OrderIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:974e5568d2eee15aaab8501de41c959e67b3b249fe41ff3c169fcb6fb8ae6f3a",
  "kind": "def",
  "lexical_name": "comapMk'OrderIso",
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
  "slug": "comapmk-orderiso--60847950bfd843c4ee20228e",
  "source": {
    "blob": "a93a59bba6b604056d5152bef719eabaa3503d5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 401,
    "line": 389,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:60847950bfd843c4ee20228e0937f70d16143c2e5f4fd5aa589a654eba9efc04",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:974e5568d2eee15aaab8501de41c959e67b3b249fe41ff3c169fcb6fb8ae6f3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 389–401.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def comapMk'OrderIso (N : Subgroup G) [hn : N.Normal] :
    Subgroup (G ⧸ N) ≃o Set.Ici N where
  toFun H' := ⟨Subgroup.comap (mk' N) H', le_comap_mk' N _⟩
  invFun H := Subgroup.map (mk' N) H
  left_inv H' := Subgroup.map_comap_eq_self <| by simp
  right_inv := fun ⟨H, hH⟩ => Subtype.ext <| by simpa
  map_rel_iff' := Subgroup.comap_le_comap_of_surjective <| mk'_surjective _

end CorrespTheorem

section trivial

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean#L389).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a93a59bba6b604056d5152bef719eabaa3503d5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
