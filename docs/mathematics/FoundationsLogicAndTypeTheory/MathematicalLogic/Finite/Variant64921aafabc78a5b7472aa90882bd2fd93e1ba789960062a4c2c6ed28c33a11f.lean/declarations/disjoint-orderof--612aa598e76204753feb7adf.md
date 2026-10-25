# Disjoint.orderOf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d5060641-700f-41e7-ff9e-ad4cdfef8093",
  "kind": "theorem",
  "lexical_name": "Disjoint.orderOf",
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
  "slug": "disjoint-orderof--612aa598e76204753feb7adf",
  "source": {
    "blob": "571b82abc0cbbb3958596705012d663553bf2ce7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 152,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant64921aafabc78a5b7472aa90882bd2fd93e1ba789960062a4c2c6ed28c33a11f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:612aa598e76204753feb7adfb53e8133dbbf7134949b530468de5ad4486380c6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant64921aafabc78a5b7472aa90882bd2fd93e1ba789960062a4c2c6ed28c33a11f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5060641-700f-41e7-ff9e-ad4cdfef8093`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec theorem Disjoint.orderOf {σ τ : Perm α} (hστ : Disjoint σ τ) :
    orderOf (σ * τ) = Nat.lcm (orderOf σ) (orderOf τ) :=
  haveI h : ∀ n : ℕ, (σ * τ) ^ n = 1 ↔ σ ^ n = 1 ∧ τ ^ n = 1 := fun n => by
    rw [hστ.commute.mul_pow, Disjoint.mul_eq_one_iff (hστ.pow_disjoint_pow n n)]
  Nat.dvd_antisymm hστ.commute.orderOf_mul_dvd_lcm
    (Nat.lcm_dvd
      (orderOf_dvd_of_pow_eq_one ((h (orderOf (σ * τ))).mp (pow_orderOf_eq_one (σ * τ))).1)
      (orderOf_dvd_of_pow_eq_one ((h (orderOf (σ * τ))).mp (pow_orderOf_eq_one (σ * τ))).2))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant64921aafabc78a5b7472aa90882bd2fd93e1ba789960062a4c2c6ed28c33a11f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant64921aafabc78a5b7472aa90882bd2fd93e1ba789960062a4c2c6ed28c33a11f.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `571b82abc0cbbb3958596705012d663553bf2ce7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
