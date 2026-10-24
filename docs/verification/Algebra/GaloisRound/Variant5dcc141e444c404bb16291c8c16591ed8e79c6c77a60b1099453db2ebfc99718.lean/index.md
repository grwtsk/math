# Verification target: GRWTSK.Algebra.GaloisRound.Variant5dcc141e444c404bb16291c8c16591ed8e79c6c77a60b1099453db2ebfc99718

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de8c74eb8fe25cdf6a9948d35e3bf9e8eb4f8d48",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GaloisRound/Variant5dcc141e444c404bb16291c8c16591ed8e79c6c77a60b1099453db2ebfc99718.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/GaloisRound/Variant5dcc141e444c404bb16291c8c16591ed8e79c6c77a60b1099453db2ebfc99718.lean/index.md) · [Full source](../../../../mathematics/Algebra/GaloisRound/Variant5dcc141e444c404bb16291c8c16591ed8e79c6c77a60b1099453db2ebfc99718.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de8c74eb8fe25cdf6a9948d35e3bf9e8eb4f8d48`.

Source path: `GRWTSK/Algebra/GaloisRound/Variant5dcc141e444c404bb16291c8c16591ed8e79c6c77a60b1099453db2ebfc99718.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GaloisRound/Variant5dcc141e444c404bb16291c8c16591ed8e79c6c77a60b1099453db2ebfc99718.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.FiniteField.Galois` — import line 1; external provider; requires a separately pinned dependency.
- `BitMatrix.FiniteField.Round` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bitCode](../../../../mathematics/Algebra/GaloisRound/Variant5dcc141e444c404bb16291c8c16591ed8e79c6c77a60b1099453db2ebfc99718.lean/declarations/bitcode--f20a0e622f5fce8944c234dc.md) | 31 | `declaration-track:f20a0e622f5fce8944c234dc5afca10642fb0a12f8ae00b73ae5559ac4a8e90c` |
| 2 | `theorem` | [bitCode_add](../../../../mathematics/Algebra/GaloisRound/Variant5dcc141e444c404bb16291c8c16591ed8e79c6c77a60b1099453db2ebfc99718.lean/declarations/bitcode-add--237c54b9f83bfb37dfd2064c.md) | 40 | `result-track:237c54b9f83bfb37dfd2064c8cd34089d8b6c63ca0a7900c336f1ff63939cf0f` |
| 3 | `def` | [transportToMatrix](../../../../mathematics/Algebra/GaloisRound/Variant5dcc141e444c404bb16291c8c16591ed8e79c6c77a60b1099453db2ebfc99718.lean/declarations/transporttomatrix--f43da36c4e54f98c819cfaee.md) | 62 | `declaration-track:f43da36c4e54f98c819cfaee68a13f72f5b56b1571b4ec5bdb9260ca810d72ae` |
| 4 | `theorem` | [flatten_transportToMatrix](../../../../mathematics/Algebra/GaloisRound/Variant5dcc141e444c404bb16291c8c16591ed8e79c6c77a60b1099453db2ebfc99718.lean/declarations/flatten-transporttomatrix--dbe3185e6a7e13c2d26b23aa.md) | 72 | `result-track:dbe3185e6a7e13c2d26b23aa23aab80eac03cb7ef97d0e1408f61021b53bcf84` |
| 5 | `def` | [encodeFieldRound](../../../../mathematics/Algebra/GaloisRound/Variant5dcc141e444c404bb16291c8c16591ed8e79c6c77a60b1099453db2ebfc99718.lean/declarations/encodefieldround--0385b14c9c234e0820095861.md) | 83 | `declaration-track:0385b14c9c234e08200958617e2781d0c75fbdeb776c01b1d94110b1a46cbfd6` |
| 6 | `theorem` | [encodeFieldRound_bijective](../../../../mathematics/Algebra/GaloisRound/Variant5dcc141e444c404bb16291c8c16591ed8e79c6c77a60b1099453db2ebfc99718.lean/declarations/encodefieldround-bijective--0a6edb541f76d3cf7afaf345.md) | 93 | `result-track:0a6edb541f76d3cf7afaf345ed027d07df1a0d393921db41a0c788d5dc356dbb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
