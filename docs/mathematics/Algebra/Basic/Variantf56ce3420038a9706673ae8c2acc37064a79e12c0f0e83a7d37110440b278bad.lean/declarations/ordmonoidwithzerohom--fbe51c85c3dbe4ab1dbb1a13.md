# ordMonoidWithZeroHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a3807b6dcd305fb84348d5d391660ca012d0e106c217dd0b8cf1e5ac073b6971",
  "kind": "def",
  "lexical_name": "ordMonoidWithZeroHom",
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
  "slug": "ordmonoidwithzerohom--fbe51c85c3dbe4ab1dbb1a13",
  "source": {
    "blob": "6b79d08d5d6c88dbf95d1a4a3bc7f29673052eda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 239,
    "path": "GRWTSK/Algebra/Basic/Variantf56ce3420038a9706673ae8c2acc37064a79e12c0f0e83a7d37110440b278bad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fbe51c85c3dbe4ab1dbb1a1309d2503f6bda49fd298590417102630e0e176df4",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantf56ce3420038a9706673ae8c2acc37064a79e12c0f0e83a7d37110440b278bad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a3807b6dcd305fb84348d5d391660ca012d0e106c217dd0b8cf1e5ac073b6971`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ordMonoidWithZeroHom [Nontrivial R] : R →*₀ ℤᵐ⁰ where
  toFun x := if x ∈ nonZeroDivisors R
             then (ENat.recTopCoe 0 (WithZero.coe <| Multiplicative.ofAdd ·) (Ring.ord R x))
             else 0
  map_zero' := by simp [nonZeroDivisors, exists_ne]
  map_one' := by simp [nonZeroDivisors]
  map_mul' := by
    intro x y
    split_ifs with _ _ b
    · rw [ord_mul _ b]
      generalize ord R x = x'
      generalize ord R y = y'
      cases x' <;> cases y'
      on_goal 4 =>
        simp only [← ENat.natCast_add, ENat.recTopCoe_natCast, Nat.cast_add (R := ℤ),
          ofAdd_add, WithZero.coe_mul]
      all_goals simp
    all_goals simp_all [mul_mem_nonZeroDivisors]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantf56ce3420038a9706673ae8c2acc37064a79e12c0f0e83a7d37110440b278bad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantf56ce3420038a9706673ae8c2acc37064a79e12c0f0e83a7d37110440b278bad.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b79d08d5d6c88dbf95d1a4a3bc7f29673052eda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
