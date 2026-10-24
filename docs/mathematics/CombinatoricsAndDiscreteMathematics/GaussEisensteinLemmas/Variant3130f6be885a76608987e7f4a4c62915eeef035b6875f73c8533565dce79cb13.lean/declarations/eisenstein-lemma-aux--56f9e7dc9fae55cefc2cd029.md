# eisenstein_lemma_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1ab8d348-1b03-a37d-5018-3693e9988d01",
  "kind": "theorem",
  "lexical_name": "eisenstein_lemma_aux",
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
  "slug": "eisenstein-lemma-aux--56f9e7dc9fae55cefc2cd029",
  "source": {
    "blob": "97490383751b7fef99453c178d184f7d7441a2a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 147,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GaussEisensteinLemmas/Variant3130f6be885a76608987e7f4a4c62915eeef035b6875f73c8533565dce79cb13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56f9e7dc9fae55cefc2cd029bbe6590132d8a6b3edcb9378431afaef5ada3ec8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GaussEisensteinLemmas/Variant3130f6be885a76608987e7f4a4c62915eeef035b6875f73c8533565dce79cb13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ab8d348-1b03-a37d-5018-3693e9988d01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eisenstein_lemma_aux (p : ℕ) [Fact p.Prime] [Fact (p % 2 = 1)] {a : ℕ} (ha2 : a % 2 = 1)
    (hap : (a : ZMod p) ≠ 0) :
    #{x ∈ Ico 1 (p / 2).succ | p / 2 < (a * x.cast : ZMod p).val} ≡
      ∑ x ∈ Ico 1 (p / 2).succ, x * a / p [MOD 2] :=
  have ha2 : (a : ZMod 2) = (1 : ℕ) := (eq_iff_modEq_nat _).2 ha2
  (eq_iff_modEq_nat 2).1 <| sub_eq_zero.1 <| by
    simpa [add_left_comm, sub_eq_add_neg, ← mul_sum, mul_comm, ha2, Nat.cast_sum,
      add_neg_eq_iff_eq_add.symm, add_assoc] using
      Eq.symm (eisenstein_lemma_aux₁ p hap)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/GaussEisensteinLemmas/Variant3130f6be885a76608987e7f4a4c62915eeef035b6875f73c8533565dce79cb13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GaussEisensteinLemmas/Variant3130f6be885a76608987e7f4a4c62915eeef035b6875f73c8533565dce79cb13.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97490383751b7fef99453c178d184f7d7441a2a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
