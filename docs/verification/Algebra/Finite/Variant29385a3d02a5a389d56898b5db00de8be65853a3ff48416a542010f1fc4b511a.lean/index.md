# Verification target: GRWTSK.Algebra.Finite.Variant29385a3d02a5a389d56898b5db00de8be65853a3ff48416a542010f1fc4b511a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "68ce72e4470eeefca3e33a72baad319bf8029976",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Finite/Variant29385a3d02a5a389d56898b5db00de8be65853a3ff48416a542010f1fc4b511a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Finite/Variant29385a3d02a5a389d56898b5db00de8be65853a3ff48416a542010f1fc4b511a.lean/index.md) · [Full source](../../../../mathematics/Algebra/Finite/Variant29385a3d02a5a389d56898b5db00de8be65853a3ff48416a542010f1fc4b511a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `68ce72e4470eeefca3e33a72baad319bf8029976`.

Source path: `GRWTSK/Algebra/Finite/Variant29385a3d02a5a389d56898b5db00de8be65853a3ff48416a542010f1fc4b511a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Finite/Variant29385a3d02a5a389d56898b5db00de8be65853a3ff48416a542010f1fc4b511a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.LocalProperties.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Integer` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Finite` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [finite_stableUnderComposition](../../../../mathematics/Algebra/Finite/Variant29385a3d02a5a389d56898b5db00de8be65853a3ff48416a542010f1fc4b511a.lean/declarations/finite-stableundercomposition--8a86b1ffe520ed5eb57f6b5f.md) | 40 | `result-track:8a86b1ffe520ed5eb57f6b5f9c3156c798257695e38221dd309f00fe5fdf1858` |
| 2 | `theorem` | [finite_respectsIso](../../../../mathematics/Algebra/Finite/Variant29385a3d02a5a389d56898b5db00de8be65853a3ff48416a542010f1fc4b511a.lean/declarations/finite-respectsiso--ed936582276b480c70890044.md) | 44 | `result-track:ed936582276b480c708900445ea40d553dacd17e02cdb3bc26e63c9c18590c79` |
| 3 | `lemma` | [finite_containsIdentities](../../../../mathematics/Algebra/Finite/Variant29385a3d02a5a389d56898b5db00de8be65853a3ff48416a542010f1fc4b511a.lean/declarations/finite-containsidentities--92a4394520f2cdc18923b2cf.md) | 49 | `result-track:92a4394520f2cdc18923b2cfa5dc287f960621f24f3f9189ff658e4b6cda0b9b` |
| 4 | `theorem` | [finite_isStableUnderBaseChange](../../../../mathematics/Algebra/Finite/Variant29385a3d02a5a389d56898b5db00de8be65853a3ff48416a542010f1fc4b511a.lean/declarations/finite-isstableunderbasechange--f1428f82fd89004135aaf825.md) | 51 | `result-track:f1428f82fd89004135aaf82503cf67b8f86533937da4183b3a811859b53f9521` |
| 5 | `lemma` | [Module.Finite_of_isLocalization](../../../../mathematics/Algebra/Finite/Variant29385a3d02a5a389d56898b5db00de8be65853a3ff48416a542010f1fc4b511a.lean/declarations/module-finite-of-islocalization--b714e31faf2998dc3d683c48.md) | 71 | `result-track:b714e31faf2998dc3d683c48842ece243e1a0d59694ba026ca90398a8098e156` |
| 6 | `theorem` | [RingHom.finite_localizationPreserves](../../../../mathematics/Algebra/Finite/Variant29385a3d02a5a389d56898b5db00de8be65853a3ff48416a542010f1fc4b511a.lean/declarations/ringhom-finite-localizationpreserves--5d38ef05f0e3e6086bf1d76c.md) | 108 | `result-track:5d38ef05f0e3e6086bf1d76cfd4be41bab17609779f6cd937c0d5fb0e465f1f7` |
| 7 | `theorem` | [RingHom.localization_away_map_finite](../../../../mathematics/Algebra/Finite/Variant29385a3d02a5a389d56898b5db00de8be65853a3ff48416a542010f1fc4b511a.lean/declarations/ringhom-localization-away-map-finite--04c6f309318b9d3d3318276d.md) | 122 | `result-track:04c6f309318b9d3d3318276d99655957fb186caf56a757d66d1282c3eb3f9beb` |
| 8 | `theorem` | [IsLocalization.smul_mem_finsetIntegerMultiple_span](../../../../mathematics/Algebra/Finite/Variant29385a3d02a5a389d56898b5db00de8be65853a3ff48416a542010f1fc4b511a.lean/declarations/islocalization-smul-mem-finsetintegermultiple-span--8d685e102d7de3ad8f44eec4.md) | 132 | `result-track:8d685e102d7de3ad8f44eec4536f7a55703e4b6aa380099231f6c65259493d95` |
| 9 | `theorem` | [multiple_mem_span_of_mem_localization_span](../../../../mathematics/Algebra/Finite/Variant29385a3d02a5a389d56898b5db00de8be65853a3ff48416a542010f1fc4b511a.lean/declarations/multiple-mem-span-of-mem-localization-span--33fd88e60404c4ab626bcc1a.md) | 171 | `result-track:33fd88e60404c4ab626bcc1a8ebb9f6daac6aa6e8f79e0c1f83d1549a832fa86` |
| 10 | `theorem` | [multiple_mem_adjoin_of_mem_localization_adjoin](../../../../mathematics/Algebra/Finite/Variant29385a3d02a5a389d56898b5db00de8be65853a3ff48416a542010f1fc4b511a.lean/declarations/multiple-mem-adjoin-of-mem-localization-adjoin--53c20d2f68832a2ac63d1ec0.md) | 197 | `result-track:53c20d2f68832a2ac63d1ec0dcb1abf8d7c067992bdff1a75dc8272432ad0d80` |
| 11 | `theorem` | [RingHom.finite_ofLocalizationSpan](../../../../mathematics/Algebra/Finite/Variant29385a3d02a5a389d56898b5db00de8be65853a3ff48416a542010f1fc4b511a.lean/declarations/ringhom-finite-oflocalizationspan--713da8817fc7bb4edebeb219.md) | 207 | `result-track:713da8817fc7bb4edebeb2191c86162f8aa62831b5956ee34d0fa86ae2cee599` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
