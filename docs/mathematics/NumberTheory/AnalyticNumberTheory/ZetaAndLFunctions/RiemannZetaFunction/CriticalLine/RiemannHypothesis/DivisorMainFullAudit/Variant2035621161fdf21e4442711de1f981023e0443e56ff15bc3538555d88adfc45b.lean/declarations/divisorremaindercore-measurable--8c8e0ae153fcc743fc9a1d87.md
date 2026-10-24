# divisorRemainderCore_measurable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f6b03adbcc0735f3e16aa7822db8a806846fce06",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 22,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/20/2035621161fdf21e4442711de1f981023e0443e56ff15bc3538555d88adfc45b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6c412589-7658-95a7-458f-beaa0f02bcd9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:718f57ab-9c9a-8c57-6121-d845ee24970a",
  "kind": "theorem",
  "lexical_name": "divisorRemainderCore_measurable",
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
  "slug": "divisorremaindercore-measurable--8c8e0ae153fcc743fc9a1d87",
  "source": {
    "blob": "f6b03adbcc0735f3e16aa7822db8a806846fce06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 22,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainFullAudit/Variant2035621161fdf21e4442711de1f981023e0443e56ff15bc3538555d88adfc45b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c8e0ae153fcc743fc9a1d874f186402a8a809b6e3903f3655d60523b8948a1f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainFullAudit/Variant2035621161fdf21e4442711de1f981023e0443e56ff15bc3538555d88adfc45b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:718f57ab-9c9a-8c57-6121-d845ee24970a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem divisorRemainderCore_measurable (ε Y : ℝ) :
    Measurable (divisorRemainderCore ε Y) := by
  have hm : Measurable (fun u : ℝ =>
      (∑ n ∈ Finset.Icc 1 ⌊Real.exp u⌋₊, dampedDivisorCoefficient ε n) - 1 -
        ε * ∑ n ∈ Finset.Icc 1 ⌊Real.exp u⌋₊, ArithmeticFunction.vonMangoldt n) :=
    (measurable_from_nat (f := fun N : ℕ =>
      (∑ n ∈ Finset.Icc 1 N, dampedDivisorCoefficient ε n) - 1 -
        ε * ∑ n ∈ Finset.Icc 1 N, ArithmeticFunction.vonMangoldt n)).comp
      (Nat.measurable_floor.comp Real.measurable_exp)
  exact ((Complex.measurable_ofReal.comp (by fun_prop)).mul
    (Complex.measurable_ofReal.comp hm)).indicator measurableSet_Icc

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainFullAudit/Variant2035621161fdf21e4442711de1f981023e0443e56ff15bc3538555d88adfc45b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainFullAudit/Variant2035621161fdf21e4442711de1f981023e0443e56ff15bc3538555d88adfc45b.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6b03adbcc0735f3e16aa7822db8a806846fce06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
