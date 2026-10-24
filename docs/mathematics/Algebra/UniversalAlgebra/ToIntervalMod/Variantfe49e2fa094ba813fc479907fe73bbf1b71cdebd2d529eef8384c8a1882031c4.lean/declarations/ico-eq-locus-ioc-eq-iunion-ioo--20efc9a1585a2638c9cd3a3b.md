# Ico_eq_locus_Ioc_eq_iUnion_Ioo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e935378-8861-77d3-85d9-9b7c9ecaaf3f",
  "kind": "theorem",
  "lexical_name": "Ico_eq_locus_Ioc_eq_iUnion_Ioo",
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
  "slug": "ico-eq-locus-ioc-eq-iunion-ioo--20efc9a1585a2638c9cd3a3b",
  "source": {
    "blob": "211821c47ae16d2ebeb3103f7c766fd61a123b02",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 594,
    "line": 588,
    "path": "GRWTSK/Algebra/UniversalAlgebra/ToIntervalMod/Variantfe49e2fa094ba813fc479907fe73bbf1b71cdebd2d529eef8384c8a1882031c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:20efc9a1585a2638c9cd3a3b20f7fa6457a701abb66ca1b6458eaa79a4aea461",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/ToIntervalMod/Variantfe49e2fa094ba813fc479907fe73bbf1b71cdebd2d529eef8384c8a1882031c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e935378-8861-77d3-85d9-9b7c9ecaaf3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 588–594.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ico_eq_locus_Ioc_eq_iUnion_Ioo :
    { b | toIcoMod hp a b = toIocMod hp a b } = ⋃ z : ℤ, Set.Ioo (a + z • p) (a + p + z • p) := by
  ext1
  simp_rw [Set.mem_setOf, Set.mem_iUnion, ← Set.sub_mem_Ioo_iff_left, ←
    not_modEq_iff_toIcoMod_eq_toIocMod, modEq_iff_forall_notMem_Ioo_mod hp, not_forall,
    Classical.not_not]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/ToIntervalMod/Variantfe49e2fa094ba813fc479907fe73bbf1b71cdebd2d529eef8384c8a1882031c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/ToIntervalMod/Variantfe49e2fa094ba813fc479907fe73bbf1b71cdebd2d529eef8384c8a1882031c4.lean#L588).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `211821c47ae16d2ebeb3103f7c766fd61a123b02` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
