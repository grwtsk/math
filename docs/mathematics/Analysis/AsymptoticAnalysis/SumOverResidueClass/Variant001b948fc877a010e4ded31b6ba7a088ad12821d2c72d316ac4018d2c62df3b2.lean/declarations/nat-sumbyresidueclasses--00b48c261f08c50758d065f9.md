# Nat.sumByResidueClasses

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50df5b99-8aa5-30bd-e274-144613923a53",
  "kind": "lemma",
  "lexical_name": "Nat.sumByResidueClasses",
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
  "slug": "nat-sumbyresidueclasses--00b48c261f08c50758d065f9",
  "source": {
    "blob": "7421d9d592cd0502a5e02c666614422214b5f110",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 108,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SumOverResidueClass/Variant001b948fc877a010e4ded31b6ba7a088ad12821d2c72d316ac4018d2c62df3b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00b48c261f08c50758d065f9ff34882f96c4c636c48abb4a7ad4c1f7e9dffc3f",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SumOverResidueClass/Variant001b948fc877a010e4ded31b6ba7a088ad12821d2c72d316ac4018d2c62df3b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50df5b99-8aa5-30bd-e274-144613923a53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Nat.sumByResidueClasses {R : Type*} [AddCommGroup R] [UniformSpace R] [IsUniformAddGroup R]
    [CompleteSpace R] [T0Space R] {f : ℕ → R} (hf : Summable f) (N : ℕ) [NeZero N] :
    ∑' n, f n = ∑ j : ZMod N, ∑' m, f (j.val + N * m) := by
  rw [← (residueClassesEquiv N).symm.tsum_eq f, Summable.tsum_prod, tsum_fintype,
    residueClassesEquiv, Equiv.coe_fn_symm_mk]
  exact hf.comp_injective (residueClassesEquiv N).symm.injective
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SumOverResidueClass/Variant001b948fc877a010e4ded31b6ba7a088ad12821d2c72d316ac4018d2c62df3b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SumOverResidueClass/Variant001b948fc877a010e4ded31b6ba7a088ad12821d2c72d316ac4018d2c62df3b2.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7421d9d592cd0502a5e02c666614422214b5f110` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
