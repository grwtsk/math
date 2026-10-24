# subgroupCongr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0523e76315123c97849e762e688384caa8b2180a46cda740999e3e418131553a",
  "kind": "def",
  "lexical_name": "subgroupCongr",
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
  "slug": "subgroupcongr--c421085ff03e6271ec87b2ec",
  "source": {
    "blob": "c7f820fabda9b5f16f3179f6636d7aae9c8d2ea5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3498,
    "line": 3489,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant9750d0e4a826cbbe98b6977fd2f737183ba6a17c479ebe5b307565918a27e306.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c421085ff03e6271ec87b2ecc9a985d8d6e4e22ac19e0017c33c44cf3f0c764c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant9750d0e4a826cbbe98b6977fd2f737183ba6a17c479ebe5b307565918a27e306.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0523e76315123c97849e762e688384caa8b2180a46cda740999e3e418131553a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3489–3498.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def subgroupCongr (h : H = K) : H ≃* K :=
  { Equiv.setCongr <| congr_arg _ h with map_mul' := fun _ _ => rfl }
#align mul_equiv.subgroup_congr MulEquiv.subgroupCongr
#align add_equiv.add_subgroup_congr AddEquiv.addSubgroupCongr

/-- A subgroup is isomorphic to its image under an isomorphism. If you only have an injective map,
use `Subgroup.equiv_map_of_injective`. -/
@[to_additive
      "An additive subgroup is isomorphic to its image under an isomorphism. If you only
      have an injective map, use `AddSubgroup.equiv_map_of_injective`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant9750d0e4a826cbbe98b6977fd2f737183ba6a17c479ebe5b307565918a27e306.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant9750d0e4a826cbbe98b6977fd2f737183ba6a17c479ebe5b307565918a27e306.lean#L3489).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7f820fabda9b5f16f3179f6636d7aae9c8d2ea5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
