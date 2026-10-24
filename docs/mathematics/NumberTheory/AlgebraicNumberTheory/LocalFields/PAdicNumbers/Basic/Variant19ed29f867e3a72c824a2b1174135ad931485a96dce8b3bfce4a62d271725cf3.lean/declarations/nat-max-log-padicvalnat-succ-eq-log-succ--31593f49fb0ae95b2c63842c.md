# Nat.max_log_padicValNat_succ_eq_log_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f28f9f75-ff67-9bd6-54e6-f7df231d6a61",
  "kind": "lemma",
  "lexical_name": "Nat.max_log_padicValNat_succ_eq_log_succ",
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
  "slug": "nat-max-log-padicvalnat-succ-eq-log-succ--31593f49fb0ae95b2c63842c",
  "source": {
    "blob": "873466b39d96b9ccb46f350e75882ead92d13b91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 564,
    "line": 555,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Basic/Variant19ed29f867e3a72c824a2b1174135ad931485a96dce8b3bfce4a62d271725cf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31593f49fb0ae95b2c63842c23a988ab75c26b37df672734c14605a474d5219f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Basic/Variant19ed29f867e3a72c824a2b1174135ad931485a96dce8b3bfce4a62d271725cf3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f28f9f75-ff67-9bd6-54e6-f7df231d6a61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 555–564.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Nat.max_log_padicValNat_succ_eq_log_succ (n : ℕ) [hp : Fact p.Prime] :
    max (log p n) (padicValNat p (n + 1)) = log p (n + 1) := by
  apply le_antisymm (max_le (le_log_of_pow_le hp.out.one_lt (pow_log_le_add_one p n))
    (padicValNat_le_nat_log (n + 1)))
  rw [le_max_iff, or_iff_not_imp_left, not_le]
  intro h
  replace h := le_antisymm (add_one_le_iff.mpr (lt_pow_of_log_lt hp.out.one_lt h))
    (pow_log_le_self p n.succ_ne_zero)
  rw [h, padicValNat.prime_pow, ← h]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Basic/Variant19ed29f867e3a72c824a2b1174135ad931485a96dce8b3bfce4a62d271725cf3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Basic/Variant19ed29f867e3a72c824a2b1174135ad931485a96dce8b3bfce4a62d271725cf3.lean#L555).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `873466b39d96b9ccb46f350e75882ead92d13b91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
