# Subgroup.le_zpowers_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c3a8db1f-ed79-a50b-665a-53d341e77ee5",
  "kind": "theorem",
  "lexical_name": "Subgroup.le_zpowers_iff",
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
  "slug": "subgroup-le-zpowers-iff--2558ad2975da3cdba117ad11",
  "source": {
    "blob": "072c0cbea625bb5e215ed251590b6cd50413aadd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 304,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2558ad2975da3cdba117ad1171bbc73837c9817f774ed541b05fd25b07157d00",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3a8db1f-ed79-a50b-665a-53d341e77ee5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 304–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Subgroup.le_zpowers_iff (g : G) (H : Subgroup G) :
    H ≤ Subgroup.zpowers g ↔ ∃ n : ℕ, H = Subgroup.zpowers (g ^ n) := by
  refine ⟨fun h ↦ ?_, ?_⟩
  · obtain ⟨x, rfl⟩ := (H.isCyclic_iff_exists_zpowers_eq_top).mp (isCyclic_of_le h)
    obtain ⟨k, rfl⟩ := mem_zpowers_iff.mp <| h (mem_zpowers x)
    obtain ⟨n, rfl | rfl⟩ := Int.eq_nat_or_neg k
    · exact ⟨n, by rw [zpow_natCast]⟩
    · exact ⟨n, by simp⟩
  · rintro ⟨k, rfl⟩
    exact zpowers_le_of_mem <| npow_mem_zpowers g k

open Finset Nat

section Classical

open scoped Classical in
@[to_additive IsAddCyclic.card_nsmul_eq_zero_le]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4.lean#L304).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `072c0cbea625bb5e215ed251590b6cd50413aadd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
