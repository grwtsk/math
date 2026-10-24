# normalizer_sup_eq_top'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f3d3582c5d4b73803bd00c4bc3ddfe98f0eaedb1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 494,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/19/192cc749d2625302f8712e878d0ff1a69aff54cd975129ec3a2ea59a8a884ef9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eaa68e36-2bef-990c-0115-f2d13a1b455c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c6355e2e-4061-68e5-9d1b-7b991d242ed2",
  "kind": "theorem",
  "lexical_name": "normalizer_sup_eq_top'",
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
  "slug": "normalizer-sup-eq-top--0638c4a90085249bd153627b",
  "source": {
    "blob": "f3d3582c5d4b73803bd00c4bc3ddfe98f0eaedb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 508,
    "line": 494,
    "path": "GRWTSK/Algebra/GroupTheory/Sylow/Variant192cc749d2625302f8712e878d0ff1a69aff54cd975129ec3a2ea59a8a884ef9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0638c4a90085249bd153627bb14a55ef80b6ce5fd60adb853f47441c8c0ecff2",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Sylow/Variant192cc749d2625302f8712e878d0ff1a69aff54cd975129ec3a2ea59a8a884ef9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6355e2e-4061-68e5-9d1b-7b991d242ed2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 494–508.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizer_sup_eq_top' {p : ℕ} [Fact p.Prime] {N : Subgroup G} [N.Normal]
    [Finite (Sylow p N)] (P : Sylow p G) (hP : P ≤ N) : P.normalizer ⊔ N = ⊤ := by
  rw [← normalizer_sup_eq_top (P.subtype hP), P.coe_subtype, subgroupOf_map_subtype,
    inf_of_le_left hP]

end Sylow

end InfiniteSylow

open Equiv Equiv.Perm Finset Function List QuotientGroup

universe u

variable {G : Type u} [Group G]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Sylow/Variant192cc749d2625302f8712e878d0ff1a69aff54cd975129ec3a2ea59a8a884ef9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Sylow/Variant192cc749d2625302f8712e878d0ff1a69aff54cd975129ec3a2ea59a8a884ef9.lean#L494).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3d3582c5d4b73803bd00c4bc3ddfe98f0eaedb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
