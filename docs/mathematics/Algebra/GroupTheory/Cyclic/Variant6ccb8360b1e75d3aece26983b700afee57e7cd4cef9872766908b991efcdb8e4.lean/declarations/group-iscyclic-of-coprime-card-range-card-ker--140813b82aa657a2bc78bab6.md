# Group.isCyclic_of_coprime_card_range_card_ker

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:59f9e49d-22f3-3165-3f94-f6d74c5879eb",
  "kind": "theorem",
  "lexical_name": "Group.isCyclic_of_coprime_card_range_card_ker",
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
  "slug": "group-iscyclic-of-coprime-card-range-card-ker--140813b82aa657a2bc78bab6",
  "source": {
    "blob": "cca7580ea1cb569efd4b423d4326cb4e02e905bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 869,
    "line": 852,
    "path": "GRWTSK/Algebra/GroupTheory/Cyclic/Variant6ccb8360b1e75d3aece26983b700afee57e7cd4cef9872766908b991efcdb8e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:140813b82aa657a2bc78bab6b07ee3a2d64839892edc177c6f2fc1bb89d68361",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Cyclic/Variant6ccb8360b1e75d3aece26983b700afee57e7cd4cef9872766908b991efcdb8e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59f9e49d-22f3-3165-3f94-f6d74c5879eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 852–869.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[to_additive] theorem Group.isCyclic_of_coprime_card_range_card_ker {M N : Type*}
    [CommGroup M] [Group N] (f : M →* N) (h : (Nat.card f.ker).Coprime (Nat.card f.range))
    [IsCyclic f.ker] [IsCyclic f.range] : IsCyclic M := by
  cases (finite_or_infinite f.ker).symm
  · rw [Nat.card_eq_zero_of_infinite, Nat.coprime_zero_left] at h
    rw [← f.range.eq_bot_iff_card, f.range_eq_bot_iff, ← f.ker_eq_top_iff] at h
    rwa [← Subgroup.topEquiv.isCyclic, ← h]
  cases (finite_or_infinite f.range).symm
  · rw [Nat.card_eq_zero_of_infinite (α := f.range), Nat.coprime_zero_right] at h
    rwa [(f.ofInjective (f.ker_eq_bot_iff.mp (f.ker.eq_bot_of_card_eq h))).isCyclic]
  have := f.finite_iff_finite_ker_range.mpr ⟨‹_›, ‹_›⟩
  rw [IsCyclic.iff_exponent_eq_card]
  apply dvd_antisymm Group.exponent_dvd_nat_card
  rw [← f.ker.card_mul_index, Subgroup.index_ker]
  apply h.mul_dvd_of_dvd_of_dvd <;> rw [← IsCyclic.exponent_eq_card]
  · exact Monoid.exponent_dvd_of_monoidHom _ f.ker.subtype_injective
  · exact MonoidHom.exponent_dvd f.rangeRestrict_surjective

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Cyclic/Variant6ccb8360b1e75d3aece26983b700afee57e7cd4cef9872766908b991efcdb8e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Cyclic/Variant6ccb8360b1e75d3aece26983b700afee57e7cd4cef9872766908b991efcdb8e4.lean#L852).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cca7580ea1cb569efd4b423d4326cb4e02e905bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
