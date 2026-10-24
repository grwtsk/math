# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceTuplePackets.Variant93eb3a200077274860f2e2a4a8dd056a61d3b9fcc4edb1d62d27f9c2e047c98f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b040287622758542fb1bdb694b170064e6982976",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variant93eb3a200077274860f2e2a4a8dd056a61d3b9fcc4edb1d62d27f9c2e047c98f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variant93eb3a200077274860f2e2a4a8dd056a61d3b9fcc4edb1d62d27f9c2e047c98f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variant93eb3a200077274860f2e2a4a8dd056a61d3b9fcc4edb1d62d27f9c2e047c98f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b040287622758542fb1bdb694b170064e6982976`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variant93eb3a200077274860f2e2a4a8dd056a61d3b9fcc4edb1d62d27f9c2e047c98f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variant93eb3a200077274860f2e2a4a8dd056a61d3b9fcc4edb1d62d27f9c2e047c98f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceMultiplicativePackets` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Basic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SignTuple](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variant93eb3a200077274860f2e2a4a8dd056a61d3b9fcc4edb1d62d27f9c2e047c98f.lean/declarations/signtuple--2e9e33f0fb1bf44158594563.md) | 32 | `declaration-track:2e9e33f0fb1bf44158594563a1fa05a2f8309ddc46a5f67ec0be58f9192dac5b` |
| 2 | `instance` | [signTupleFintype](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variant93eb3a200077274860f2e2a4a8dd056a61d3b9fcc4edb1d62d27f9c2e047c98f.lean/declarations/signtuplefintype--3ec908aef7f3bab7ae10581d.md) | 36 | `declaration-track:3ec908aef7f3bab7ae10581d81f175528357873eff0abab5e51ae185f76da0d2` |
| 3 | `theorem` | [signTuple_card](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variant93eb3a200077274860f2e2a4a8dd056a61d3b9fcc4edb1d62d27f9c2e047c98f.lean/declarations/signtuple-card--1b7c357d5efd055cad384844.md) | 44 | `result-track:1b7c357d5efd055cad384844b4094bd3c341b8261aeda31d71cbd99f9aa2ba80` |
| 4 | `def` | [signedShift](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variant93eb3a200077274860f2e2a4a8dd056a61d3b9fcc4edb1d62d27f9c2e047c98f.lean/declarations/signedshift--baea3804d397c50d00f047bc.md) | 56 | `declaration-track:baea3804d397c50d00f047bc56efd144f3289bc50958b0fc0b9becb114bd5ef1` |
| 5 | `def` | [tupleWeight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variant93eb3a200077274860f2e2a4a8dd056a61d3b9fcc4edb1d62d27f9c2e047c98f.lean/declarations/tupleweight--88ce80a612142377701ec258.md) | 59 | `declaration-track:88ce80a612142377701ec2580cb8367975648bb87f98e8b4b3a3f21832198e77` |
| 6 | `def` | [tupleShift](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variant93eb3a200077274860f2e2a4a8dd056a61d3b9fcc4edb1d62d27f9c2e047c98f.lean/declarations/tupleshift--c8eb371c71bab244c52fa937.md) | 64 | `declaration-track:c8eb371c71bab244c52fa93794fb82f44a265bf16e91bfd20081384620b0163f` |
| 7 | `def` | [tupleObservation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variant93eb3a200077274860f2e2a4a8dd056a61d3b9fcc4edb1d62d27f9c2e047c98f.lean/declarations/tupleobservation--c415eac6c96e3262163aa8c9.md) | 69 | `declaration-track:c415eac6c96e3262163aa8c94e6ee43ff47da63cf1e1748830941e15c4918a46` |
| 8 | `def` | [finiteSymbol](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variant93eb3a200077274860f2e2a4a8dd056a61d3b9fcc4edb1d62d27f9c2e047c98f.lean/declarations/finitesymbol--fe3d14f4c6ebb4b2def9548c.md) | 75 | `declaration-track:fe3d14f4c6ebb4b2def9548c3fc6f0922346d7b2fcf1f2aef2e91ea2c2bb8df0` |
| 9 | `theorem` | [tupleObservation_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variant93eb3a200077274860f2e2a4a8dd056a61d3b9fcc4edb1d62d27f9c2e047c98f.lean/declarations/tupleobservation-zero--f08a9a6c7e9ce3b29d39450a.md) | 78 | `result-track:f08a9a6c7e9ce3b29d39450a5171574db274c0d1f0555e98a435d02d50457d39` |
| 10 | `theorem` | [tupleObservation_succ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variant93eb3a200077274860f2e2a4a8dd056a61d3b9fcc4edb1d62d27f9c2e047c98f.lean/declarations/tupleobservation-succ--a32ca361d583012579b74998.md) | 86 | `result-track:a32ca361d583012579b7499872def9f99e2f4e3f849640d560e7c61d0dbde795` |
| 11 | `theorem` | [cosine_two_signs](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variant93eb3a200077274860f2e2a4a8dd056a61d3b9fcc4edb1d62d27f9c2e047c98f.lean/declarations/cosine-two-signs--79dbfb7dd63db0f706891aba.md) | 111 | `result-track:79dbfb7dd63db0f706891aba07e46d73c28eacc554f153649e60c1fd21f15e28` |
| 12 | `theorem` | [finiteSymbol_pow_mul_cos_eq_tuples](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variant93eb3a200077274860f2e2a4a8dd056a61d3b9fcc4edb1d62d27f9c2e047c98f.lean/declarations/finitesymbol-pow-mul-cos-eq-tuples--aa3919dd04d2e5a37c7aba42.md) | 121 | `result-track:aa3919dd04d2e5a37c7aba42d7872898ed5a0bdf4b559729d6b5b7df81c3163d` |
| 13 | `theorem` | [finiteSymbol_pow_eq_tuples](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variant93eb3a200077274860f2e2a4a8dd056a61d3b9fcc4edb1d62d27f9c2e047c98f.lean/declarations/finitesymbol-pow-eq-tuples--d4826afb5e66c89b803b7d16.md) | 143 | `result-track:d4826afb5e66c89b803b7d16d12efce1eab5b64493f3c1758e335e37b41beacc` |
| 14 | `theorem` | [power_density_eq_tuples](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variant93eb3a200077274860f2e2a4a8dd056a61d3b9fcc4edb1d62d27f9c2e047c98f.lean/declarations/power-density-eq-tuples--bc4226e6a8600578cc4ad293.md) | 150 | `result-track:bc4226e6a8600578cc4ad2937a513ed4fbc3d8fc463074432fff93803d264420` |
| 15 | `theorem` | [weighted_power_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variant93eb3a200077274860f2e2a4a8dd056a61d3b9fcc4edb1d62d27f9c2e047c98f.lean/declarations/weighted-power-integrable--bf3ee2664cd88dfae463a715.md) | 164 | `result-track:bf3ee2664cd88dfae463a7157ee98704df425c91e0741060d2d8551ca5bcce34` |
| 16 | `theorem` | [weighted_moment_eq_tuples](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variant93eb3a200077274860f2e2a4a8dd056a61d3b9fcc4edb1d62d27f9c2e047c98f.lean/declarations/weighted-moment-eq-tuples--5e59cc0b580be30d8e3bbb21.md) | 176 | `result-track:5e59cc0b580be30d8e3bbb216d1162264260e96b92730fae0300847cc88e13a4` |
| 17 | `abbrev` | [SourceIndex](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variant93eb3a200077274860f2e2a4a8dd056a61d3b9fcc4edb1d62d27f9c2e047c98f.lean/declarations/sourceindex--c04dae706a8009ec01e30566.md) | 190 | `declaration-track:c04dae706a8009ec01e30566c494c86b93f618a5e302bd724966131ece3df0a3` |
| 18 | `theorem` | [sourceSymbol_eq_finiteSymbol](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variant93eb3a200077274860f2e2a4a8dd056a61d3b9fcc4edb1d62d27f9c2e047c98f.lean/declarations/sourcesymbol-eq-finitesymbol--b0bd15fa97cdbb1809bfbed6.md) | 192 | `result-track:b0bd15fa97cdbb1809bfbed69f3e080b9719a1bc5f4775dda86c42bd26978ff9` |
| 19 | `theorem` | [source_power_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variant93eb3a200077274860f2e2a4a8dd056a61d3b9fcc4edb1d62d27f9c2e047c98f.lean/declarations/source-power-integrable--4ab79b1c3cd606eda62732ab.md) | 201 | `result-track:4ab79b1c3cd606eda62732ab029c766e768e09b5cf1107b7d0fda5139132f653` |
| 20 | `theorem` | [source_moment_eq_signed_tuples](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variant93eb3a200077274860f2e2a4a8dd056a61d3b9fcc4edb1d62d27f9c2e047c98f.lean/declarations/source-moment-eq-signed-tuples--712a8a874aca0d448e151673.md) | 209 | `result-track:712a8a874aca0d448e151673a68627c7cbccfef2520490aeeaf85ce8a0e88493` |
| 21 | `theorem` | [source_moment_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variant93eb3a200077274860f2e2a4a8dd056a61d3b9fcc4edb1d62d27f9c2e047c98f.lean/declarations/source-moment-zero--add8ba13a8e53f05b15163c4.md) | 225 | `result-track:add8ba13a8e53f05b15163c495478576d212614a2e68548a0bdd02278bd19dd0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
