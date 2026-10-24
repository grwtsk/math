# mul_le_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63a86a60-84ea-3a5f-d48a-d2648e8fbbd8",
  "kind": "lemma",
  "lexical_name": "mul_le_pow",
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
  "slug": "mul-le-pow--7848f3f6019de14fd1fdbda5",
  "source": {
    "blob": "02979e68bba168e7c996f0a2c069d472301120b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 110,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Ring/Variant7807065273f966e9136c7d821c44126d47227be044e3b144e8cb86a201b87c43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7848f3f6019de14fd1fdbda5c619edd18877ec06ab3916e2e5bca532da2c4ae6",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Ring/Variant7807065273f966e9136c7d821c44126d47227be044e3b144e8cb86a201b87c43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63a86a60-84ea-3a5f-d48a-d2648e8fbbd8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mul_le_pow {a : ℕ} (ha : a ≠ 1) (b : ℕ) :
    a * b ≤ a ^ b := by
  induction b generalizing a with
  | zero => simp
  | succ b hb =>
    rw [mul_add_one, pow_succ]
    rcases a with (_|_|a)
    · simp
    · simp at ha
    · rw [mul_add_one, mul_add_one, add_comm (_ * a), add_assoc _ (_ * a)]
      rcases b with (_|b)
      · simp [add_assoc, add_comm]
      refine add_le_add (hb (by simp)) ?_
      rw [pow_succ']
      refine (le_add_left ?_ ?_).trans' ?_
      exact le_mul_of_one_le_right' (one_le_pow _ _ (by simp))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Ring/Variant7807065273f966e9136c7d821c44126d47227be044e3b144e8cb86a201b87c43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Ring/Variant7807065273f966e9136c7d821c44126d47227be044e3b144e8cb86a201b87c43.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02979e68bba168e7c996f0a2c069d472301120b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
