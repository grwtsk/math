# Verification target: GRWTSK.Topology.GeneralTopology.Absolute.Variant53e9579de95660a16615acc857aacaee9c872dc9b6baa5429084a59a9fd4d58d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13a77d143694ddb3c6308fe0de59141cae087cce",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Absolute/Variant53e9579de95660a16615acc857aacaee9c872dc9b6baa5429084a59a9fd4d58d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Absolute/Variant53e9579de95660a16615acc857aacaee9c872dc9b6baa5429084a59a9fd4d58d.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Absolute/Variant53e9579de95660a16615acc857aacaee9c872dc9b6baa5429084a59a9fd4d58d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13a77d143694ddb3c6308fe0de59141cae087cce`.

Source path: `GRWTSK/Topology/GeneralTopology/Absolute/Variant53e9579de95660a16615acc857aacaee9c872dc9b6baa5429084a59a9fd4d58d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Absolute/Variant53e9579de95660a16615acc857aacaee9c872dc9b6baa5429084a59a9fd4d58d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Arithmetic.GaloisCohomology.Continuous` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ArithmeticFieldLabel](../../../../../mathematics/Topology/GeneralTopology/Absolute/Variant53e9579de95660a16615acc857aacaee9c872dc9b6baa5429084a59a9fd4d58d.lean/declarations/arithmeticfieldlabel--621077ab4acccb46307bd915.md) | 38 | `declaration-track:621077ab4acccb46307bd9151229e48b037c6ee94112bdafbf338e1c646acd2f` |
| 2 | `structure` | [AbsoluteGaloisGroupAdapter](../../../../../mathematics/Topology/GeneralTopology/Absolute/Variant53e9579de95660a16615acc857aacaee9c872dc9b6baa5429084a59a9fd4d58d.lean/declarations/absolutegaloisgroupadapter--7890cdac8f638322a731c5aa.md) | 49 | `declaration-track:7890cdac8f638322a731c5aa8d7ee54c088de09a743836f092418c9b1091b1f1` |
| 3 | `structure` | [LocalGaloisGroupAdapter](../../../../../mathematics/Topology/GeneralTopology/Absolute/Variant53e9579de95660a16615acc857aacaee9c872dc9b6baa5429084a59a9fd4d58d.lean/declarations/localgaloisgroupadapter--4de93d8580d49d6bbb0c7747.md) | 58 | `declaration-track:4de93d8580d49d6bbb0c7747632ebbda9f74962072b8733749750f6b90ba2151` |
| 4 | `structure` | [AbsoluteFiniteGaloisModule](../../../../../mathematics/Topology/GeneralTopology/Absolute/Variant53e9579de95660a16615acc857aacaee9c872dc9b6baa5429084a59a9fd4d58d.lean/declarations/absolutefinitegaloismodule--2fb9fe8c3eb0d9b3d417e251.md) | 71 | `declaration-track:2fb9fe8c3eb0d9b3d417e2513edaf9c5e3240f36eb7eb5f6634e38c9b1b66de3` |
| 5 | `abbrev` | [AbsoluteH1](../../../../../mathematics/Topology/GeneralTopology/Absolute/Variant53e9579de95660a16615acc857aacaee9c872dc9b6baa5429084a59a9fd4d58d.lean/declarations/absoluteh1--1740d5e1f5ad1e748f01f49a.md) | 81 | `declaration-track:1740d5e1f5ad1e748f01f49ab5a8f635403931eed30e5034e21e8383f6bd201b` |
| 6 | `theorem` | [absoluteH1_eq_continuousH1](../../../../../mathematics/Topology/GeneralTopology/Absolute/Variant53e9579de95660a16615acc857aacaee9c872dc9b6baa5429084a59a9fd4d58d.lean/declarations/absoluteh1-eq-continuoush1--6cece24e49707f5f71d37773.md) | 88 | `result-track:6cece24e49707f5f71d3777336d0662ccf657a36bd4918f3ae89f689b5405098` |
| 7 | `structure` | [AbsoluteToLocalRestriction](../../../../../mathematics/Topology/GeneralTopology/Absolute/Variant53e9579de95660a16615acc857aacaee9c872dc9b6baa5429084a59a9fd4d58d.lean/declarations/absolutetolocalrestriction--ad10dc7057fdf6b2e9f96a4e.md) | 100 | `declaration-track:ad10dc7057fdf6b2e9f96a4ed3ba698dd1af21b18b667c6750aa477a8758466f` |
| 8 | `def` | [resAbsoluteH1](../../../../../mathematics/Topology/GeneralTopology/Absolute/Variant53e9579de95660a16615acc857aacaee9c872dc9b6baa5429084a59a9fd4d58d.lean/declarations/resabsoluteh1--b06832ee9dd50aea23e920ac.md) | 114 | `declaration-track:b06832ee9dd50aea23e920ac40277bd40769c12847b5ea2c992cec04c905741b` |
| 9 | `theorem` | [resAbsoluteH1_value](../../../../../mathematics/Topology/GeneralTopology/Absolute/Variant53e9579de95660a16615acc857aacaee9c872dc9b6baa5429084a59a9fd4d58d.lean/declarations/resabsoluteh1-value--a57f790fedaebdd92f470318.md) | 124 | `result-track:a57f790fedaebdd92f470318e11173d8da9f4ebc87c2bfce80b61232c655cf9c` |
| 10 | `theorem` | [absoluteAdapter_depends_after_continuous](../../../../../mathematics/Topology/GeneralTopology/Absolute/Variant53e9579de95660a16615acc857aacaee9c872dc9b6baa5429084a59a9fd4d58d.lean/declarations/absoluteadapter-depends-after-continuous--93ac3cf9026da29e0d44ae51.md) | 136 | `result-track:93ac3cf9026da29e0d44ae516620433c2d0ba18426316a07c3e6288dc7a2467b` |
| 11 | `theorem` | [absoluteAdapter_depends_after_finiteSelmer](../../../../../mathematics/Topology/GeneralTopology/Absolute/Variant53e9579de95660a16615acc857aacaee9c872dc9b6baa5429084a59a9fd4d58d.lean/declarations/absoluteadapter-depends-after-finiteselmer--aad6d393b5330d33c5eddc94.md) | 142 | `result-track:aad6d393b5330d33c5eddc942d5dc775bf70b73fa9fa5fb8b0b9dfd62981e240` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
