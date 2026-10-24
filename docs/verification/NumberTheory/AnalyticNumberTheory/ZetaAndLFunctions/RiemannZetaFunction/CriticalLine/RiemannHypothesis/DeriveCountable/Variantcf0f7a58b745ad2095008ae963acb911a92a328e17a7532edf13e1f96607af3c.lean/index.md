# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.DeriveCountable.Variantcf0f7a58b745ad2095008ae963acb911a92a328e17a7532edf13e1f96607af3c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "156a0055d35429325058318a48d37818996ba08d",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DeriveCountable/Variantcf0f7a58b745ad2095008ae963acb911a92a328e17a7532edf13e1f96607af3c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DeriveCountable/Variantcf0f7a58b745ad2095008ae963acb911a92a328e17a7532edf13e1f96607af3c.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DeriveCountable/Variantcf0f7a58b745ad2095008ae963acb911a92a328e17a7532edf13e1f96607af3c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `156a0055d35429325058318a48d37818996ba08d`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DeriveCountable/Variantcf0f7a58b745ad2095008ae963acb911a92a328e17a7532edf13e1f96607af3c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DeriveCountable/Variantcf0f7a58b745ad2095008ae963acb911a92a328e17a7532edf13e1f96607af3c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Basic.Countable.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.List` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.DeriveCountable` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [S](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DeriveCountable/Variantcf0f7a58b745ad2095008ae963acb911a92a328e17a7532edf13e1f96607af3c.lean/declarations/s--067eefd5895845158f9f19e7.md) | 22 | `declaration-track:067eefd5895845158f9f19e76aea2fb40ca506e40f5e16a9957d6c157dcf7b26` |
| 2 | `example` | [(anonymous)](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DeriveCountable/Variantcf0f7a58b745ad2095008ae963acb911a92a328e17a7532edf13e1f96607af3c.lean/declarations/example--dd8710697ccc0fdded10d37f.md) | 27 | `declaration-track:dd8710697ccc0fdded10d37f204ff3d3d92f67086fdbdc1eea932b1093fc52ad` |
| 3 | `inductive` | [T](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DeriveCountable/Variantcf0f7a58b745ad2095008ae963acb911a92a328e17a7532edf13e1f96607af3c.lean/declarations/t--704386bd5c001ed6a208a617.md) | 32 | `declaration-track:704386bd5c001ed6a208a61700ddecf47134ed719acad420c42b3393d6377814` |
| 4 | `example` | [(anonymous)](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DeriveCountable/Variantcf0f7a58b745ad2095008ae963acb911a92a328e17a7532edf13e1f96607af3c.lean/declarations/example--42e3fc8595eb5442b32462d2.md) | 38 | `declaration-track:42e3fc8595eb5442b32462d2f46b0fc1974316ac015826d1767d52260483eedb` |
| 5 | `inductive` | [PreCantor'](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DeriveCountable/Variantcf0f7a58b745ad2095008ae963acb911a92a328e17a7532edf13e1f96607af3c.lean/declarations/precantor--d82fd38e7de56e968f4dc734.md) | 43 | `declaration-track:d82fd38e7de56e968f4dc734e2cd86daa0cf281c3db12da9559701eb564b8a77` |
| 6 | `example` | [(anonymous)](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DeriveCountable/Variantcf0f7a58b745ad2095008ae963acb911a92a328e17a7532edf13e1f96607af3c.lean/declarations/example--5a7243ee93d8746046d6c558.md) | 48 | `declaration-track:5a7243ee93d8746046d6c55865c333c5313db5713d65d86e9ba9af1c745c171d` |
| 7 | `inductive` | [PList](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DeriveCountable/Variantcf0f7a58b745ad2095008ae963acb911a92a328e17a7532edf13e1f96607af3c.lean/declarations/plist--f1fc36fba7a96b6b2b46bf8b.md) | 53 | `declaration-track:f1fc36fba7a96b6b2b46bf8b68486deeae7483a28c12012eb318f684f1186208` |
| 8 | `example` | [(anonymous)](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DeriveCountable/Variantcf0f7a58b745ad2095008ae963acb911a92a328e17a7532edf13e1f96607af3c.lean/declarations/example--014cfb5bdb5aa56987a28b5e.md) | 58 | `declaration-track:014cfb5bdb5aa56987a28b5ebabdc755a08db65b685ac95629f2065be10cd1d8` |
| 9 | `inductive` | [I](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DeriveCountable/Variantcf0f7a58b745ad2095008ae963acb911a92a328e17a7532edf13e1f96607af3c.lean/declarations/i--67d2506237828a886b510854.md) | 64 | `declaration-track:67d2506237828a886b510854340538c148104b11ddfca83e5ea6961fff7151da` |
| 10 | `example` | [(anonymous)](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DeriveCountable/Variantcf0f7a58b745ad2095008ae963acb911a92a328e17a7532edf13e1f96607af3c.lean/declarations/example--8575217cd2f59335bbaa8ff8.md) | 69 | `declaration-track:8575217cd2f59335bbaa8ff815279af8e118a730bce77ea03bff6ed418133129` |
| 11 | `example` | [(anonymous)](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DeriveCountable/Variantcf0f7a58b745ad2095008ae963acb911a92a328e17a7532edf13e1f96607af3c.lean/declarations/example--aa9ae37d4d93f160d131fd1c.md) | 70 | `declaration-track:aa9ae37d4d93f160d131fd1c0a7798dec607f4e601d2ffe934235901979889e3` |
| 12 | `inductive` | [T1](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DeriveCountable/Variantcf0f7a58b745ad2095008ae963acb911a92a328e17a7532edf13e1f96607af3c.lean/declarations/t1--f3df91f884cd8bca1c59b798.md) | 76 | `declaration-track:f3df91f884cd8bca1c59b79856ba93ce3a818a14325e736c1068da292c13c08c` |
| 13 | `inductive` | [T2](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DeriveCountable/Variantcf0f7a58b745ad2095008ae963acb911a92a328e17a7532edf13e1f96607af3c.lean/declarations/t2--f36448fadad5c39c47957cc4.md) | 80 | `declaration-track:f36448fadad5c39c47957cc465ccfee27f76268a8e4a0b2de525e971f3060b1e` |
| 14 | `example` | [(anonymous)](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DeriveCountable/Variantcf0f7a58b745ad2095008ae963acb911a92a328e17a7532edf13e1f96607af3c.lean/declarations/example--acd44d2410982f1120e47670.md) | 86 | `declaration-track:acd44d2410982f1120e47670942edc7cf46dc7b17c19631f2be62fd380ed1888` |
| 15 | `example` | [(anonymous)](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DeriveCountable/Variantcf0f7a58b745ad2095008ae963acb911a92a328e17a7532edf13e1f96607af3c.lean/declarations/example--2e7bdc9994ec31a41ad21781.md) | 87 | `declaration-track:2e7bdc9994ec31a41ad21781a553d86f02f15c366b29faaec97028fcd1e505fb` |
| 16 | `inductive` | [Nested](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DeriveCountable/Variantcf0f7a58b745ad2095008ae963acb911a92a328e17a7532edf13e1f96607af3c.lean/declarations/nested--6cfce1b1022865d23b50526e.md) | 95 | `declaration-track:6cfce1b1022865d23b50526e6117325fa9fa99eea11c9d7921774ec73bccf95b` |
| 17 | `inductive` | [Reflex](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DeriveCountable/Variantcf0f7a58b745ad2095008ae963acb911a92a328e17a7532edf13e1f96607af3c.lean/declarations/reflex--bedc5a60aff3219b9dfb6bb7.md) | 104 | `declaration-track:bedc5a60aff3219b9dfb6bb762451ba8e28243785ea6cee4a253e918555db27a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
