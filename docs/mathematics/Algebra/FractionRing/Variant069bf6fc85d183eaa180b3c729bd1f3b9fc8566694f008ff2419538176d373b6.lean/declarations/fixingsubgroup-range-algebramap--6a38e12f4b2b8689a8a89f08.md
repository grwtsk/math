# fixingSubgroup_range_algebraMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ad19bda6-9f75-776f-536e-857d54534e2f",
  "kind": "theorem",
  "lexical_name": "fixingSubgroup_range_algebraMap",
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
  "slug": "fixingsubgroup-range-algebramap--6a38e12f4b2b8689a8a89f08",
  "source": {
    "blob": "d2c0d188183e955f15d59a427ae4405ad72efd52",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 716,
    "line": 700,
    "path": "GRWTSK/Algebra/FractionRing/Variant069bf6fc85d183eaa180b3c729bd1f3b9fc8566694f008ff2419538176d373b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a38e12f4b2b8689a8a89f088e23aa0c9ef7c1ad80c84468163b672820bd1cfe",
  "verification": {
    "reference": "docs/verification/Algebra/FractionRing/Variant069bf6fc85d183eaa180b3c729bd1f3b9fc8566694f008ff2419538176d373b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad19bda6-9f75-776f-536e-857d54534e2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 700–716.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fixingSubgroup_range_algebraMap :
    fixingSubgroup G (Set.range (algebraMap A B)) =
      fixingSubgroup G (Set.range (algebraMap K L)) := by
  simp_rw [Subgroup.ext_iff, mem_fixingSubgroup_iff, Set.forall_mem_range]
  refine fun g ↦ ⟨fun h x ↦ ?_, fun h x ↦ FaithfulSMul.algebraMap_injective B L ?_⟩
  · obtain ⟨a, b, _, rfl⟩ := IsFractionRing.div_surjective A x
    simp_rw [map_div₀, ← IsScalarTower.algebraMap_apply,
      IsScalarTower.algebraMap_apply A B L, smul_div₀', ← algebraMap.smul', h]
  · simp_rw [algebraMap.smul', ← IsScalarTower.algebraMap_apply,
      IsScalarTower.algebraMap_apply A K L, h]

end MulAction

end IsFractionRing

section algebraMap_injective

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FractionRing/Variant069bf6fc85d183eaa180b3c729bd1f3b9fc8566694f008ff2419538176d373b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FractionRing/Variant069bf6fc85d183eaa180b3c729bd1f3b9fc8566694f008ff2419538176d373b6.lean#L700).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2c0d188183e955f15d59a427ae4405ad72efd52` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
