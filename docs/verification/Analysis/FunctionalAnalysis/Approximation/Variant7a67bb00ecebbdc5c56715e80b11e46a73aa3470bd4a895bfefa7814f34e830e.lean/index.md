# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Approximation.Variant7a67bb00ecebbdc5c56715e80b11e46a73aa3470bd4a895bfefa7814f34e830e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5414e3f1a4c9f4e34cc582880456806a910a2c13",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Approximation/Variant7a67bb00ecebbdc5c56715e80b11e46a73aa3470bd4a895bfefa7814f34e830e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Approximation/Variant7a67bb00ecebbdc5c56715e80b11e46a73aa3470bd4a895bfefa7814f34e830e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Approximation/Variant7a67bb00ecebbdc5c56715e80b11e46a73aa3470bd4a895bfefa7814f34e830e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5414e3f1a4c9f4e34cc582880456806a910a2c13`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Approximation/Variant7a67bb00ecebbdc5c56715e80b11e46a73aa3470bd4a895bfefa7814f34e830e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Approximation/Variant7a67bb00ecebbdc5c56715e80b11e46a73aa3470bd4a895bfefa7814f34e830e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Semicontinuity.Lindelof` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [convex_re_epigraph](../../../../../mathematics/Analysis/FunctionalAnalysis/Approximation/Variant7a67bb00ecebbdc5c56715e80b11e46a73aa3470bd4a895bfefa7814f34e830e.lean/declarations/convex-re-epigraph--a9f17672981bae86d8509365.md) | 48 | `result-track:a9f17672981bae86d8509365855eda90ae809dd8a5c1efcf3c7533a9bdd037ed` |
| 2 | `theorem` | [_root_.GRWTSK.Analysis.FunctionalAnalysis.ConvexReEpigraph.Variant592e1b82277b5666ecac32d870bce2b6ee855893fdd558bc6506de8390900dcb.LowerSemicontinuousOn.isClosed_re_epigraph](../../../../../mathematics/Analysis/FunctionalAnalysis/Approximation/Variant7a67bb00ecebbdc5c56715e80b11e46a73aa3470bd4a895bfefa7814f34e830e.lean/declarations/root-grwtsk-analysis-functionalanalysis-convexreepigraph-variant592e1b82--431dd22bd4656e2a0ae977e8.md) | 56 | `result-track:431dd22bd4656e2a0ae977e8dd0c5a3993c4a23fc4b6c22c1c072a322cd16234` |
| 3 | `lemma` | [exists_affine_le_of_lt](../../../../../mathematics/Analysis/FunctionalAnalysis/Approximation/Variant7a67bb00ecebbdc5c56715e80b11e46a73aa3470bd4a895bfefa7814f34e830e.lean/declarations/exists-affine-le-of-lt--8e519cc5cc8986c330fa7f22.md) | 76 | `result-track:8e519cc5cc8986c330fa7f22cbc61807ca0eb401e82810c825809ea49f2b5e4d` |
| 4 | `lemma` | [exists_affine_le_of_lt_real](../../../../../mathematics/Analysis/FunctionalAnalysis/Approximation/Variant7a67bb00ecebbdc5c56715e80b11e46a73aa3470bd4a895bfefa7814f34e830e.lean/declarations/exists-affine-le-of-lt-real--bf5cd6c9b1ab795379114689.md) | 98 | `result-track:bf5cd6c9b1ab795379114689a66cfbb9f3c7c7dfa1dd2828b33f8fbfd3b21ef7` |
| 5 | `lemma` | [exists_affine_le_real](../../../../../mathematics/Analysis/FunctionalAnalysis/Approximation/Variant7a67bb00ecebbdc5c56715e80b11e46a73aa3470bd4a895bfefa7814f34e830e.lean/declarations/exists-affine-le-real--488818060a0940ef480478ba.md) | 105 | `result-track:488818060a0940ef480478baec6ed2bf8f705805421e937bc0fbc6f5890bd021` |
| 6 | `theorem` | [sSup_affine_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/Approximation/Variant7a67bb00ecebbdc5c56715e80b11e46a73aa3470bd4a895bfefa7814f34e830e.lean/declarations/ssup-affine-eq--4143bf13732644e92aad2b3e.md) | 117 | `result-track:4143bf13732644e92aad2b3ec6f3f7e7f9db4b19be871637bb0aba1e2fffc13b` |
| 7 | `theorem` | [sSup_of_countable_affine_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/Approximation/Variant7a67bb00ecebbdc5c56715e80b11e46a73aa3470bd4a895bfefa7814f34e830e.lean/declarations/ssup-of-countable-affine-eq--87e6bcbbe11c8c6445a1f207.md) | 134 | `result-track:87e6bcbbe11c8c6445a1f20770359288cd4a9346136f5815a34b24ce45ae546c` |
| 8 | `theorem` | [sSup_of_nat_affine_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/Approximation/Variant7a67bb00ecebbdc5c56715e80b11e46a73aa3470bd4a895bfefa7814f34e830e.lean/declarations/ssup-of-nat-affine-eq--70c49c5e68079e5db3cb6eff.md) | 158 | `result-track:70c49c5e68079e5db3cb6efff1f2e6c38abb8f93c395b4d95f4346435ffb1409` |
| 9 | `theorem` | [univ_sSup_affine_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/Approximation/Variant7a67bb00ecebbdc5c56715e80b11e46a73aa3470bd4a895bfefa7814f34e830e.lean/declarations/univ-ssup-affine-eq--55882beafe22284b4356c038.md) | 184 | `result-track:55882beafe22284b4356c038bf6241289b0c6bbd620eea60693e32a1b1c5c458` |
| 10 | `theorem` | [univ_sSup_of_countable_affine_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/Approximation/Variant7a67bb00ecebbdc5c56715e80b11e46a73aa3470bd4a895bfefa7814f34e830e.lean/declarations/univ-ssup-of-countable-affine-eq--362dfd41785eed6f16b7e90d.md) | 206 | `result-track:362dfd41785eed6f16b7e90d48a3f17e831e7c3fed8eb82e1e59704eb9be545f` |
| 11 | `theorem` | [univ_sSup_of_nat_affine_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/Approximation/Variant7a67bb00ecebbdc5c56715e80b11e46a73aa3470bd4a895bfefa7814f34e830e.lean/declarations/univ-ssup-of-nat-affine-eq--162d6892d6988d75449b9b10.md) | 227 | `result-track:162d6892d6988d75449b9b101a9ed84c47250a157a9e55a9abb41fe9f544da64` |
| 12 | `theorem` | [real_sSup_affine_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/Approximation/Variant7a67bb00ecebbdc5c56715e80b11e46a73aa3470bd4a895bfefa7814f34e830e.lean/declarations/real-ssup-affine-eq--6a815160317a9d7d62d9be14.md) | 245 | `result-track:6a815160317a9d7d62d9be14bc030d64dcc851c8ee93c621a8e9698295d9af96` |
| 13 | `theorem` | [real_sSup_of_countable_affine_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/Approximation/Variant7a67bb00ecebbdc5c56715e80b11e46a73aa3470bd4a895bfefa7814f34e830e.lean/declarations/real-ssup-of-countable-affine-eq--2c2833badc16dd5b1c44797b.md) | 252 | `result-track:2c2833badc16dd5b1c44797b2032d0b4bfd034c31c9549a1f1faaee72669704c` |
| 14 | `theorem` | [real_sSup_of_nat_affine_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/Approximation/Variant7a67bb00ecebbdc5c56715e80b11e46a73aa3470bd4a895bfefa7814f34e830e.lean/declarations/real-ssup-of-nat-affine-eq--73ce63c6aa4fac730a4c3f33.md) | 259 | `result-track:73ce63c6aa4fac730a4c3f330842f86849261bcb988de2a74fb30f9904ecd3e6` |
| 15 | `theorem` | [real_univ_sSup_affine_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/Approximation/Variant7a67bb00ecebbdc5c56715e80b11e46a73aa3470bd4a895bfefa7814f34e830e.lean/declarations/real-univ-ssup-affine-eq--435f5144c058dc016342bc02.md) | 267 | `result-track:435f5144c058dc016342bc0202987d2acaf206cbf82f0b3beebf6a10c54eb9b0` |
| 16 | `theorem` | [real_univ_sSup_of_countable_affine_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/Approximation/Variant7a67bb00ecebbdc5c56715e80b11e46a73aa3470bd4a895bfefa7814f34e830e.lean/declarations/real-univ-ssup-of-countable-affine-eq--db83b85d954c921af3bb2612.md) | 272 | `result-track:db83b85d954c921af3bb2612211ca613d8ee2bedd13fc5160a3a9cbd092c4e61` |
| 17 | `theorem` | [real_univ_sSup_of_nat_affine_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/Approximation/Variant7a67bb00ecebbdc5c56715e80b11e46a73aa3470bd4a895bfefa7814f34e830e.lean/declarations/real-univ-ssup-of-nat-affine-eq--9128ba6b08f9b19b93aeed7f.md) | 279 | `result-track:9128ba6b08f9b19b93aeed7ffc1a33a5b184b9218df2f62e5418504b71d6016a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
