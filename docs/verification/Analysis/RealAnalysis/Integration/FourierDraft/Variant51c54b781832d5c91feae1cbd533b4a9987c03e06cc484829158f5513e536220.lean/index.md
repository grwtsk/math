# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.FourierDraft.Variant51c54b781832d5c91feae1cbd533b4a9987c03e06cc484829158f5513e536220

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "185928316d7dbaac63a9a31712d3902a6589e2e0",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/FourierDraft/Variant51c54b781832d5c91feae1cbd533b4a9987c03e06cc484829158f5513e536220.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierDraft/Variant51c54b781832d5c91feae1cbd533b4a9987c03e06cc484829158f5513e536220.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierDraft/Variant51c54b781832d5c91feae1cbd533b4a9987c03e06cc484829158f5513e536220.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `185928316d7dbaac63a9a31712d3902a6589e2e0`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/FourierDraft/Variant51c54b781832d5c91feae1cbd533b4a9987c03e06cc484829158f5513e536220.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/FourierDraft/Variant51c54b781832d5c91feae1cbd533b4a9987c03e06cc484829158f5513e536220.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourcePlancherel` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.BigOperators` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceHankelReflection` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sourceFourierSquare](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierDraft/Variant51c54b781832d5c91feae1cbd533b4a9987c03e06cc484829158f5513e536220.lean/declarations/sourcefouriersquare--8cb4eb7b87665462196decdc.md) | 25 | `declaration-track:8cb4eb7b87665462196decdc4289f07e2cb7a6043ef7a0368078d83a01559d5d` |
| 2 | `theorem` | [sourceFourierSquare_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierDraft/Variant51c54b781832d5c91feae1cbd533b4a9987c03e06cc484829158f5513e536220.lean/declarations/sourcefouriersquare-integrable--80b4f939cccdf88b33a0755a.md) | 28 | `result-track:80b4f939cccdf88b33a0755af50028be8816275c46c7585526a6e6bd8da8726e` |
| 3 | `theorem` | [sourceFourierSquare_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierDraft/Variant51c54b781832d5c91feae1cbd533b4a9987c03e06cc484829158f5513e536220.lean/declarations/sourcefouriersquare-nonneg--c8df59716f6d08a2ce1ae7e6.md) | 31 | `result-track:c8df59716f6d08a2ce1ae7e6d24061e2b30182dbfbb5a2d36d4d240a62615546` |
| 4 | `theorem` | [sourceFourierSquare_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierDraft/Variant51c54b781832d5c91feae1cbd533b4a9987c03e06cc484829158f5513e536220.lean/declarations/sourcefouriersquare-integral--11304ee6a9b5c31bd4f109c1.md) | 34 | `result-track:11304ee6a9b5c31bd4f109c194c931e90b9c8eeefb3211dbadbc15fce2af9b31` |
| 5 | `theorem` | [standard_correlation_cosine_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierDraft/Variant51c54b781832d5c91feae1cbd533b4a9987c03e06cc484829158f5513e536220.lean/declarations/standard-correlation-cosine-integral--db00874e8c0e47c6056ab48e.md) | 37 | `result-track:db00874e8c0e47c6056ab48e242ead3f6bde49c0a4d31adb82f86a73a086192e` |
| 6 | `theorem` | [source_cosine_product_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierDraft/Variant51c54b781832d5c91feae1cbd533b4a9987c03e06cc484829158f5513e536220.lean/declarations/source-cosine-product-integrable--8f8298a9d2eb02c7b3976d76.md) | 86 | `result-track:8f8298a9d2eb02c7b3976d76d77e84f038b6781b08218be4e15d9cd6511b3dfa` |
| 7 | `theorem` | [source_correlation_fourier](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierDraft/Variant51c54b781832d5c91feae1cbd533b4a9987c03e06cc484829158f5513e536220.lean/declarations/source-correlation-fourier--5d3e19e779a84f472ef4c894.md) | 93 | `result-track:5d3e19e779a84f472ef4c8949132b2f9e3651f2da29c4605025fa4fe704c32c2` |
| 8 | `def` | [arithmeticPolynomial](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierDraft/Variant51c54b781832d5c91feae1cbd533b4a9987c03e06cc484829158f5513e536220.lean/declarations/arithmeticpolynomial--f37a96448aba6da2daf13061.md) | 116 | `declaration-track:f37a96448aba6da2daf13061b2befccfc0942823b0afc597f53a7658910b5c91` |
| 9 | `theorem` | [arithmeticPolynomial_real_product](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierDraft/Variant51c54b781832d5c91feae1cbd533b4a9987c03e06cc484829158f5513e536220.lean/declarations/arithmeticpolynomial-real-product--cb14efc229f450a21376f387.md) | 119 | `result-track:cb14efc229f450a21376f387ab9728f15a473001541332bad15cc2fdb59bc205` |
| 10 | `def` | [jointFourierIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierDraft/Variant51c54b781832d5c91feae1cbd533b4a9987c03e06cc484829158f5513e536220.lean/declarations/jointfourierintegrand--ec7fbe9d0a72eb956c88eb11.md) | 146 | `declaration-track:ec7fbe9d0a72eb956c88eb11d03b7a00bd5c5d47bbec7768f3d9b3e39d30acf7` |
| 11 | `theorem` | [jointFourierIntegrand_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierDraft/Variant51c54b781832d5c91feae1cbd533b4a9987c03e06cc484829158f5513e536220.lean/declarations/jointfourierintegrand-eq--a6b723ec4874b8ef89e2f056.md) | 149 | `result-track:a6b723ec4874b8ef89e2f05678cae32f73526d00e1f1ad48d629054b33cb3594` |
| 12 | `theorem` | [jointFourierIntegrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierDraft/Variant51c54b781832d5c91feae1cbd533b4a9987c03e06cc484829158f5513e536220.lean/declarations/jointfourierintegrand-integrable--987cdebf08c636142903ef65.md) | 162 | `result-track:987cdebf08c636142903ef654b78f9293b58b8a40c276234f9057bf402c38953` |
| 13 | `theorem` | [jointFourierIntegrand_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierDraft/Variant51c54b781832d5c91feae1cbd533b4a9987c03e06cc484829158f5513e536220.lean/declarations/jointfourierintegrand-integral--9b99e66beceefd8676d730f5.md) | 172 | `result-track:9b99e66beceefd8676d730f5311a81673b40de9c278d5981c467903b349a8682` |
| 14 | `theorem` | [finite_correlation_fourier](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierDraft/Variant51c54b781832d5c91feae1cbd533b4a9987c03e06cc484829158f5513e536220.lean/declarations/finite-correlation-fourier--c4ec8da1e33738a44fa318d8.md) | 191 | `result-track:c4ec8da1e33738a44fa318d81b4270a76b61bcc466cf1ec8e3f92f35371d8a58` |
| 15 | `theorem` | [finite_hankel_fourier](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierDraft/Variant51c54b781832d5c91feae1cbd533b4a9987c03e06cc484829158f5513e536220.lean/declarations/finite-hankel-fourier--0cd8fe64e876f73568dc62e1.md) | 206 | `result-track:0cd8fe64e876f73568dc62e18f95cb94b475adf14a3799e965a533171e647ddc` |
| 16 | `theorem` | [joint_phase_is_not_conjugate_phase](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierDraft/Variant51c54b781832d5c91feae1cbd533b4a9987c03e06cc484829158f5513e536220.lean/declarations/joint-phase-is-not-conjugate-phase--36550980d9e37019b5af21c3.md) | 226 | `result-track:36550980d9e37019b5af21c3f6755ff7fb1a4cd1159337b4726b3acad2309312` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
