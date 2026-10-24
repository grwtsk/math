# FractionalIdeal.sup_mul_inf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "686c0c8b6fa489e9b367a44f2bf30d2992107068",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 363,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e11dfd7f1575efc3e2bf4844350193a4e0a5d98284f663f43b3f637e097f6e91.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:07db0d7e-6b48-2a2c-9605-c42c5d8808d0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:55840bbf-311e-d2f3-f653-2ba00cc91c04",
  "kind": "lemma",
  "lexical_name": "FractionalIdeal.sup_mul_inf",
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
  "slug": "fractionalideal-sup-mul-inf--8da4a5c8f95fd3db0d91b47b",
  "source": {
    "blob": "686c0c8b6fa489e9b367a44f2bf30d2992107068",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 386,
    "line": 363,
    "path": "GRWTSK/Algebra/Lemmas/Variante11dfd7f1575efc3e2bf4844350193a4e0a5d98284f663f43b3f637e097f6e91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8da4a5c8f95fd3db0d91b47bf37c8521278de3b565582d4cac7d31b790feafde",
  "verification": {
    "reference": "docs/verification/Algebra/Lemmas/Variante11dfd7f1575efc3e2bf4844350193a4e0a5d98284f663f43b3f637e097f6e91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55840bbf-311e-d2f3-f653-2ba00cc91c04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 363–386.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma FractionalIdeal.sup_mul_inf (I J : FractionalIdeal A⁰ K) :
    (I ⊓ J) * (I ⊔ J) = I * J := by
  apply mul_left_injective₀ (b := spanSingleton A⁰ (algebraMap A K
    (I.den.1 * I.den.1 * J.den.1 * J.den.1))) (by simp [spanSingleton_eq_zero_iff])
  have := Ideal.sup_mul_inf (Ideal.span {J.den.1} * I.num) (Ideal.span {I.den.1} * J.num)
  simp only [← coeIdeal_inj (K := K), coeIdeal_mul, coeIdeal_sup, coeIdeal_inf,
    ← den_mul_self_eq_num', coeIdeal_span_singleton] at this
  rw [mul_left_comm, ← mul_add, ← mul_add, ← mul_inf₀ (FractionalIdeal.zero_le _),
    ← mul_inf₀ (FractionalIdeal.zero_le _)] at this
  simp only [FractionalIdeal.sup_eq_add, _root_.map_mul, ← spanSingleton_mul_spanSingleton]
  convert! this using 1 <;> ring

end Gcd

end IsDedekindDomain

section IsDedekindDomain

variable {T : Type*} [CommRing T] [IsDedekindDomain T] {I J : Ideal T}

open Multiset UniqueFactorizationMonoid

namespace Ideal

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Lemmas/Variante11dfd7f1575efc3e2bf4844350193a4e0a5d98284f663f43b3f637e097f6e91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Lemmas/Variante11dfd7f1575efc3e2bf4844350193a4e0a5d98284f663f43b3f637e097f6e91.lean#L363).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `686c0c8b6fa489e9b367a44f2bf30d2992107068` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
