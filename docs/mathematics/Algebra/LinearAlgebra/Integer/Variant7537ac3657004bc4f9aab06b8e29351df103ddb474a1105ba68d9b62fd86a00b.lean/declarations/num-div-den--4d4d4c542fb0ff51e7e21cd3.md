# num_div_den

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fc3e3de0-008b-62f7-0251-6561864c43cb",
  "kind": "lemma",
  "lexical_name": "num_div_den",
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
  "slug": "num-div-den--4d4d4c542fb0ff51e7e21cd3",
  "source": {
    "blob": "86f406e3a9c638fe4f14e50a5019f2584ea63c3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 81,
    "path": "GRWTSK/Algebra/LinearAlgebra/Integer/Variant7537ac3657004bc4f9aab06b8e29351df103ddb474a1105ba68d9b62fd86a00b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d4d4c542fb0ff51e7e21cd37169ac16e7726ec85743151570e31a69379c5a9b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Integer/Variant7537ac3657004bc4f9aab06b8e29351df103ddb474a1105ba68d9b62fd86a00b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc3e3de0-008b-62f7-0251-6561864c43cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma num_div_den (A : Matrix m n ℚ) (i : m) (j : n) :
    A.num i j / A.den = A i j := by
  obtain ⟨k, hk⟩ := den_dvd_iff.mp (dvd_refl A.den) i j
  rw [Matrix.num, map_apply, smul_apply, smul_eq_mul, mul_comm,
    div_eq_iff <| Nat.cast_ne_zero.mpr A.den_ne_zero, hk, Nat.cast_mul, ← mul_assoc,
    Rat.mul_den_eq_num, ← Int.cast_natCast k, ← Int.cast_mul, Rat.num_intCast]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Integer/Variant7537ac3657004bc4f9aab06b8e29351df103ddb474a1105ba68d9b62fd86a00b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Integer/Variant7537ac3657004bc4f9aab06b8e29351df103ddb474a1105ba68d9b62fd86a00b.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86f406e3a9c638fe4f14e50a5019f2584ea63c3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
