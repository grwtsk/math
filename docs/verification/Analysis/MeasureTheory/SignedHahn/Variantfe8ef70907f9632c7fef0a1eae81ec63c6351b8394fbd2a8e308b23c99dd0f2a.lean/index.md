# Verification target: GRWTSK.Analysis.MeasureTheory.SignedHahn.Variantfe8ef70907f9632c7fef0a1eae81ec63c6351b8394fbd2a8e308b23c99dd0f2a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "baddffdf5997e4fcb59160d7dfc5bc243a79d632",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/SignedHahn/Variantfe8ef70907f9632c7fef0a1eae81ec63c6351b8394fbd2a8e308b23c99dd0f2a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/SignedHahn/Variantfe8ef70907f9632c7fef0a1eae81ec63c6351b8394fbd2a8e308b23c99dd0f2a.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/SignedHahn/Variantfe8ef70907f9632c7fef0a1eae81ec63c6351b8394fbd2a8e308b23c99dd0f2a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `baddffdf5997e4fcb59160d7dfc5bc243a79d632`.

Source path: `GRWTSK/Analysis/MeasureTheory/SignedHahn/Variantfe8ef70907f9632c7fef0a1eae81ec63c6351b8394fbd2a8e308b23c99dd0f2a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/SignedHahn/Variantfe8ef70907f9632c7fef0a1eae81ec63c6351b8394fbd2a8e308b23c99dd0f2a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.VectorMeasure` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SymmDiff` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ExistsOneDivLT](../../../../../mathematics/Analysis/MeasureTheory/SignedHahn/Variantfe8ef70907f9632c7fef0a1eae81ec63c6351b8394fbd2a8e308b23c99dd0f2a.lean/declarations/existsonedivlt--a8b7bc580dfbe5c431c0720c.md) | 104 | `declaration-track:a8b7bc580dfbe5c431c0720c9fe5d0224c9a8e236d61b8191a9d882d33fd9c6a` |
| 2 | `theorem` | [existsNatOneDivLTMeasure_of_not_negative](../../../../../mathematics/Analysis/MeasureTheory/SignedHahn/Variantfe8ef70907f9632c7fef0a1eae81ec63c6351b8394fbd2a8e308b23c99dd0f2a.lean/declarations/existsnatonedivltmeasure-of-not-negative--903fb3359bf15e6bfff27bd1.md) | 107 | `result-track:903fb3359bf15e6bfff27bd1e2562eef4fc951b8a5bdcbe1627ec1be44bed005` |
| 3 | `def` | [findExistsOneDivLT](../../../../../mathematics/Analysis/MeasureTheory/SignedHahn/Variantfe8ef70907f9632c7fef0a1eae81ec63c6351b8394fbd2a8e308b23c99dd0f2a.lean/declarations/findexistsonedivlt--004979360a293bf682d6d234.md) | 115 | `declaration-track:004979360a293bf682d6d234cf654193760d6c1e123d77be985ebd37da97a5e3` |
| 4 | `theorem` | [findExistsOneDivLT_spec](../../../../../mathematics/Analysis/MeasureTheory/SignedHahn/Variantfe8ef70907f9632c7fef0a1eae81ec63c6351b8394fbd2a8e308b23c99dd0f2a.lean/declarations/findexistsonedivlt-spec--e611e6d0b8541a340c9166c3.md) | 118 | `result-track:e611e6d0b8541a340c9166c373dfedb275e6f48e86ed49f54af62f8aa461ef25` |
| 5 | `theorem` | [findExistsOneDivLT_min](../../../../../mathematics/Analysis/MeasureTheory/SignedHahn/Variantfe8ef70907f9632c7fef0a1eae81ec63c6351b8394fbd2a8e308b23c99dd0f2a.lean/declarations/findexistsonedivlt-min--fe5fd18b7c972d5ca568e33d.md) | 123 | `result-track:fe5fd18b7c972d5ca568e33d09f58824e4ca07f978ecf03fab1ac3aaf2957654` |
| 6 | `def` | [someExistsOneDivLT](../../../../../mathematics/Analysis/MeasureTheory/SignedHahn/Variantfe8ef70907f9632c7fef0a1eae81ec63c6351b8394fbd2a8e308b23c99dd0f2a.lean/declarations/someexistsonedivlt--c100bcb64ae86e16870e35ad.md) | 131 | `declaration-track:c100bcb64ae86e16870e35ad65a097f14096544de2f3e2bda63077047de6cc88` |
| 7 | `theorem` | [someExistsOneDivLT_spec](../../../../../mathematics/Analysis/MeasureTheory/SignedHahn/Variantfe8ef70907f9632c7fef0a1eae81ec63c6351b8394fbd2a8e308b23c99dd0f2a.lean/declarations/someexistsonedivlt-spec--aa74aefcabee9d8755166035.md) | 134 | `result-track:aa74aefcabee9d8755166035af73f9e7dbf661a315edbe212f4b7d4790a39522` |
| 8 | `theorem` | [someExistsOneDivLT_subset](../../../../../mathematics/Analysis/MeasureTheory/SignedHahn/Variantfe8ef70907f9632c7fef0a1eae81ec63c6351b8394fbd2a8e308b23c99dd0f2a.lean/declarations/someexistsonedivlt-subset--b0504d7fd2b995aec5cf1d60.md) | 141 | `result-track:b0504d7fd2b995aec5cf1d60a994a5da2667f407d7dec6195d3f1eff11900cdf` |
| 9 | `theorem` | [someExistsOneDivLT_subset'](../../../../../mathematics/Analysis/MeasureTheory/SignedHahn/Variantfe8ef70907f9632c7fef0a1eae81ec63c6351b8394fbd2a8e308b23c99dd0f2a.lean/declarations/someexistsonedivlt-subset--5bc1186b1f97d7723a24d56d.md) | 149 | `result-track:5bc1186b1f97d7723a24d56d5ac87c8fd65e030c411b0c72571caba6d551941d` |
| 10 | `theorem` | [someExistsOneDivLT_measurableSet](../../../../../mathematics/Analysis/MeasureTheory/SignedHahn/Variantfe8ef70907f9632c7fef0a1eae81ec63c6351b8394fbd2a8e308b23c99dd0f2a.lean/declarations/someexistsonedivlt-measurableset--701d9566c45bc2e2109d97fa.md) | 152 | `result-track:701d9566c45bc2e2109d97fad6b7deaf49f412b84163bf5f8ba42a376472ab50` |
| 11 | `theorem` | [someExistsOneDivLT_lt](../../../../../mathematics/Analysis/MeasureTheory/SignedHahn/Variantfe8ef70907f9632c7fef0a1eae81ec63c6351b8394fbd2a8e308b23c99dd0f2a.lean/declarations/someexistsonedivlt-lt--766f060d7a60e86e8ca4105f.md) | 160 | `result-track:766f060d7a60e86e8ca4105f9220ab39ac1893394590c4d68d708babeff3da51` |
| 12 | `def` | [restrictNonposSeq](../../../../../mathematics/Analysis/MeasureTheory/SignedHahn/Variantfe8ef70907f9632c7fef0a1eae81ec63c6351b8394fbd2a8e308b23c99dd0f2a.lean/declarations/restrictnonposseq--239b57f07a29180d03357cf1.md) | 171 | `declaration-track:239b57f07a29180d03357cf1c817af5284303ad34aa5809a7ac9f4ca4e9b13a2` |
| 13 | `theorem` | [restrictNonposSeq_succ](../../../../../mathematics/Analysis/MeasureTheory/SignedHahn/Variantfe8ef70907f9632c7fef0a1eae81ec63c6351b8394fbd2a8e308b23c99dd0f2a.lean/declarations/restrictnonposseq-succ--5a7d202ef363671f294e75da.md) | 180 | `result-track:5a7d202ef363671f294e75da68c22305c1427a369bed038c0f7558a65f2e9e52` |
| 14 | `theorem` | [restrictNonposSeq_subset](../../../../../mathematics/Analysis/MeasureTheory/SignedHahn/Variantfe8ef70907f9632c7fef0a1eae81ec63c6351b8394fbd2a8e308b23c99dd0f2a.lean/declarations/restrictnonposseq-subset--3eb9640d7fbe8f4d92456c1e.md) | 184 | `result-track:3eb9640d7fbe8f4d92456c1ef1573c95e882ff09c3e1564342c3b6ebb996091b` |
| 15 | `theorem` | [restrictNonposSeq_lt](../../../../../mathematics/Analysis/MeasureTheory/SignedHahn/Variantfe8ef70907f9632c7fef0a1eae81ec63c6351b8394fbd2a8e308b23c99dd0f2a.lean/declarations/restrictnonposseq-lt--b68b15a52ff02b5490fcf0a8.md) | 187 | `result-track:b68b15a52ff02b5490fcf0a8ab2f20e6b2df2cc15b7e4309116214afd449d13e` |
| 16 | `theorem` | [measure_of_restrictNonposSeq](../../../../../mathematics/Analysis/MeasureTheory/SignedHahn/Variantfe8ef70907f9632c7fef0a1eae81ec63c6351b8394fbd2a8e308b23c99dd0f2a.lean/declarations/measure-of-restrictnonposseq--aef6bcdcb9a5d4c1ce90c277.md) | 193 | `result-track:aef6bcdcb9a5d4c1ce90c27766a8926ab0edf5851963be5f23ae3f3d96d38978` |
| 17 | `theorem` | [restrictNonposSeq_measurableSet](../../../../../mathematics/Analysis/MeasureTheory/SignedHahn/Variantfe8ef70907f9632c7fef0a1eae81ec63c6351b8394fbd2a8e308b23c99dd0f2a.lean/declarations/restrictnonposseq-measurableset--b0dd765e992d7cbfa403ff9d.md) | 209 | `result-track:b0dd765e992d7cbfa403ff9dc3f9de4320ca8100137659250b0ded96e768c6c3` |
| 18 | `theorem` | [restrictNonposSeq_disjoint'](../../../../../mathematics/Analysis/MeasureTheory/SignedHahn/Variantfe8ef70907f9632c7fef0a1eae81ec63c6351b8394fbd2a8e308b23c99dd0f2a.lean/declarations/restrictnonposseq-disjoint--c22a7550966dd0f5118a00c3.md) | 215 | `result-track:c22a7550966dd0f5118a00c397b04328efe8dfb3ee3338fb5211198699e16890` |
| 19 | `theorem` | [restrictNonposSeq_disjoint](../../../../../mathematics/Analysis/MeasureTheory/SignedHahn/Variantfe8ef70907f9632c7fef0a1eae81ec63c6351b8394fbd2a8e308b23c99dd0f2a.lean/declarations/restrictnonposseq-disjoint--54e0abe7c3cb0dcc83338474.md) | 225 | `result-track:54e0abe7c3cb0dcc8333847441f54ca22f2ee5d0975dc8be98a41062f410a113` |
| 20 | `theorem` | [exists_subset_restrict_nonpos'](../../../../../mathematics/Analysis/MeasureTheory/SignedHahn/Variantfe8ef70907f9632c7fef0a1eae81ec63c6351b8394fbd2a8e308b23c99dd0f2a.lean/declarations/exists-subset-restrict-nonpos--2e14aa922775f63e93b9818a.md) | 232 | `result-track:2e14aa922775f63e93b9818a2d550c871874294cec19b0e652d4677968120b28` |
| 21 | `theorem` | [exists_subset_restrict_nonpos](../../../../../mathematics/Analysis/MeasureTheory/SignedHahn/Variantfe8ef70907f9632c7fef0a1eae81ec63c6351b8394fbd2a8e308b23c99dd0f2a.lean/declarations/exists-subset-restrict-nonpos--8db3417fc16820f10994f11c.md) | 274 | `result-track:8db3417fc16820f10994f11c2e8cf273839481c33d1c96d71bf1ff18ae07b8fa` |
| 22 | `def` | [measureOfNegatives](../../../../../mathematics/Analysis/MeasureTheory/SignedHahn/Variantfe8ef70907f9632c7fef0a1eae81ec63c6351b8394fbd2a8e308b23c99dd0f2a.lean/declarations/measureofnegatives--9eabc42b49c134fa39dd97e9.md) | 343 | `declaration-track:9eabc42b49c134fa39dd97e9637855ca05c5dfe00cb08d159024912d93be9461` |
| 23 | `theorem` | [zero_mem_measureOfNegatives](../../../../../mathematics/Analysis/MeasureTheory/SignedHahn/Variantfe8ef70907f9632c7fef0a1eae81ec63c6351b8394fbd2a8e308b23c99dd0f2a.lean/declarations/zero-mem-measureofnegatives--ff69f797c6a1fc5bb253a3c5.md) | 347 | `result-track:ff69f797c6a1fc5bb253a3c52e6e6fecdef3d3f7bdf6756c2f58acb3299526ba` |
| 24 | `theorem` | [bddBelow_measureOfNegatives](../../../../../mathematics/Analysis/MeasureTheory/SignedHahn/Variantfe8ef70907f9632c7fef0a1eae81ec63c6351b8394fbd2a8e308b23c99dd0f2a.lean/declarations/bddbelow-measureofnegatives--93930a17eabd23947621d59c.md) | 351 | `result-track:93930a17eabd23947621d59c83a010fbd20cb95d74e35c4272b2fd04313d78d6` |
| 25 | `theorem` | [exists_compl_positive_negative](../../../../../mathematics/Analysis/MeasureTheory/SignedHahn/Variantfe8ef70907f9632c7fef0a1eae81ec63c6351b8394fbd2a8e308b23c99dd0f2a.lean/declarations/exists-compl-positive-negative--909ff699bcf7eec552b9fb72.md) | 378 | `result-track:909ff699bcf7eec552b9fb72539dac8649ad438663debbe06cf86857193afa84` |
| 26 | `theorem` | [exists_isCompl_positive_negative](../../../../../mathematics/Analysis/MeasureTheory/SignedHahn/Variantfe8ef70907f9632c7fef0a1eae81ec63c6351b8394fbd2a8e308b23c99dd0f2a.lean/declarations/exists-iscompl-positive-negative--5c66ef4501c74b6cf3b11b98.md) | 421 | `result-track:5c66ef4501c74b6cf3b11b98d6105e4da43af0ebfd18bf2fe08bee5a9bbd48ac` |
| 27 | `theorem` | [of_symmDiff_compl_positive_negative](../../../../../mathematics/Analysis/MeasureTheory/SignedHahn/Variantfe8ef70907f9632c7fef0a1eae81ec63c6351b8394fbd2a8e308b23c99dd0f2a.lean/declarations/of-symmdiff-compl-positive-negative--73d98533de0fb1eba836999c.md) | 428 | `result-track:73d98533de0fb1eba836999c2145cb10c9df68478f21d4f677408c16f8331f54` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
