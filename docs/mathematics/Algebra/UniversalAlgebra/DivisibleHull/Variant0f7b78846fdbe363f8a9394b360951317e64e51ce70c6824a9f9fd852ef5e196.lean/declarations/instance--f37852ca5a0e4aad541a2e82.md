# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a79da41837749e3eb99e581de7ea218eba24606843a33c20b0832eb38b769ef3",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--f37852ca5a0e4aad541a2e82",
  "source": {
    "blob": "4d86e6421f71b249a7c27edbd96d5743725a64b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 341,
    "line": 320,
    "path": "GRWTSK/Algebra/UniversalAlgebra/DivisibleHull/Variant0f7b78846fdbe363f8a9394b360951317e64e51ce70c6824a9f9fd852ef5e196.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f37852ca5a0e4aad541a2e827670bf06a54f99c963a2afd594b0bb87baa67562",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/DivisibleHull/Variant0f7b78846fdbe363f8a9394b360951317e64e51ce70c6824a9f9fd852ef5e196.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a79da41837749e3eb99e581de7ea218eba24606843a33c20b0832eb38b769ef3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 320–341.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : IsStrictOrderedModule ℚ≥0 (DivisibleHull M) where
  smul_lt_smul_of_pos_left a ha b c h := by
    induction b with | mk mb sb
    induction c with | mk mc sc
    simp_rw [mk_lt_mk] at h
    simp_rw [nnqsmul_mk, mk_lt_mk, smul_smul, PNat.mul_coe]
    simp_rw [mul_right_comm _ _ a.num, mul_smul _ _ mc, mul_smul _ _ mb]
    exact (nsmul_right_strictMono (by simpa using ha.ne.symm)).lt_iff_lt.mpr h
  smul_lt_smul_of_pos_right a ha b c h := by
    induction a with | mk m s
    simp_rw [nnqsmul_mk, mk_lt_mk, smul_smul, PNat.mul_coe, PNat.mk_coe]
    refine smul_lt_smul_of_pos_right ?_ ?_
    · convert! mul_lt_mul_of_pos_right (NNRat.lt_def.mp h) (show 0 < s.val by simp) using 1 <;> ring
    · rw [← mk_zero 1, mk_lt_mk] at ha
      simpa using ha

end LinearOrder

section OrderedGroup
variable {M : Type*} [AddCommGroup M] [LinearOrder M] [IsOrderedAddMonoid M]

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/DivisibleHull/Variant0f7b78846fdbe363f8a9394b360951317e64e51ce70c6824a9f9fd852ef5e196.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/DivisibleHull/Variant0f7b78846fdbe363f8a9394b360951317e64e51ce70c6824a9f9fd852ef5e196.lean#L320).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d86e6421f71b249a7c27edbd96d5743725a64b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
