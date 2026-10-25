# toENat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d813f8b4808a8b138e40d0885d3c7deb26fd4c9fae99f7b4d15b7d7820d9416c",
  "kind": "def",
  "lexical_name": "toENat",
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
  "slug": "toenat--3a8d9f3cf9cfd38cb05c5e7f",
  "source": {
    "blob": "1dab481e27d4242e62eb257ad136bd39afe4b877",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 192,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/ENat/Variant6ea5551e27b563ccec64483cecf4ef0ae7b8ebaba6d1e001bcd44c237a23caca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3a8d9f3cf9cfd38cb05c5e7faf1c51856ede00e2e41ffa52445376eab4a49e42",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/ENat/Variant6ea5551e27b563ccec64483cecf4ef0ae7b8ebaba6d1e001bcd44c237a23caca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d813f8b4808a8b138e40d0885d3c7deb26fd4c9fae99f7b4d15b7d7820d9416c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def toENat : Cardinal.{u} →+*o ℕ∞ where
  toFun := toENatAux
  map_one' := toENatAux_nat 1
  map_mul' x y := by
    wlog hle : x ≤ y; · rw [mul_comm, this y x (le_of_not_ge hle), mul_comm]
    cases lt_or_ge y ℵ₀ with
    | inl hy =>
      lift x to ℕ using hle.trans_lt hy; lift y to ℕ using hy
      simp only [← Nat.cast_mul, toENatAux_nat]
    | inr hy =>
      rcases eq_or_ne x 0 with rfl | hx
      · simp
      · simp only [toENatAux_eq_top hy]
        rw [toENatAux_eq_top, ENat.mul_top]
        · rwa [Ne, toENatAux_eq_zero]
        · exact le_mul_of_one_le_of_le (Cardinal.one_le_iff_ne_zero.2 hx) hy
  map_add' x y := by
    wlog hle : x ≤ y; · rw [add_comm, this y x (le_of_not_ge hle), add_comm]
    cases lt_or_ge y ℵ₀ with
    | inl hy =>
      lift x to ℕ using hle.trans_lt hy; lift y to ℕ using hy
      simp only [← Nat.cast_add, toENatAux_nat]
    | inr hy =>
      simp only [toENatAux_eq_top hy, add_top]
      exact toENatAux_eq_top <| le_add_left hy
  map_zero' := toENatAux_zero
  monotone' := toENatAux_gc.monotone_u

/-- The coercion `Cardinal.ofENat` and the projection `Cardinal.toENat` form a Galois connection.
See also `Cardinal.gciENat`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/ENat/Variant6ea5551e27b563ccec64483cecf4ef0ae7b8ebaba6d1e001bcd44c237a23caca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/ENat/Variant6ea5551e27b563ccec64483cecf4ef0ae7b8ebaba6d1e001bcd44c237a23caca.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1dab481e27d4242e62eb257ad136bd39afe4b877` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
