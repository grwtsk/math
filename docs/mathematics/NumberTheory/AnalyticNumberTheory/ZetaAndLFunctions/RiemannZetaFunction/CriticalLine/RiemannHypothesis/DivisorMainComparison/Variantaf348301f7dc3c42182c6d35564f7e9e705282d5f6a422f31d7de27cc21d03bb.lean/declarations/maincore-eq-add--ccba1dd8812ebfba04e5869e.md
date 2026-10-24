# mainCore_eq_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b86ad7aa-764d-45a7-e881-37e3f0bccf6d",
  "kind": "theorem",
  "lexical_name": "mainCore_eq_add",
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
  "slug": "maincore-eq-add--ccba1dd8812ebfba04e5869e",
  "source": {
    "blob": "73602439ab76828833767a504e04f3f8ac0643fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 51,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainComparison/Variantaf348301f7dc3c42182c6d35564f7e9e705282d5f6a422f31d7de27cc21d03bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ccba1dd8812ebfba04e5869eb11bb039913695a86324c957820cf77216c532b2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainComparison/Variantaf348301f7dc3c42182c6d35564f7e9e705282d5f6a422f31d7de27cc21d03bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b86ad7aa-764d-45a7-e881-37e3f0bccf6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem mainCore_eq_add (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) (Y : ℝ) :
    divisorMainCore X ε Y =
      (Icc (0 : ℝ) (Real.log Y)).indicator (logResidual X ε) +
        divisorRemainderCore ε Y := by
  funext u
  by_cases hu : u ∈ Icc (0 : ℝ) (Real.log Y)
  · simp only [divisorMainCore, divisorRemainderCore, Pi.add_apply, indicator_of_mem hu,
      logResidual]
    rw [arithmeticResidual_eq_main_sub_remainder X ε (Real.exp u) hX
      (Real.one_le_exp_iff.mpr hu.1)]
    ring
  · simp only [divisorMainCore, divisorRemainderCore, Pi.add_apply, indicator_of_notMem hu,
      zero_add]

/-- Genuine full-line L2 admission follows from the actual source core and the proved remainder. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainComparison/Variantaf348301f7dc3c42182c6d35564f7e9e705282d5f6a422f31d7de27cc21d03bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainComparison/Variantaf348301f7dc3c42182c6d35564f7e9e705282d5f6a422f31d7de27cc21d03bb.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73602439ab76828833767a504e04f3f8ac0643fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
