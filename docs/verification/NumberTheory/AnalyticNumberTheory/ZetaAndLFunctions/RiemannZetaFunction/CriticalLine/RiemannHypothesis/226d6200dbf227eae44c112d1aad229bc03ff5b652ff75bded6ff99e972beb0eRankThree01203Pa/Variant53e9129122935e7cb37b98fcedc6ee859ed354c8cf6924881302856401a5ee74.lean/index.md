# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.226d6200dbf227eae44c112d1aad229bc03ff5b652ff75bded6ff99e972beb0eRankThree01203Pa.Variant53e9129122935e7cb37b98fcedc6ee859ed354c8cf6924881302856401a5ee74

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de6f846da682600aefc5b1f98d99912a8a5f5a4d",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/226d6200dbf227eae44c112d1aad229bc03ff5b652ff75bded6ff99e972beb0eRankThree01203Pa/Variant53e9129122935e7cb37b98fcedc6ee859ed354c8cf6924881302856401a5ee74.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/226d6200dbf227eae44c112d1aad229bc03ff5b652ff75bded6ff99e972beb0eRankThree01203Pa/Variant53e9129122935e7cb37b98fcedc6ee859ed354c8cf6924881302856401a5ee74.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/226d6200dbf227eae44c112d1aad229bc03ff5b652ff75bded6ff99e972beb0eRankThree01203Pa/Variant53e9129122935e7cb37b98fcedc6ee859ed354c8cf6924881302856401a5ee74.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de6f846da682600aefc5b1f98d99912a8a5f5a4d`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/226d6200dbf227eae44c112d1aad229bc03ff5b652ff75bded6ff99e972beb0eRankThree01203Pa/Variant53e9129122935e7cb37b98fcedc6ee859ed354c8cf6924881302856401a5ee74.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/226d6200dbf227eae44c112d1aad229bc03ff5b652ff75bded6ff99e972beb0eRankThree01203Pa/Variant53e9129122935e7cb37b98fcedc6ee859ed354c8cf6924881302856401a5ee74.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaTailRankThreeGaps` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ThetaTailRankThreeCriterion` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaTailRankThreeNumerator](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/226d6200dbf227eae44c112d1aad229bc03ff5b652ff75bded6ff99e972beb0eRankThree01203Pa/Variant53e9129122935e7cb37b98fcedc6ee859ed354c8cf6924881302856401a5ee74.lean/declarations/thetatailrankthreenumerator--8e9b99c2415da66e52565362.md) | 26 | `declaration-track:8e9b99c2415da66e52565362ed7761740ec9e4b8897cb1dc005c8f6bf372c763` |
| 2 | `theorem` | [rankThree_compound_numerator_identity](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/226d6200dbf227eae44c112d1aad229bc03ff5b652ff75bded6ff99e972beb0eRankThree01203Pa/Variant53e9129122935e7cb37b98fcedc6ee859ed354c8cf6924881302856401a5ee74.lean/declarations/rankthree-compound-numerator-identity--a44420acd72880727cf11bff.md) | 33 | `result-track:a44420acd72880727cf11bffb7ea43e4be3e66ab6d2504515e189251ce0d6009` |
| 3 | `theorem` | [thetaTailRankThreeNumerator_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/226d6200dbf227eae44c112d1aad229bc03ff5b652ff75bded6ff99e972beb0eRankThree01203Pa/Variant53e9129122935e7cb37b98fcedc6ee859ed354c8cf6924881302856401a5ee74.lean/declarations/thetatailrankthreenumerator-eq--c3aa92d968dd3269a615cb67.md) | 41 | `result-track:c3aa92d968dd3269a615cb67cd0194ce6f4cc2e4b62db3575ecb84de6faba19a` |
| 4 | `theorem` | [hasDerivAt_thetaTail_compoundRatio](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/226d6200dbf227eae44c112d1aad229bc03ff5b652ff75bded6ff99e972beb0eRankThree01203Pa/Variant53e9129122935e7cb37b98fcedc6ee859ed354c8cf6924881302856401a5ee74.lean/declarations/hasderivat-thetatail-compoundratio--7e8e225ed5f4eff462e54029.md) | 53 | `result-track:7e8e225ed5f4eff462e5402932e2b92fc93005a0ad6baa01bc16611d6f5711ae` |
| 5 | `theorem` | [thetaTail_compoundRatio_antitone_iff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/226d6200dbf227eae44c112d1aad229bc03ff5b652ff75bded6ff99e972beb0eRankThree01203Pa/Variant53e9129122935e7cb37b98fcedc6ee859ed354c8cf6924881302856401a5ee74.lean/declarations/thetatail-compoundratio-antitone-iff--6f0d2506946e0fb7ec4802f5.md) | 64 | `result-track:6f0d2506946e0fb7ec4802f550d35418650f376feb1425bae21025a9286d67f8` |
| 6 | `theorem` | [thetaTail012_det_nonpos_of_numerator_nonpos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/226d6200dbf227eae44c112d1aad229bc03ff5b652ff75bded6ff99e972beb0eRankThree01203Pa/Variant53e9129122935e7cb37b98fcedc6ee859ed354c8cf6924881302856401a5ee74.lean/declarations/thetatail012-det-nonpos-of-numerator-nonpos--09ae45bd85d244ae88a2bef6.md) | 86 | `result-track:09ae45bd85d244ae88a2bef679323d42b561d4f0e0809aa90ae28d3954492a3e` |
| 7 | `theorem` | [thetaTailSignRegular_three_zero_one_two_of_numerator_nonpos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/226d6200dbf227eae44c112d1aad229bc03ff5b652ff75bded6ff99e972beb0eRankThree01203Pa/Variant53e9129122935e7cb37b98fcedc6ee859ed354c8cf6924881302856401a5ee74.lean/declarations/thetatailsignregular-three-zero-one-two-of-numerator-nonpos--30a4529c1fcf90bac7ac861b.md) | 131 | `result-track:30a4529c1fcf90bac7ac861b5310f88afa44ec4dc61d48304a69758bf26e1186` |
| 8 | `theorem` | [thetaPhi_jet_det_nonpos_of_wronskian](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/226d6200dbf227eae44c112d1aad229bc03ff5b652ff75bded6ff99e972beb0eRankThree01203Pa/Variant53e9129122935e7cb37b98fcedc6ee859ed354c8cf6924881302856401a5ee74.lean/declarations/thetaphi-jet-det-nonpos-of-wronskian--e1c8404fd5261816ce873a3c.md) | 150 | `result-track:e1c8404fd5261816ce873a3ca9d3aa2338d4ebf1755b45391caba588ded65342` |
| 9 | `theorem` | [thetaTailRankThreeNumerator_nonpos_of_wronskian](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/226d6200dbf227eae44c112d1aad229bc03ff5b652ff75bded6ff99e972beb0eRankThree01203Pa/Variant53e9129122935e7cb37b98fcedc6ee859ed354c8cf6924881302856401a5ee74.lean/declarations/thetatailrankthreenumerator-nonpos-of-wronskian--be692c4f4cc179147b13c2d1.md) | 168 | `result-track:be692c4f4cc179147b13c2d1686e5d80ce956d75c33de3290e8845bc2731a5f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
