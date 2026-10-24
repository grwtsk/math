# exactPeriodCount_conjugate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:06a59427-6d12-cd91-7472-1ac206b41789",
  "kind": "theorem",
  "lexical_name": "exactPeriodCount_conjugate",
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
  "slug": "exactperiodcount-conjugate--919bdcdd54dcdc33cb500efe",
  "source": {
    "blob": "a14cfa703b00e67ab58db2f5e2968bb2481875c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 84,
    "path": "GRWTSK/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FixedPointCounting/BooleanPermutationCycles/Variant3c830f470ac69f39/ConjugacyAndFiniteBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:919bdcdd54dcdc33cb500efe56a2418f84af0c5c162a8551fe99530f1867f4ab",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FixedPointCounting/BooleanPermutationCycles/Variant3c830f470ac69f39/ConjugacyAndFiniteBounds.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06a59427-6d12-cd91-7472-1ac206b41789`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exactPeriodCount_conjugate {n : Nat}
    (g H : BitPerm n)
    (r : Nat) :
    exactPeriodCount (conjugate g H) r = exactPeriodCount H r := by
  classical
  unfold exactPeriodCount
  apply Finset.card_bij (fun x _ => g.symm x)
  · intro x hx
    exact (mem_exactPeriodPoints_iff H r (g.symm x)).2
      ((hasExactPeriod_conjugate_iff g H r x).1
        ((mem_exactPeriodPoints_iff (conjugate g H) r x).1 hx))
  · intro x₁ hx₁ x₂ hx₂ h
    exact g.symm.injective h
  · intro y hy
    refine ⟨g y, ?_, by simp⟩
    exact (mem_exactPeriodPoints_iff (conjugate g H) r (g y)).2
      ((hasExactPeriod_conjugate_iff g H r (g y)).2 <| by
        simpa using (mem_exactPeriodPoints_iff H r y).1 hy)

/-- Primitive cycle counts are conjugacy invariants. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FixedPointCounting/BooleanPermutationCycles/Variant3c830f470ac69f39/ConjugacyAndFiniteBounds.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FixedPointCounting/BooleanPermutationCycles/Variant3c830f470ac69f39/ConjugacyAndFiniteBounds.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a14cfa703b00e67ab58db2f5e2968bb2481875c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
