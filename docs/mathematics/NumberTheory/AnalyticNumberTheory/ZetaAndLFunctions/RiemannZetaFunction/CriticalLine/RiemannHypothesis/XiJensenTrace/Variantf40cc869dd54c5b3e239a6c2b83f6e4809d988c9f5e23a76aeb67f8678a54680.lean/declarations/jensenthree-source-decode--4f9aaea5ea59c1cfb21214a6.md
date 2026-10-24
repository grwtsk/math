# jensenThree_source_decode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:698f7477-ed6a-bc97-3a8e-29af6a1597f8",
  "kind": "theorem",
  "lexical_name": "jensenThree_source_decode",
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
  "slug": "jensenthree-source-decode--4f9aaea5ea59c1cfb21214a6",
  "source": {
    "blob": "eec0902b9103c08d96cdc684af02bad71bdd1e3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 292,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variantf40cc869dd54c5b3e239a6c2b83f6e4809d988c9f5e23a76aeb67f8678a54680.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f9aaea5ea59c1cfb21214a6372b83d3acb1ba857345203c3a5c046aa25097ae",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variantf40cc869dd54c5b3e239a6c2b83f6e4809d988c9f5e23a76aeb67f8678a54680.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:698f7477-ed6a-bc97-3a8e-29af6a1597f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jensenThree_source_decode (z : ℂ) :
    XiJensenReconstruction.jensenSection 3 z =
      (leadingScalar 3 : ℂ) *
        (cubicCompanion (18 * coefficient 2 / coefficient 3)
          (54 * coefficient 1 / coefficient 3)
          ((324/5 : ℝ) * coefficient 0 / coefficient 3)).charpoly.eval₂
            (algebraMap ℝ ℂ) (z^2) := by
  rw [cubicCompanion_charpoly]
  have ha3 : (coefficient 3 : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr
    (coefficient_positive_of_thetaCoefficientFormula thetaCoefficientFormula 3).ne'
  norm_num [XiJensenReconstruction.jensenSection, Finset.sum_range_succ,
    weight, Nat.descFactorial, leadingScalar]
  field_simp
  ring

/-- Every complex zero of the actual degree-four Jensen closure is real. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variantf40cc869dd54c5b3e239a6c2b83f6e4809d988c9f5e23a76aeb67f8678a54680.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variantf40cc869dd54c5b3e239a6c2b83f6e4809d988c9f5e23a76aeb67f8678a54680.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eec0902b9103c08d96cdc684af02bad71bdd1e3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
