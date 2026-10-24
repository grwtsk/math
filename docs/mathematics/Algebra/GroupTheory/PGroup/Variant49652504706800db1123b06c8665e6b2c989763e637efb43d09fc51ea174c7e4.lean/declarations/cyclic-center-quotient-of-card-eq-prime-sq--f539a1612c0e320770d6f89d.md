# cyclic_center_quotient_of_card_eq_prime_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a94d534642d53121cd507a93c59834f950c767bf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 380,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/49/49652504706800db1123b06c8665e6b2c989763e637efb43d09fc51ea174c7e4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6492ddde-c927-731e-941e-69bdd8e99422",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dc2fbd5f-4b8f-a3d9-c321-5cd635ad6951",
  "kind": "theorem",
  "lexical_name": "cyclic_center_quotient_of_card_eq_prime_sq",
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
  "slug": "cyclic-center-quotient-of-card-eq-prime-sq--f539a1612c0e320770d6f89d",
  "source": {
    "blob": "a94d534642d53121cd507a93c59834f950c767bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 397,
    "line": 380,
    "path": "GRWTSK/Algebra/GroupTheory/PGroup/Variant49652504706800db1123b06c8665e6b2c989763e637efb43d09fc51ea174c7e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f539a1612c0e320770d6f89dfefd396b4a1ef1be9fbc9713a73cd078014c1de2",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/PGroup/Variant49652504706800db1123b06c8665e6b2c989763e637efb43d09fc51ea174c7e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc2fbd5f-4b8f-a3d9-c321-5cd635ad6951`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 380–397.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cyclic_center_quotient_of_card_eq_prime_sq (hG : card G = p ^ 2) :
    IsCyclic (G ⧸ center G) := by
  classical
    rcases card_center_eq_prime_pow hG zero_lt_two with ⟨k, hk0, hk⟩
    rw [card_eq_card_quotient_mul_card_subgroup (center G), mul_comm, hk] at hG
    have hk2 := (Nat.pow_dvd_pow_iff_le_right (Fact.out (p := p.Prime)).one_lt).1 ⟨_, hG.symm⟩
    interval_cases k
    · rw [sq, pow_one, mul_right_inj' (Fact.out (p := p.Prime)).ne_zero] at hG
      exact isCyclic_of_prime_card hG
    · exact
        @isCyclic_of_subsingleton _ _
          ⟨Fintype.card_le_one_iff.1
              (mul_right_injective₀ (pow_ne_zero 2 (NeZero.ne p))
                  (hG.trans (mul_one (p ^ 2)).symm)).le⟩
#align is_p_group.cyclic_center_quotient_of_card_eq_prime_sq IsPGroup.cyclic_center_quotient_of_card_eq_prime_sq

/-- A group of order `p ^ 2` is commutative. See also `IsPGroup.commutative_of_card_eq_prime_sq`
for just the proof that `∀ a b, a * b = b * a` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/PGroup/Variant49652504706800db1123b06c8665e6b2c989763e637efb43d09fc51ea174c7e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/PGroup/Variant49652504706800db1123b06c8665e6b2c989763e637efb43d09fc51ea174c7e4.lean#L380).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a94d534642d53121cd507a93c59834f950c767bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
