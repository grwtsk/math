# instSemigroupWithZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0950a0e032a536c9d74758fc435864071ef93da154df986c3e05e2f97a61430d",
  "kind": "instance",
  "lexical_name": "instSemigroupWithZero",
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
  "slug": "instsemigroupwithzero--bfc0e596aabd535b3c05df9f",
  "source": {
    "blob": "5759fc543e133625f7934f0931754930b9a85b7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 134,
    "path": "GRWTSK/Algebra/UniversalAlgebra/WithTop/Variantea2c55ea152ec7ac36e51ea10de404eab786aa34cc1ba13422abdcbc2b3b672d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bfc0e596aabd535b3c05df9f54ef86a8f3e4b87b26c8d9e5bc7b28e600da24b7",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/WithTop/Variantea2c55ea152ec7ac36e51ea10de404eab786aa34cc1ba13422abdcbc2b3b672d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0950a0e032a536c9d74758fc435864071ef93da154df986c3e05e2f97a61430d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instSemigroupWithZero [SemigroupWithZero α] [NoZeroDivisors α] :
    SemigroupWithZero (WithTop α) where
  __ := instMulZeroClass
  mul_assoc a b c := by
    rcases eq_or_ne a 0 with (rfl | ha); · simp only [zero_mul]
    rcases eq_or_ne b 0 with (rfl | hb); · simp only [zero_mul, mul_zero]
    rcases eq_or_ne c 0 with (rfl | hc); · simp only [mul_zero]
    induction' a with a; · simp [hb, hc]
    induction' b with b; · simp [mul_top ha, top_mul hc]
    induction' c with c
    · rw [mul_top hb, mul_top ha]
      rw [← coe_zero, ne_eq, coe_eq_coe] at ha hb
      simp [ha, hb]
    simp only [← coe_mul, mul_assoc]

section MonoidWithZero
variable [MonoidWithZero α] [NoZeroDivisors α] [Nontrivial α] {x : WithTop α} {n : ℕ}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/WithTop/Variantea2c55ea152ec7ac36e51ea10de404eab786aa34cc1ba13422abdcbc2b3b672d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/WithTop/Variantea2c55ea152ec7ac36e51ea10de404eab786aa34cc1ba13422abdcbc2b3b672d.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5759fc543e133625f7934f0931754930b9a85b7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
