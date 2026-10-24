# toLimit_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:548d95a1-4a3f-4044-423d-b66fa981fd03",
  "kind": "theorem",
  "lexical_name": "toLimit_injective",
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
  "slug": "tolimit-injective--4512203efbecd34895f53bfa",
  "source": {
    "blob": "a36ad6240f15b03c1038f538854444c5dbb4f68b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 121,
    "path": "GRWTSK/Topology/GeneralTopology/Limits/Varianta86f334acfa2e34beee4c6f74df6ed6ed9341a51b30bbdfcd203f5f5eaff220c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4512203efbecd34895f53bfa3688d33b8bbda434acb1960163e0cacb23ae75e7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Limits/Varianta86f334acfa2e34beee4c6f74df6ed6ed9341a51b30bbdfcd203f5f5eaff220c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:548d95a1-4a3f-4044-423d-b66fa981fd03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toLimit_injective (P : ProfiniteGrp.{u}) : Function.Injective (toLimit P) := by
  show Function.Injective (toLimit P).hom.toMonoidHom
  rw [← MonoidHom.ker_eq_bot_iff, Subgroup.eq_bot_iff_forall]
  intro x h
  by_contra xne1
  rcases exist_openNormalSubgroup_sub_open_nhds_of_one (isOpen_compl_singleton)
    (Set.mem_compl_singleton_iff.mpr fun a => xne1 a.symm) with ⟨H, hH⟩
  exact hH ((QuotientGroup.eq_one_iff x).mp (congrFun (Subtype.val_inj.mpr h) H)) rfl

/-- The topological group isomorphism between a profinite group and the projective limit of
its quotients by open normal subgroups -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Limits/Varianta86f334acfa2e34beee4c6f74df6ed6ed9341a51b30bbdfcd203f5f5eaff220c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Limits/Varianta86f334acfa2e34beee4c6f74df6ed6ed9341a51b30bbdfcd203f5f5eaff220c.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a36ad6240f15b03c1038f538854444c5dbb4f68b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
