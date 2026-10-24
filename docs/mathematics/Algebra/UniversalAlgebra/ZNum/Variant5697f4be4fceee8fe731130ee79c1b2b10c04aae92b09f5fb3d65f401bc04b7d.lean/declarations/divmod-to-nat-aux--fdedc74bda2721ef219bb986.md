# divMod_to_nat_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f97bc99a-c755-c22a-43b1-bd87842ab370",
  "kind": "theorem",
  "lexical_name": "divMod_to_nat_aux",
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
  "slug": "divmod-to-nat-aux--fdedc74bda2721ef219bb986",
  "source": {
    "blob": "df0d1f2d31e8fdc9d954932682693054b726890e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 550,
    "line": 530,
    "path": "GRWTSK/Algebra/UniversalAlgebra/ZNum/Variant5697f4be4fceee8fe731130ee79c1b2b10c04aae92b09f5fb3d65f401bc04b7d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fdedc74bda2721ef219bb986a7424b344580b6a439a2542170ef51b9408be6ed",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/ZNum/Variant5697f4be4fceee8fe731130ee79c1b2b10c04aae92b09f5fb3d65f401bc04b7d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f97bc99a-c755-c22a-43b1-bd87842ab370`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 530–550.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem divMod_to_nat_aux {n d : PosNum} {q r : Num} (h₁ : (r : ℕ) + d * ((q : ℕ) + q) = n)
    (h₂ : (r : ℕ) < 2 * d) :
    ((divModAux d q r).2 + d * (divModAux d q r).1 : ℕ) = ↑n ∧ ((divModAux d q r).2 : ℕ) < d := by
  unfold divModAux
  have : ∀ {r₂}, Num.ofZNum' (Num.sub' r (Num.pos d)) = some r₂ ↔ (r : ℕ) = r₂ + d := by
    intro r₂
    apply Num.mem_ofZNum'.trans
    rw [← ZNum.to_int_inj, Num.cast_toZNum, Num.cast_sub', sub_eq_iff_eq_add, ← Int.natCast_inj]
    simp
  rcases e : Num.ofZNum' (Num.sub' r (Num.pos d)) with - | r₂
  · rw [Num.cast_bit0, two_mul]
    refine ⟨h₁, lt_of_not_ge fun h => ?_⟩
    obtain ⟨r₂, e'⟩ := Nat.le.dest h
    rw [← Num.to_of_nat r₂, add_comm] at e'
    cases e.symm.trans (this.2 e'.symm)
  · have := this.1 e
    simp only [Num.cast_bit1]
    constructor
    · rwa [two_mul, add_comm _ 1, mul_add, mul_one, ← add_assoc, ← this]
    · rwa [this, two_mul, add_lt_add_iff_right] at h₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/ZNum/Variant5697f4be4fceee8fe731130ee79c1b2b10c04aae92b09f5fb3d65f401bc04b7d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/ZNum/Variant5697f4be4fceee8fe731130ee79c1b2b10c04aae92b09f5fb3d65f401bc04b7d.lean#L530).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df0d1f2d31e8fdc9d954932682693054b726890e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
