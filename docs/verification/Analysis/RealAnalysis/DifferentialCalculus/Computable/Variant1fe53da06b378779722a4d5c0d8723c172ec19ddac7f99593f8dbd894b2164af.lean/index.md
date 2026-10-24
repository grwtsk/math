# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Computable.Variant1fe53da06b378779722a4d5c0d8723c172ec19ddac7f99593f8dbd894b2164af

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "48946ce5b950b9ecdd33380adfc507b2693278e8",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variant1fe53da06b378779722a4d5c0d8723c172ec19ddac7f99593f8dbd894b2164af.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variant1fe53da06b378779722a4d5c0d8723c172ec19ddac7f99593f8dbd894b2164af.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variant1fe53da06b378779722a4d5c0d8723c172ec19ddac7f99593f8dbd894b2164af.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `48946ce5b950b9ecdd33380adfc507b2693278e8`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variant1fe53da06b378779722a4d5c0d8723c172ec19ddac7f99593f8dbd894b2164af.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variant1fe53da06b378779722a4d5c0d8723c172ec19ddac7f99593f8dbd894b2164af.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.AD.Correctness` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [expCore](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variant1fe53da06b378779722a4d5c0d8723c172ec19ddac7f99593f8dbd894b2164af.lean/declarations/expcore--d7835fac014122c91e5929e0.md) | 54 | `declaration-track:d7835fac014122c91e5929e0faa59c6414950596e8d73650f4400131b976258c` |
| 2 | `def` | [sinCore](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variant1fe53da06b378779722a4d5c0d8723c172ec19ddac7f99593f8dbd894b2164af.lean/declarations/sincore--bca9512d321ee61f5f607230.md) | 60 | `declaration-track:bca9512d321ee61f5f607230b86a31e37eb82077a4a993d5d3e119450778d845` |
| 3 | `def` | [cosCore](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variant1fe53da06b378779722a4d5c0d8723c172ec19ddac7f99593f8dbd894b2164af.lean/declarations/coscore--1f8660cd287b52803eef3689.md) | 65 | `declaration-track:1f8660cd287b52803eef36896dd3087a09546fe8c2147b87ff965f907516ad98` |
| 4 | `def` | [logCore](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variant1fe53da06b378779722a4d5c0d8723c172ec19ddac7f99593f8dbd894b2164af.lean/declarations/logcore--4688bf62e77cb83c241469f0.md) | 71 | `declaration-track:4688bf62e77cb83c241469f02619364265fdfd3e54e68b7af6063bea2b3fb030` |
| 5 | `def` | [sinhCore](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variant1fe53da06b378779722a4d5c0d8723c172ec19ddac7f99593f8dbd894b2164af.lean/declarations/sinhcore--ec8d8d97594c0f3e34ff1228.md) | 77 | `declaration-track:ec8d8d97594c0f3e34ff1228bb7ee57d028c98d360cce8bc3084c87cff249cfd` |
| 6 | `def` | [coshCore](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variant1fe53da06b378779722a4d5c0d8723c172ec19ddac7f99593f8dbd894b2164af.lean/declarations/coshcore--be6fc8890efc8c9843efe66f.md) | 82 | `declaration-track:be6fc8890efc8c9843efe66f440fd5b33040261842e4cfad6b35ef9dfa7640b9` |
| 7 | `def` | [tanhCore](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variant1fe53da06b378779722a4d5c0d8723c172ec19ddac7f99593f8dbd894b2164af.lean/declarations/tanhcore--d82e2aeb32a297de2e191466.md) | 88 | `declaration-track:d82e2aeb32a297de2e19146698078f107c28cee243ab424884914be6403e8d92` |
| 8 | `def` | [evalDualCore](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variant1fe53da06b378779722a4d5c0d8723c172ec19ddac7f99593f8dbd894b2164af.lean/declarations/evaldualcore--c97c0ad5a507a2c28b69b6c6.md) | 102 | `declaration-track:c97c0ad5a507a2c28b69b6c6b15c00b00b32169477fd62db7631d0f81e7c66be` |
| 9 | `def` | [derivIntervalCore](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variant1fe53da06b378779722a4d5c0d8723c172ec19ddac7f99593f8dbd894b2164af.lean/declarations/derivintervalcore--6d162443c144b5f8905d79c9.md) | 126 | `declaration-track:6d162443c144b5f8905d79c9dc905ec52400c6c3fd34209ed8cda1e287c39437` |
| 10 | `def` | [evalDomainValidDual](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variant1fe53da06b378779722a4d5c0d8723c172ec19ddac7f99593f8dbd894b2164af.lean/declarations/evaldomainvaliddual--4d9ef6ff820e3b029f8fb739.md) | 132 | `declaration-track:4d9ef6ff820e3b029f8fb7399b20c37392d6ade9d039a1efc6e59c3a4a3bf7f7` |
| 11 | `theorem` | [evalDualCore_val_correct](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variant1fe53da06b378779722a4d5c0d8723c172ec19ddac7f99593f8dbd894b2164af.lean/declarations/evaldualcore-val-correct--ea42e288a5ae74bb352954da.md) | 158 | `result-track:ea42e288a5ae74bb352954dab2268c9c5b60bd75bd7dc4c1aee5b2990433e8ba` |
| 12 | `theorem` | [evalDomainValidDual_of_ExprSupported](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variant1fe53da06b378779722a4d5c0d8723c172ec19ddac7f99593f8dbd894b2164af.lean/declarations/evaldomainvaliddual-of-exprsupported--9a76ae441cbb143eb58bb52b.md) | 225 | `result-track:9a76ae441cbb143eb58bb52bb45ba1c8ba8dcd53d40543f4d4b88eae3d632fd6` |
| 13 | `theorem` | [evalDualCore_der_correct](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variant1fe53da06b378779722a4d5c0d8723c172ec19ddac7f99593f8dbd894b2164af.lean/declarations/evaldualcore-der-correct--db344bf51cdae36f06b7e711.md) | 239 | `result-track:db344bf51cdae36f06b7e711093262633c0cfca9f06db1e211f975e6ec357610` |
| 14 | `theorem` | [derivIntervalCore_correct](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variant1fe53da06b378779722a4d5c0d8723c172ec19ddac7f99593f8dbd894b2164af.lean/declarations/derivintervalcore-correct--4f2e6127cd4c3fa1492ae79e.md) | 302 | `result-track:4f2e6127cd4c3fa1492ae79e8ea03d38bb032c0b276b4bb31b24fb7bec705138` |
| 15 | `theorem` | [derivIntervalCore_nonzero_implies_deriv_nonzero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variant1fe53da06b378779722a4d5c0d8723c172ec19ddac7f99593f8dbd894b2164af.lean/declarations/derivintervalcore-nonzero-implies-deriv-nonzero--dbd220487cc649c6ea3a36f6.md) | 309 | `result-track:dbd220487cc649c6ea3a36f61ec239a968a67486a436eb5800c6825803e01992` |
| 16 | `theorem` | [derivIntervalCore_pos_implies_deriv_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variant1fe53da06b378779722a4d5c0d8723c172ec19ddac7f99593f8dbd894b2164af.lean/declarations/derivintervalcore-pos-implies-deriv-pos--83ebd788ee46f211520fb61e.md) | 323 | `result-track:83ebd788ee46f211520fb61ea272877e62ce36fbc13250e4d5d746383534d3f6` |
| 17 | `theorem` | [derivIntervalCore_neg_implies_deriv_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variant1fe53da06b378779722a4d5c0d8723c172ec19ddac7f99593f8dbd894b2164af.lean/declarations/derivintervalcore-neg-implies-deriv-neg--4da8124c2c7b09a9fad208d7.md) | 334 | `result-track:4da8124c2c7b09a9fad208d749fa3a674a0375bf871a3fd00140b8ada889a98d` |
| 18 | `theorem` | [strictMonoOn_of_derivIntervalCore_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variant1fe53da06b378779722a4d5c0d8723c172ec19ddac7f99593f8dbd894b2164af.lean/declarations/strictmonoon-of-derivintervalcore-pos--45ecd65c5a10f2b43ab1e377.md) | 345 | `result-track:45ecd65c5a10f2b43ab1e37758c3f9310870089636dfb4236063d72311102226` |
| 19 | `theorem` | [strictAntiOn_of_derivIntervalCore_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variant1fe53da06b378779722a4d5c0d8723c172ec19ddac7f99593f8dbd894b2164af.lean/declarations/strictantion-of-derivintervalcore-neg--f176f408b759913d51ec1c0a.md) | 361 | `result-track:f176f408b759913d51ec1c0a1d1fbeb158160eb45856c637042b48ba1ae91c3c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
