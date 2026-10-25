# exists_isIdempotentElem_mul_eq_zero_of_ker_isNilpotent_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:726e831f-a245-eb81-1e67-2577937a76b5",
  "kind": "theorem",
  "lexical_name": "exists_isIdempotentElem_mul_eq_zero_of_ker_isNilpotent_aux",
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
  "slug": "exists-isidempotentelem-mul-eq-zero-of-ker-isnilpotent-aux--cfb5fa54d45fc3ae51980f2e",
  "source": {
    "blob": "8601d8539a4174e4cedb926c7e45962ec96d81de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 212,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Idempotents/Variantbec1e4d0010f867ad93a8e101359027f15baebc424dd043f4030bba762decf1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cfb5fa54d45fc3ae51980f2e4cc5b04f0b191e37ab44f920f662e1128fd87a73",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Idempotents/Variantbec1e4d0010f867ad93a8e101359027f15baebc424dd043f4030bba762decf1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:726e831f-a245-eb81-1e67-2577937a76b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_isIdempotentElem_mul_eq_zero_of_ker_isNilpotent_aux
    (h : ∀ x ∈ RingHom.ker f, IsNilpotent x)
    (e₁ : S) (he : e₁ ∈ f.range) (he₁ : IsIdempotentElem e₁)
    (e₂ : R) (he₂ : IsIdempotentElem e₂) (he₁e₂ : e₁ * f e₂ = 0) :
    ∃ e' : R, IsIdempotentElem e' ∧ f e' = e₁ ∧ e' * e₂ = 0 := by
  obtain ⟨e₁, rfl⟩ := he
  cases subsingleton_or_nontrivial R
  · exact ⟨_, Subsingleton.elim _ _, rfl, Subsingleton.elim _ _⟩
  let a := e₁ - e₁ * e₂
  have ha : f a = f e₁ := by rw [map_sub, map_mul, he₁e₂, sub_zero]
  have ha' : a * e₂ = 0 := by rw [sub_mul, mul_assoc, he₂.eq, sub_self]
  have hx' : a - a ^ 2 ∈ RingHom.ker f := by
    simp [RingHom.mem_ker, mul_sub, pow_two, ha, he₁.eq]
  obtain ⟨n, hn⟩ := h _ hx'
  refine ⟨_, isIdempotentElem_one_sub_one_sub_pow_pow _ _ hn, ?_, ?_⟩
  · rcases n with - | n
    · simp at hn
    simp only [map_sub, map_one, map_pow, ha, he₁.pow_succ_eq,
      he₁.one_sub.pow_succ_eq, sub_sub_cancel]
  · obtain ⟨k, hk⟩ := (Commute.one_left (MulOpposite.op <| 1 - a ^ n)).sub_dvd_pow_sub_pow n
    apply_fun MulOpposite.unop at hk
    have : 1 - (1 - a ^ n) ^ n = MulOpposite.unop k * a ^ n := by simpa using hk
    rw [this, mul_assoc]
    rcases n with - | n
    · simp at hn
    rw [pow_succ, mul_assoc, ha', mul_zero, mul_zero]

/-- Orthogonal idempotents lift along nil ideals. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Idempotents/Variantbec1e4d0010f867ad93a8e101359027f15baebc424dd043f4030bba762decf1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Idempotents/Variantbec1e4d0010f867ad93a8e101359027f15baebc424dd043f4030bba762decf1c.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8601d8539a4174e4cedb926c7e45962ec96d81de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
