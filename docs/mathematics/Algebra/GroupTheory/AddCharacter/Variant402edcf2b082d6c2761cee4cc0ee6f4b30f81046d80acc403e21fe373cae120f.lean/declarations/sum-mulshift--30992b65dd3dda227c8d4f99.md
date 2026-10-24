# sum_mulShift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f2b27809-2399-cd5a-1e50-ce8005a1d56d",
  "kind": "theorem",
  "lexical_name": "sum_mulShift",
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
  "slug": "sum-mulshift--30992b65dd3dda227c8d4f99",
  "source": {
    "blob": "662110ff9188a0f32e66e48f25cb84054e8f30cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 261,
    "path": "GRWTSK/Algebra/GroupTheory/AddCharacter/Variant402edcf2b082d6c2761cee4cc0ee6f4b30f81046d80acc403e21fe373cae120f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30992b65dd3dda227c8d4f996afc19ff57a8a088cb796e34c1148231f2c160e8",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/AddCharacter/Variant402edcf2b082d6c2761cee4cc0ee6f4b30f81046d80acc403e21fe373cae120f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2b27809-2399-cd5a-1e50-ce8005a1d56d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_mulShift {R : Type*} [CommRing R] [Fintype R] [DecidableEq R]
    {R' : Type*} [CommRing R'] [IsDomain R'] {ψ : AddChar R R'} (b : R)
    (hψ : IsPrimitive ψ) : ∑ x : R, ψ (x * b) = if b = 0 then Fintype.card R else 0 := by
  split_ifs with h
  · -- case `b = 0`
    simp only [h, mul_zero, map_zero_eq_one, Finset.sum_const, Nat.smul_one_eq_cast]
    rfl
  · -- case `b ≠ 0`
    simp_rw [mul_comm]
    exact mod_cast sum_eq_zero_of_ne_one (hψ h)

/-!
### Complex-valued additive characters
-/

section Ring

variable {R : Type*} [CommRing R]

/-- Post-composing an additive character to `ℂ` with complex conjugation gives the inverse
character. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/AddCharacter/Variant402edcf2b082d6c2761cee4cc0ee6f4b30f81046d80acc403e21fe373cae120f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/AddCharacter/Variant402edcf2b082d6c2761cee4cc0ee6f4b30f81046d80acc403e21fe373cae120f.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `662110ff9188a0f32e66e48f25cb84054e8f30cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
