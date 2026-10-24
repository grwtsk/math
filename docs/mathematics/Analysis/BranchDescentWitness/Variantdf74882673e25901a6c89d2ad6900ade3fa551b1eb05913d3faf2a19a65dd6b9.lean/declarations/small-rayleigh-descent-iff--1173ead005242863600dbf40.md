# small_rayleigh_descent_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5cf653ca-dae7-2f4c-0a2c-861692e495f9",
  "kind": "theorem",
  "lexical_name": "small_rayleigh_descent_iff",
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
  "slug": "small-rayleigh-descent-iff--1173ead005242863600dbf40",
  "source": {
    "blob": "5ccefab6bacf618fecf4182f542b2367444656c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 276,
    "path": "GRWTSK/Analysis/BranchDescentWitness/Variantdf74882673e25901a6c89d2ad6900ade3fa551b1eb05913d3faf2a19a65dd6b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1173ead005242863600dbf40c335556550772773c8cf3006435665d5280ae6a8",
  "verification": {
    "reference": "docs/verification/Analysis/BranchDescentWitness/Variantdf74882673e25901a6c89d2ad6900ade3fa551b1eb05913d3faf2a19a65dd6b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5cf653ca-dae7-2f4c-0a2c-861692e495f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem small_rayleigh_descent_iff (a d ell H : ℝ) {radius : ℝ} (hradius : 0 < radius) :
    (∃ e : ℝ, 0 < |e| ∧ |e| < radius ∧ 0 < denominator ell H e ∧
      increment a d ell H e < 0) ↔ a ≠ 0 ∨ d < 0 := by
  constructor
  · rintro ⟨e, _he0, _her, hden, hlt⟩
    by_cases ha : a ≠ 0
    · exact Or.inl ha
    · right
      have ha0 : a = 0 := not_ne_iff.mp ha
      by_contra hd
      have hd0 : 0 ≤ d := le_of_not_gt hd
      have hn : 0 ≤ increment a d ell H e := by
        unfold increment
        rw [ha0]
        simp only [mul_zero, zero_add]
        exact div_nonneg (mul_nonneg (sq_nonneg e) hd0) hden.le
      exact not_lt_of_ge hn hlt
  · rintro (ha | hd)
    · exact exists_small_rayleigh_descent_of_first ha hradius
    · by_cases ha : a = 0
      · subst a
        exact exists_small_rayleigh_descent_of_second hd hradius
      · exact exists_small_rayleigh_descent_of_first ha hradius

/-- The scalar step becomes a state witness only after the actual path is proved
admissible and its accounting is identified with the exact quotient increment. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/BranchDescentWitness/Variantdf74882673e25901a6c89d2ad6900ade3fa551b1eb05913d3faf2a19a65dd6b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/BranchDescentWitness/Variantdf74882673e25901a6c89d2ad6900ade3fa551b1eb05913d3faf2a19a65dd6b9.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ccefab6bacf618fecf4182f542b2367444656c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
