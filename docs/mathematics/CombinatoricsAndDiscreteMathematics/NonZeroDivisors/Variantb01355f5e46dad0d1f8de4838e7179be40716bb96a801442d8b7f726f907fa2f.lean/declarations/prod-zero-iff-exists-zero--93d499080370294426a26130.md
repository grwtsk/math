# prod_zero_iff_exists_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:22a15035-a6b1-f20d-2917-d5ab92b1ecef",
  "kind": "theorem",
  "lexical_name": "prod_zero_iff_exists_zero",
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
  "slug": "prod-zero-iff-exists-zero--93d499080370294426a26130",
  "source": {
    "blob": "c61e4f332d01671808dc230ce08d51744cb7f89c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 170,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variantb01355f5e46dad0d1f8de4838e7179be40716bb96a801442d8b7f726f907fa2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93d499080370294426a26130a914515af9f3c6491a7447c88da1266fd451daf5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variantb01355f5e46dad0d1f8de4838e7179be40716bb96a801442d8b7f726f907fa2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22a15035-a6b1-f20d-2917-d5ab92b1ecef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_zero_iff_exists_zero [NoZeroDivisors M₁] [Nontrivial M₁] {s : Multiset M₁} :
    s.prod = 0 ↔ ∃ (r : M₁) (_ : r ∈ s), r = 0 := by
  constructor; swap
  · rintro ⟨r, hrs, rfl⟩
    exact Multiset.prod_eq_zero hrs
  induction' s using Multiset.induction_on with a s ih
  · intro habs
    simp at habs
  · rw [Multiset.prod_cons]
    intro hprod
    replace hprod := eq_zero_or_eq_zero_of_mul_eq_zero hprod
    cases' hprod with ha hb
    · exact ⟨a, Multiset.mem_cons_self a s, ha⟩
    · apply (ih hb).imp _
      rintro b ⟨hb₁, hb₂⟩
      exact ⟨Multiset.mem_cons_of_mem hb₁, hb₂⟩
#align prod_zero_iff_exists_zero prod_zero_iff_exists_zero

end nonZeroDivisors
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variantb01355f5e46dad0d1f8de4838e7179be40716bb96a801442d8b7f726f907fa2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variantb01355f5e46dad0d1f8de4838e7179be40716bb96a801442d8b7f726f907fa2f.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c61e4f332d01671808dc230ce08d51744cb7f89c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
