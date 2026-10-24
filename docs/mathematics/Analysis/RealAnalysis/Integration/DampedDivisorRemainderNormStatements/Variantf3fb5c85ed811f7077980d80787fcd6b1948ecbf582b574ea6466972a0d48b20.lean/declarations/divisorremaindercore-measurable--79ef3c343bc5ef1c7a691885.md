# divisorRemainderCore_measurable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d41e776f-c26f-e57a-da1d-ef008e1c0af0",
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
  "slug": "divisorremaindercore-measurable--79ef3c343bc5ef1c7a691885",
  "source": {
    "blob": "23d706fc79723af60bf0efb7b79e745b0666fc93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 28,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormStatements/Variantf3fb5c85ed811f7077980d80787fcd6b1948ecbf582b574ea6466972a0d48b20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79ef3c343bc5ef1c7a6918858b3bbb00af37eac1423f49af1a426ddd405bce0d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormStatements/Variantf3fb5c85ed811f7077980d80787fcd6b1948ecbf582b574ea6466972a0d48b20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d41e776f-c26f-e57a-da1d-ef008e1c0af0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–39.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormStatements/Variantf3fb5c85ed811f7077980d80787fcd6b1948ecbf582b574ea6466972a0d48b20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormStatements/Variantf3fb5c85ed811f7077980d80787fcd6b1948ecbf582b574ea6466972a0d48b20.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23d706fc79723af60bf0efb7b79e745b0666fc93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
