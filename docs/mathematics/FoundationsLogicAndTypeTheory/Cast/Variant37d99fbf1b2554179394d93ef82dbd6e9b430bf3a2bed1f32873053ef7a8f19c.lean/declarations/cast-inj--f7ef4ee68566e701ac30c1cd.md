# cast_inj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9675c8d9-7278-3dd6-b78b-a7fee3c3221d",
  "kind": "theorem",
  "lexical_name": "cast_inj",
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
  "slug": "cast-inj--f7ef4ee68566e701ac30c1cd",
  "source": {
    "blob": "4d294172e30dc81ac97582fedd355cea3333b7e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 199,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7ef4ee68566e701ac30c1cd60b9285cba13e90d5564247a6e6ea76cbf422f02",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9675c8d9-7278-3dd6-b78b-a7fee3c3221d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cast_inj [CharZero α] : ∀ {m n : ℚ}, (m : α) = n ↔ m = n
  | ⟨n₁, d₁, d₁0, c₁⟩, ⟨n₂, d₂, d₂0, c₂⟩ => by
    refine' ⟨fun h => _, congr_arg _⟩
    have d₁a : (d₁ : α) ≠ 0 := Nat.cast_ne_zero.2 d₁0
    have d₂a : (d₂ : α) ≠ 0 := Nat.cast_ne_zero.2 d₂0
    rw [num_den', num_den'] at h ⊢
    rw [cast_mk_of_ne_zero, cast_mk_of_ne_zero] at h <;> simp [d₁0, d₂0] at h ⊢
    rwa [eq_div_iff_mul_eq d₂a, division_def, mul_assoc, (d₁.cast_commute (d₂ : α)).inv_left₀.eq, ←
      mul_assoc, ← division_def, eq_comm, eq_div_iff_mul_eq d₁a, eq_comm, ← Int.cast_ofNat d₁, ←
      Int.cast_mul, ← Int.cast_ofNat d₂, ← Int.cast_mul, Int.cast_inj, ← mkRat_eq_iff d₁0 d₂0] at h
#align rat.cast_inj Rat.cast_inj

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d294172e30dc81ac97582fedd355cea3333b7e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
