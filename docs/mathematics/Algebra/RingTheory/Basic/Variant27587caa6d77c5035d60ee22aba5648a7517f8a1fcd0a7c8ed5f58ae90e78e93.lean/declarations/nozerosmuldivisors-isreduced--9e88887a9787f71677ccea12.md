# NoZeroSMulDivisors.isReduced

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd143039-13e6-934e-1297-2597ab4a7c1e",
  "kind": "lemma",
  "lexical_name": "NoZeroSMulDivisors.isReduced",
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
  "slug": "nozerosmuldivisors-isreduced--9e88887a9787f71677ccea12",
  "source": {
    "blob": "179884a30f33bf3eeddb76c17eb9e662a90c88b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 230,
    "path": "GRWTSK/Algebra/RingTheory/Basic/Variant27587caa6d77c5035d60ee22aba5648a7517f8a1fcd0a7c8ed5f58ae90e78e93.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e88887a9787f71677ccea1286202745cc16e5834b630fbc856c771c5f19830f",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Basic/Variant27587caa6d77c5035d60ee22aba5648a7517f8a1fcd0a7c8ed5f58ae90e78e93.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd143039-13e6-934e-1297-2597ab4a7c1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma NoZeroSMulDivisors.isReduced (R M : Type*)
    [MonoidWithZero R] [Zero M] [MulActionWithZero R M] [Nontrivial M] [NoZeroSMulDivisors R M] :
    IsReduced R := by
  refine ⟨fun x ⟨k, hk⟩ ↦ ?_⟩
  induction' k with k ih
  · rw [pow_zero] at hk
    exact eq_zero_of_zero_eq_one hk.symm x
  · obtain ⟨m : M, hm : m ≠ 0⟩ := exists_ne (0 : M)
    have : x ^ (k + 1) • m = 0 := by simp only [hk, zero_smul]
    rw [pow_succ', mul_smul] at this
    rcases eq_zero_or_eq_zero_of_smul_eq_zero this with rfl | hx
    · rfl
    · exact ih <| (eq_zero_or_eq_zero_of_smul_eq_zero hx).resolve_right hm
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Basic/Variant27587caa6d77c5035d60ee22aba5648a7517f8a1fcd0a7c8ed5f58ae90e78e93.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Basic/Variant27587caa6d77c5035d60ee22aba5648a7517f8a1fcd0a7c8ed5f58ae90e78e93.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `179884a30f33bf3eeddb76c17eb9e662a90c88b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
