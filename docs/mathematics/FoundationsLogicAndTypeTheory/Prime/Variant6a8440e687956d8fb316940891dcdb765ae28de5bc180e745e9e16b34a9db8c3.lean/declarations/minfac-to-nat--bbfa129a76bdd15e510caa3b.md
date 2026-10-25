# minFac_to_nat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:78c9bee4-1b2b-1a3f-dbc1-ae895efe50aa",
  "kind": "theorem",
  "lexical_name": "minFac_to_nat",
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
  "slug": "minfac-to-nat--bbfa129a76bdd15e510caa3b",
  "source": {
    "blob": "dfa877dcf830418707e2715d984b5d2da708f119",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 72,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Prime/Variant6a8440e687956d8fb316940891dcdb765ae28de5bc180e745e9e16b34a9db8c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bbfa129a76bdd15e510caa3bb0729b34f98f8d68158aca5d4715623edbe3c44a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Prime/Variant6a8440e687956d8fb316940891dcdb765ae28de5bc180e745e9e16b34a9db8c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78c9bee4-1b2b-1a3f-dbc1-ae895efe50aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem minFac_to_nat (n : PosNum) : (minFac n : ℕ) = Nat.minFac n := by
  obtain - | n := n
  · simp [minFac]
  · rw [minFac, Nat.minFac_eq, ite_eq_right]
    swap
    · simp [← two_mul]
    rw [minFacAux_to_nat]
    · rfl
    simp only [cast_one, cast_bit1]
    rw [Nat.sqrt_lt]
    calc
      (n : ℕ) + (n : ℕ) + 1 ≤ (n : ℕ) + (n : ℕ) + (n : ℕ) := by simp
      _ = (n : ℕ) * (1 + 1 + 1) := by simp only [mul_add, mul_one]
      _ < _ := by simp [mul_lt_mul]
  · rw [minFac, Nat.minFac_eq, ite_eq_left]
    · rfl
    simp [← two_mul]

/-- Primality predicate for a `PosNum`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Prime/Variant6a8440e687956d8fb316940891dcdb765ae28de5bc180e745e9e16b34a9db8c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Prime/Variant6a8440e687956d8fb316940891dcdb765ae28de5bc180e745e9e16b34a9db8c3.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dfa877dcf830418707e2715d984b5d2da708f119` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
