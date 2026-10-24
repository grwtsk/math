# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Inv.Variant4f5173463f78d97f09e8f3672f803c73e576411af0b0e54ff3295168f4bb248e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8a9a94c2d95ee7cdbb47814f163d5fa9fcb75192",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Inv/Variant4f5173463f78d97f09e8f3672f803c73e576411af0b0e54ff3295168f4bb248e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inv/Variant4f5173463f78d97f09e8f3672f803c73e576411af0b0e54ff3295168f4bb248e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inv/Variant4f5173463f78d97f09e8f3672f803c73e576411af0b0e54ff3295168f4bb248e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8a9a94c2d95ee7cdbb47814f163d5fa9fcb75192`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Inv/Variant4f5173463f78d97f09e8f3672f803c73e576411af0b0e54ff3295168f4bb248e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Inv/Variant4f5173463f78d97f09e8f3672f803c73e576411af0b0e54ff3295168f4bb248e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Mul` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Comp` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasStrictDerivAt_inv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inv/Variant4f5173463f78d97f09e8f3672f803c73e576411af0b0e54ff3295168f4bb248e.lean/declarations/hasstrictderivat-inv--889d63c1471d3ae517273a95.md) | 37 | `result-track:889d63c1471d3ae517273a9516702a8d6484d9c72259df183fea3cb0ec0a25ac` |
| 2 | `theorem` | [hasDerivAt_inv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inv/Variant4f5173463f78d97f09e8f3672f803c73e576411af0b0e54ff3295168f4bb248e.lean/declarations/hasderivat-inv--026c63ee1bf3722d596abdf4.md) | 52 | `result-track:026c63ee1bf3722d596abdf4d08d5294b2b1cc1dab53b9bb373942e74d1219c5` |
| 3 | `theorem` | [hasDerivWithinAt_inv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inv/Variant4f5173463f78d97f09e8f3672f803c73e576411af0b0e54ff3295168f4bb248e.lean/declarations/hasderivwithinat-inv--ba53195266f1fe02bac5c502.md) | 55 | `result-track:ba53195266f1fe02bac5c502b1628c7b0e56604a45ae94f537d996a66e660b78` |
| 4 | `theorem` | [differentiableAt_inv_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inv/Variant4f5173463f78d97f09e8f3672f803c73e576411af0b0e54ff3295168f4bb248e.lean/declarations/differentiableat-inv-iff--2b3e7be96274060e9d88818d.md) | 59 | `result-track:2b3e7be96274060e9d88818df1fa3ba1db9fbcffcf30faa41571f3b215897f61` |
| 5 | `theorem` | [deriv_inv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inv/Variant4f5173463f78d97f09e8f3672f803c73e576411af0b0e54ff3295168f4bb248e.lean/declarations/deriv-inv--48248b5b8e28be473c0d4ad1.md) | 63 | `result-track:48248b5b8e28be473c0d4ad1dee1db9ffc41dafa90f5d92560d75bb1cb816329` |
| 6 | `theorem` | [deriv_inv'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inv/Variant4f5173463f78d97f09e8f3672f803c73e576411af0b0e54ff3295168f4bb248e.lean/declarations/deriv-inv--55035672d24b883c988e09cf.md) | 69 | `result-track:55035672d24b883c988e09cf36f6eb4ea9e7fa07ef56f7594556f76ec8ef5449` |
| 7 | `theorem` | [derivWithin_inv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inv/Variant4f5173463f78d97f09e8f3672f803c73e576411af0b0e54ff3295168f4bb248e.lean/declarations/derivwithin-inv--636e2890649f2c556d6f3a6f.md) | 72 | `result-track:636e2890649f2c556d6f3a6f5b9d691c3e82d19d61c8433769463af225193be0` |
| 8 | `theorem` | [hasFDerivAt_inv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inv/Variant4f5173463f78d97f09e8f3672f803c73e576411af0b0e54ff3295168f4bb248e.lean/declarations/hasfderivat-inv--b9c644520d5df6b1c62aef35.md) | 77 | `result-track:b9c644520d5df6b1c62aef35a91a24bf71ee51caf1a4ba75db28d98f96438f44` |
| 9 | `theorem` | [hasStrictFDerivAt_inv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inv/Variant4f5173463f78d97f09e8f3672f803c73e576411af0b0e54ff3295168f4bb248e.lean/declarations/hasstrictfderivat-inv--eca4d6da8f6c3fb49a6cd602.md) | 81 | `result-track:eca4d6da8f6c3fb49a6cd6020e4b8589d82a46a43bfbf86146d72d5f4567c13b` |
| 10 | `theorem` | [hasFDerivWithinAt_inv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inv/Variant4f5173463f78d97f09e8f3672f803c73e576411af0b0e54ff3295168f4bb248e.lean/declarations/hasfderivwithinat-inv--b236a3b8035a6f93cd6b9698.md) | 85 | `result-track:b236a3b8035a6f93cd6b96981ee4cbe4e9d4fed93b9f68199602fa3bac2ff67f` |
| 11 | `theorem` | [fderiv_inv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inv/Variant4f5173463f78d97f09e8f3672f803c73e576411af0b0e54ff3295168f4bb248e.lean/declarations/fderiv-inv--99eabb025948bffa3ad39f23.md) | 89 | `result-track:99eabb025948bffa3ad39f233d38c05045e22bc568c9dbc87d912a82df7f58ad` |
| 12 | `theorem` | [fderivWithin_inv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inv/Variant4f5173463f78d97f09e8f3672f803c73e576411af0b0e54ff3295168f4bb248e.lean/declarations/fderivwithin-inv--4ebb4bc732472b38ad9640ba.md) | 92 | `result-track:4ebb4bc732472b38ad9640ba71565482aac87d67780442381ebac3be696ccee3` |
| 13 | `theorem` | [HasDerivWithinAt.inv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inv/Variant4f5173463f78d97f09e8f3672f803c73e576411af0b0e54ff3295168f4bb248e.lean/declarations/hasderivwithinat-inv--a6338deb98db36bdcc7a11c2.md) | 99 | `result-track:a6338deb98db36bdcc7a11c29562cf3ca7c5dd4d0929456f432d5660ce31ecb7` |
| 14 | `theorem` | [HasDerivAt.inv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inv/Variant4f5173463f78d97f09e8f3672f803c73e576411af0b0e54ff3295168f4bb248e.lean/declarations/hasderivat-inv--f1bbb67e8e39abcce5db4b11.md) | 104 | `result-track:f1bbb67e8e39abcce5db4b11ab597ee7f378c1fb480d67f227cd252af13f3810` |
| 15 | `theorem` | [derivWithin_inv'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inv/Variant4f5173463f78d97f09e8f3672f803c73e576411af0b0e54ff3295168f4bb248e.lean/declarations/derivwithin-inv--4a555c9f91617b4d1429d982.md) | 109 | `result-track:4a555c9f91617b4d1429d98203f7e4a8f9cc61079d8092ec58c2ff1728aad2bb` |
| 16 | `theorem` | [deriv_inv''](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inv/Variant4f5173463f78d97f09e8f3672f803c73e576411af0b0e54ff3295168f4bb248e.lean/declarations/deriv-inv--ebb96445ef3ba86c8739ebb7.md) | 116 | `result-track:ebb96445ef3ba86c8739ebb7739a844593643dcb41745fb316a9417abb984d56` |
| 17 | `theorem` | [HasDerivWithinAt.div](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inv/Variant4f5173463f78d97f09e8f3672f803c73e576411af0b0e54ff3295168f4bb248e.lean/declarations/hasderivwithinat-div--83e6640b8135115da7f72549.md) | 128 | `result-track:83e6640b8135115da7f725497b9ba0051f9ebb65a593fd85f17094c0e2ac4ff7` |
| 18 | `theorem` | [HasStrictDerivAt.div](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inv/Variant4f5173463f78d97f09e8f3672f803c73e576411af0b0e54ff3295168f4bb248e.lean/declarations/hasstrictderivat-div--78cdf6402294bd62f79cc486.md) | 136 | `result-track:78cdf6402294bd62f79cc486d3bc19945923466d0872c73a7f02168f4ceec666` |
| 19 | `theorem` | [HasDerivAt.div](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inv/Variant4f5173463f78d97f09e8f3672f803c73e576411af0b0e54ff3295168f4bb248e.lean/declarations/hasderivat-div--82d05a7ccc336821516b57a3.md) | 143 | `result-track:82d05a7ccc336821516b57a3447b8f9298edecc3cc894e94e286a0739600cabf` |
| 20 | `theorem` | [DifferentiableWithinAt.div](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inv/Variant4f5173463f78d97f09e8f3672f803c73e576411af0b0e54ff3295168f4bb248e.lean/declarations/differentiablewithinat-div--7fb7a3f9f2365f3da1c9f24d.md) | 148 | `result-track:7fb7a3f9f2365f3da1c9f24d65871baa20b45d3f94a9ba91ab241058b736b17c` |
| 21 | `theorem` | [DifferentiableAt.div](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inv/Variant4f5173463f78d97f09e8f3672f803c73e576411af0b0e54ff3295168f4bb248e.lean/declarations/differentiableat-div--68d81fcd77fb6adce42aa246.md) | 154 | `result-track:68d81fcd77fb6adce42aa2466070f813bf370f0a65fbfe57e407e02fa4adc987` |
| 22 | `theorem` | [DifferentiableOn.div](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inv/Variant4f5173463f78d97f09e8f3672f803c73e576411af0b0e54ff3295168f4bb248e.lean/declarations/differentiableon-div--6dd02c6c4870c3b6c8e7d6d2.md) | 158 | `result-track:6dd02c6c4870c3b6c8e7d6d29149c539a8f1d39998416db0c709c778ecf3a296` |
| 23 | `theorem` | [Differentiable.div](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inv/Variant4f5173463f78d97f09e8f3672f803c73e576411af0b0e54ff3295168f4bb248e.lean/declarations/differentiable-div--473939cd8ae463dd94c2dc62.md) | 163 | `result-track:473939cd8ae463dd94c2dc627d8f1a161394f1db1c82fc73a7a46e0c273a95dd` |
| 24 | `theorem` | [derivWithin_div](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inv/Variant4f5173463f78d97f09e8f3672f803c73e576411af0b0e54ff3295168f4bb248e.lean/declarations/derivwithin-div--82ed7b20d6fad73d83271c62.md) | 166 | `result-track:82ed7b20d6fad73d83271c627cb214733c57667682611587fd19a7bc80809b7f` |
| 25 | `theorem` | [deriv_div](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inv/Variant4f5173463f78d97f09e8f3672f803c73e576411af0b0e54ff3295168f4bb248e.lean/declarations/deriv-div--f04b841b29c355e07a37de1e.md) | 175 | `result-track:f04b841b29c355e07a37de1e7c40af7db7100733e8cc2514d5482d9698ddef48` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
