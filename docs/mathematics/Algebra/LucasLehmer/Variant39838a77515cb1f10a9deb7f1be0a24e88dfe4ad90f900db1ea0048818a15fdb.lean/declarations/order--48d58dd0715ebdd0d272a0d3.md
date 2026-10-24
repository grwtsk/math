# order_ω

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dbe631af-8a47-b2e8-0c18-6797b8db2e7b",
  "kind": "theorem",
  "lexical_name": "order_ω",
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
  "slug": "order--48d58dd0715ebdd0d272a0d3",
  "source": {
    "blob": "29714364f98fc2f7218391db3068cee0d33b26a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 505,
    "line": 486,
    "path": "GRWTSK/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48d58dd0715ebdd0d272a0d32668bf71c93fef57a4cb89d7a5695d5ea0c0585a",
  "verification": {
    "reference": "docs/verification/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dbe631af-8a47-b2e8-0c18-6797b8db2e7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 486–505.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem order_ω (p' : ℕ) (h : lucasLehmerResidue (p' + 2) = 0) :
    orderOf (ωUnit (p' + 2)) = 2 ^ (p' + 2) := by
  apply Nat.eq_prime_pow_of_dvd_least_prime_pow
  -- the order of ω divides 2^p
  · exact Nat.prime_two
  · intro o
    have ω_pow := orderOf_dvd_iff_pow_eq_one.1 o
    replace ω_pow :=
      congr_arg (Units.coeHom (X (q (p' + 2))) : Units (X (q (p' + 2))) → X (q (p' + 2))) ω_pow
    simp at ω_pow
    have h : (1 : ZMod (q (p' + 2))) = -1 :=
      congr_arg Prod.fst (ω_pow.symm.trans (ω_pow_eq_neg_one p' h))
    haveI : Fact (2 < (q (p' + 2) : ℕ)) := ⟨two_lt_q _⟩
    apply ZMod.neg_one_ne_one h.symm
  · apply orderOf_dvd_iff_pow_eq_one.2
    apply Units.ext
    push_cast
    exact ω_pow_eq_one p' h
#align lucas_lehmer.order_ω LucasLehmer.order_ω

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean#L486).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29714364f98fc2f7218391db3068cee0d33b26a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
