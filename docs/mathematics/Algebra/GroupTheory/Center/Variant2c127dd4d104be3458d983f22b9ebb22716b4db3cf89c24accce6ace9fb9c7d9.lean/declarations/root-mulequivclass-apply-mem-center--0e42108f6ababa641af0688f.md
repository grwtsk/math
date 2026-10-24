# _root_.MulEquivClass.apply_mem_center

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e5acb6b6-3793-e4a4-ca2c-b39c58bd2855",
  "kind": "theorem",
  "lexical_name": "_root_.MulEquivClass.apply_mem_center",
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
  "slug": "root-mulequivclass-apply-mem-center--0e42108f6ababa641af0688f",
  "source": {
    "blob": "addceff42489071ce8a71480f67b6006dfbd4e60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 134,
    "path": "GRWTSK/Algebra/GroupTheory/Center/Variant2c127dd4d104be3458d983f22b9ebb22716b4db3cf89c24accce6ace9fb9c7d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e42108f6ababa641af0688f8809571caebc67dc2703367e8883b68d0a54447c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Center/Variant2c127dd4d104be3458d983f22b9ebb22716b4db3cf89c24accce6ace9fb9c7d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5acb6b6-3793-e4a4-ca2c-b39c58bd2855`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[to_additive] theorem _root_.MulEquivClass.apply_mem_center {F} [EquivLike F M N] [Mul M] [Mul N]
    [MulEquivClass F M N] (e : F) {x : M} (hx : x ∈ Set.center M) : e x ∈ Set.center N := by
  let e := MulEquivClass.toMulEquiv e
  show e x ∈ Set.center N
  constructor <;>
  (intros; apply e.symm.injective;
    simp only [map_mul, e.symm_apply_apply, (isMulCentral_iff _).mp hx])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Center/Variant2c127dd4d104be3458d983f22b9ebb22716b4db3cf89c24accce6ace9fb9c7d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Center/Variant2c127dd4d104be3458d983f22b9ebb22716b4db3cf89c24accce6ace9fb9c7d9.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `addceff42489071ce8a71480f67b6006dfbd4e60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
