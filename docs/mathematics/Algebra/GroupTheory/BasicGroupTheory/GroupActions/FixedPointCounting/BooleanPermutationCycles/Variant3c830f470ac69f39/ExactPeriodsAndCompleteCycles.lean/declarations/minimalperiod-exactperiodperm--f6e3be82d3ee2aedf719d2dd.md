# minimalPeriod_exactPeriodPerm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7fb5dc58-0db7-4f70-dafd-8512242e264e",
  "kind": "theorem",
  "lexical_name": "minimalPeriod_exactPeriodPerm",
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
  "slug": "minimalperiod-exactperiodperm--f6e3be82d3ee2aedf719d2dd",
  "source": {
    "blob": "802c13e5788a5bbadabeb4d0a63ebf17625e3cf2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 311,
    "path": "GRWTSK/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FixedPointCounting/BooleanPermutationCycles/Variant3c830f470ac69f39/ExactPeriodsAndCompleteCycles.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6e3be82d3ee2aedf719d2dd7092d88ffc1b6ef5549d36ba8b4fbe6058c996f6",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FixedPointCounting/BooleanPermutationCycles/Variant3c830f470ac69f39/ExactPeriodsAndCompleteCycles.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7fb5dc58-0db7-4f70-dafd-8512242e264e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem minimalPeriod_exactPeriodPerm {n : Nat}
    (H : BitPerm n)
    {r : Nat}
    (x : ExactPoint H r) :
    Function.minimalPeriod (exactPeriodPerm H r) x = r := by
  have horiginal : Function.minimalPeriod H x.val = r :=
    (hasExactPeriod_iff_minimalPeriod_eq H r x).1
      ((mem_exactPeriodPoints_iff H r x).1 x.property)
  have hrestricted :
      Function.minimalPeriod (exactPeriodPerm H r) x =
        Function.minimalPeriod H x.val := by
    apply (Function.minimalPeriod_eq_minimalPeriod_iff).2
    intro k
    constructor
    · intro h
      change (((exactPeriodPerm H r) ^ k) x = x) at h
      apply (isPeriodicPt_iff_pow_apply H k x).2
      have hval := congrArg Subtype.val h
      rw [exactPeriodPerm_pow_apply_val] at hval
      exact hval
    · intro h
      change (((exactPeriodPerm H r) ^ k) x = x)
      apply Subtype.ext
      rw [exactPeriodPerm_pow_apply_val]
      exact (isPeriodicPt_iff_pow_apply H k x).1 h
  exact hrestricted.trans horiginal

/-- Exact-period points decompose into genuine cycles of length `r`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FixedPointCounting/BooleanPermutationCycles/Variant3c830f470ac69f39/ExactPeriodsAndCompleteCycles.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FixedPointCounting/BooleanPermutationCycles/Variant3c830f470ac69f39/ExactPeriodsAndCompleteCycles.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `802c13e5788a5bbadabeb4d0a63ebf17625e3cf2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
