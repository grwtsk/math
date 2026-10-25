# cast_mk_of_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f65cee5-e065-3144-010c-d13a8c3897d3",
  "kind": "theorem",
  "lexical_name": "cast_mk_of_ne_zero",
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
  "slug": "cast-mk-of-ne-zero--872039c5dc8a7cf77cd0283c",
  "source": {
    "blob": "4d294172e30dc81ac97582fedd355cea3333b7e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 87,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:872039c5dc8a7cf77cd0283ca11c2ab3a2002e71a262c94a712272b994708b29",
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

Occurrence: `result:4f65cee5-e065-3144-010c-d13a8c3897d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cast_mk_of_ne_zero (a b : ℤ) (b0 : (b : α) ≠ 0) : (a /. b : α) = a / b := by
  have b0' : b ≠ 0 := by
    refine' mt _ b0
    simp (config := { contextual := true })
  cases' e : a /. b with n d h c
  have d0 : (d : α) ≠ 0 := by
    intro d0
    have dd := den_dvd a b
    cases' show (d : ℤ) ∣ b by rwa [e] at dd with k ke
    have : (b : α) = (d : α) * (k : α) := by rw [ke, Int.cast_mul, Int.cast_ofNat]
    rw [d0, zero_mul] at this
    contradiction
  rw [num_den'] at e
  have := congr_arg ((↑) : ℤ → α)
    ((divInt_eq_iff b0' <| ne_of_gt <| Int.coe_nat_pos.2 h.bot_lt).1 e)
  rw [Int.cast_mul, Int.cast_mul, Int.cast_ofNat] at this
  -- Porting note: was `symm`
  apply Eq.symm
  rw [cast_def, div_eq_mul_inv, eq_div_iff_mul_eq d0, mul_assoc, (d.commute_cast _).eq, ← mul_assoc,
    this, mul_assoc, mul_inv_cancel b0, mul_one]
#align rat.cast_mk_of_ne_zero Rat.cast_mk_of_ne_zero

@[norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Cast/Variant37d99fbf1b2554179394d93ef82dbd6e9b430bf3a2bed1f32873053ef7a8f19c.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d294172e30dc81ac97582fedd355cea3333b7e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
