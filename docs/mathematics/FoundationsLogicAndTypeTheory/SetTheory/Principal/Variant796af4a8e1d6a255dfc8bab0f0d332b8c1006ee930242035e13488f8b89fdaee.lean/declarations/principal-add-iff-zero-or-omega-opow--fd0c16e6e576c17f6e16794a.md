# principal_add_iff_zero_or_omega_opow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f29394ec-eb41-81b9-d8c7-e5ed97eba391",
  "kind": "theorem",
  "lexical_name": "principal_add_iff_zero_or_omega_opow",
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
  "slug": "principal-add-iff-zero-or-omega-opow--fd0c16e6e576c17f6e16794a",
  "source": {
    "blob": "1e28024ff52cd065c19a29702d4d3be546b77ff3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 212,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant796af4a8e1d6a255dfc8bab0f0d332b8c1006ee930242035e13488f8b89fdaee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd0c16e6e576c17f6e16794a15f2f8c82d21e384835810b3ca0326b94ece7216",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant796af4a8e1d6a255dfc8bab0f0d332b8c1006ee930242035e13488f8b89fdaee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f29394ec-eb41-81b9-d8c7-e5ed97eba391`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem principal_add_iff_zero_or_omega_opow {o : Ordinal} :
    Principal (· + ·) o ↔ o = 0 ∨ ∃ a, o = (omega^a) := by
  rcases eq_or_ne o 0 with (rfl | ho)
  · simp only [principal_zero, Or.inl]
  · rw [principal_add_iff_add_left_eq_self]
    simp only [ho, false_or_iff]
    refine'
      ⟨fun H => ⟨_, ((lt_or_eq_of_le (opow_log_le_self _ ho)).resolve_left fun h => _).symm⟩,
        fun ⟨b, e⟩ => e.symm ▸ fun a => add_omega_opow⟩
    have := H _ h
    have := lt_opow_succ_log_self one_lt_omega o
    rw [opow_succ, lt_mul_of_limit omega_isLimit] at this
    rcases this with ⟨a, ao, h'⟩
    rcases lt_omega.1 ao with ⟨n, rfl⟩
    clear ao
    revert h'
    apply not_lt_of_le
    suffices e : (omega^log omega o) * ↑n + o = o
    · simpa only [e] using le_add_right ((omega^log omega o) * ↑n) o
    induction' n with n IH
    · simp [Nat.cast_zero, mul_zero, zero_add]
    simp only [Nat.cast_succ, mul_add_one, add_assoc, this, IH]
#align ordinal.principal_add_iff_zero_or_omega_opow Ordinal.principal_add_iff_zero_or_omega_opow

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant796af4a8e1d6a255dfc8bab0f0d332b8c1006ee930242035e13488f8b89fdaee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant796af4a8e1d6a255dfc8bab0f0d332b8c1006ee930242035e13488f8b89fdaee.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e28024ff52cd065c19a29702d4d3be546b77ff3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
