# Verification target: GRWTSK.Analysis.ErrorBounds.RationalFiniteSum

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c2025f8615820dba06f1ba61022609088577211",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ErrorBounds/RationalFiniteSum.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ErrorBounds/RationalFiniteSum.lean/index.md) · [Full source](../../../../mathematics/Analysis/ErrorBounds/RationalFiniteSum.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c2025f8615820dba06f1ba61022609088577211`.

Source path: `GRWTSK/Analysis/ErrorBounds/RationalFiniteSum.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ErrorBounds/RationalFiniteSum.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.ErrorBounds.RationalExpTrace`](../../../../mathematics/Analysis/ErrorBounds/RationalExpTrace.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Trace](../../../../mathematics/Analysis/ErrorBounds/RationalFiniteSum.lean/declarations/trace--741a05d86fed5374e6c114f6.md) | 23 | `declaration-track:741a05d86fed5374e6c114f651ba21c9795c03a55636d4562b8d6d84bf329f74` |
| 2 | `def` | [termAt](../../../../mathematics/Analysis/ErrorBounds/RationalFiniteSum.lean/declarations/termat--7542200f945bc62926c133ca.md) | 28 | `declaration-track:7542200f945bc62926c133ca71196e67ebef01bf08b362facf57b4011c6175ac` |
| 3 | `def` | [valueAt](../../../../mathematics/Analysis/ErrorBounds/RationalFiniteSum.lean/declarations/valueat--442876145a2259cbf5ec0bf5.md) | 29 | `declaration-track:442876145a2259cbf5ec0bf5d07b71ff78f05977b9ed4f9e901e622eaf9879e4` |
| 4 | `def` | [radiusAt](../../../../mathematics/Analysis/ErrorBounds/RationalFiniteSum.lean/declarations/radiusat--bc838d7c4820de375d2ad2c3.md) | 30 | `declaration-track:bc838d7c4820de375d2ad2c38753eb4456e209a50e820d183dd02434e856ee40` |
| 5 | `def` | [partialSum](../../../../mathematics/Analysis/ErrorBounds/RationalFiniteSum.lean/declarations/partialsum--50df8692049013a75959cdc3.md) | 33 | `declaration-track:50df8692049013a75959cdc34e608f31a28483adf967bf51e291dd4724187600` |
| 6 | `def` | [outputRadius](../../../../mathematics/Analysis/ErrorBounds/RationalFiniteSum.lean/declarations/outputradius--db819cbe00cdd4a5b6823f2b.md) | 37 | `declaration-track:db819cbe00cdd4a5b6823f2bb27e69f1eb62f1a060ab9415342cbe045ef471da` |
| 7 | `def` | [Valid](../../../../mathematics/Analysis/ErrorBounds/RationalFiniteSum.lean/declarations/valid--92fcbcdf03a7af1fa87404b0.md) | 40 | `declaration-track:92fcbcdf03a7af1fa87404b032d45e5f0daa02f040b3ebf45068a63e3da4efb5` |
| 8 | `instance` | [instDecidableValid](../../../../mathematics/Analysis/ErrorBounds/RationalFiniteSum.lean/declarations/instdecidablevalid--78e0df7f5c56dc4ca7615911.md) | 46 | `declaration-track:78e0df7f5c56dc4ca76159115cde0babc6201b8ab3c4bfefdd43a752cd5fedd8` |
| 9 | `def` | [check](../../../../mathematics/Analysis/ErrorBounds/RationalFiniteSum.lean/declarations/check--1191a7eff1d1f4762d1ba1e1.md) | 49 | `declaration-track:1191a7eff1d1f4762d1ba1e1685c30ef9bdc2567d9662ba0ee4d22ffe7df6d66` |
| 10 | `def` | [exactTrace](../../../../mathematics/Analysis/ErrorBounds/RationalFiniteSum.lean/declarations/exacttrace--bcce54a3fc64c0a6a83ea187.md) | 51 | `declaration-track:bcce54a3fc64c0a6a83ea187057b5e0c6a4dc7833cdb44d57daf78b65f6cfdf6` |
| 11 | `theorem` | [check_iff_valid](../../../../mathematics/Analysis/ErrorBounds/RationalFiniteSum.lean/declarations/check-iff-valid--fce8c425098e1ce0523c8d1c.md) | 54 | `result-track:fce8c425098e1ce0523c8d1c4f7ef495b1e32ee410538d3fd93f52b78244f7a5` |
| 12 | `theorem` | [checked_lengths](../../../../mathematics/Analysis/ErrorBounds/RationalFiniteSum.lean/declarations/checked-lengths--99126308afaa1204f8a10577.md) | 57 | `result-track:99126308afaa1204f8a10577e869828c8121fead4f1f102a8424dcebcf67a8fc` |
| 13 | `theorem` | [toComplex_partialSum](../../../../mathematics/Analysis/ErrorBounds/RationalFiniteSum.lean/declarations/tocomplex-partialsum--36b03f7f745822b18054e295.md) | 64 | `result-track:36b03f7f745822b18054e29555e9cfa87e09fa71889f693e49eee8109c3b5936` |
| 14 | `theorem` | [check_sound](../../../../mathematics/Analysis/ErrorBounds/RationalFiniteSum.lean/declarations/check-sound--ae09275e1dd0a278e033ebb9.md) | 71 | `result-track:ae09275e1dd0a278e033ebb9799957564a15352771a24ba36cb8205d6c1028e2` |
| 15 | `theorem` | [checked_radius_nonneg](../../../../mathematics/Analysis/ErrorBounds/RationalFiniteSum.lean/declarations/checked-radius-nonneg--015a324ed0f7d8ea8f85880b.md) | 88 | `result-track:015a324ed0f7d8ea8f85880b1a8cf537db127970535c01188b8462a957fe1972` |
| 16 | `theorem` | [exactTrace_value](../../../../mathematics/Analysis/ErrorBounds/RationalFiniteSum.lean/declarations/exacttrace-value--b374d44398c291a0b7d89fe0.md) | 93 | `result-track:b374d44398c291a0b7d89fe021a83f2998040a5de46ae04cf210de3e404cdfe3` |
| 17 | `theorem` | [exactTrace_radius](../../../../mathematics/Analysis/ErrorBounds/RationalFiniteSum.lean/declarations/exacttrace-radius--549ba1a7c0e46db98829fad0.md) | 100 | `result-track:549ba1a7c0e46db98829fad0a6d1f2177ea81fe60e8b6d0e9cee1dbc591c1734` |
| 18 | `theorem` | [exactTrace_checked](../../../../mathematics/Analysis/ErrorBounds/RationalFiniteSum.lean/declarations/exacttrace-checked--3dfc17116f4ed49adf2beafd.md) | 105 | `result-track:3dfc17116f4ed49adf2beafda9e086aea0d7903a45c8370291c622ebb1db4d03` |
| 19 | `theorem` | [exactTrace_outputRadius](../../../../mathematics/Analysis/ErrorBounds/RationalFiniteSum.lean/declarations/exacttrace-outputradius--adc8eb8cf792354f0b036a38.md) | 116 | `result-track:adc8eb8cf792354f0b036a380ac5408683f7827c37c320358d326baf29127be2` |
| 20 | `theorem` | [nonzero_initial_rejected](../../../../mathematics/Analysis/ErrorBounds/RationalFiniteSum.lean/declarations/nonzero-initial-rejected--68dc5cbcafee326f678f5f99.md) | 123 | `result-track:68dc5cbcafee326f678f5f99e17f38214672417e2d8562e1edb4b4b38dfa16a2` |
| 21 | `theorem` | [empty_sum_controls](../../../../mathematics/Analysis/ErrorBounds/RationalFiniteSum.lean/declarations/empty-sum-controls--e02dbcbb1db7d779557d1c08.md) | 127 | `result-track:e02dbcbb1db7d779557d1c085b294f18ce94d8659f8e9806322b6b6f70cdf44a` |
| 22 | `theorem` | [imaginary_update_rejected](../../../../mathematics/Analysis/ErrorBounds/RationalFiniteSum.lean/declarations/imaginary-update-rejected--43748c3276e4d491787fd40b.md) | 131 | `result-track:43748c3276e4d491787fd40b3054e11b196db480ee396ee179baab76e193db6e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
