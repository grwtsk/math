# Verification target: GRWTSK.Topology.GeneralTopology.HSpaces.Variant1131c4b634b136f35c40be6b518282ca7d68ef5b84aca03c5745727f768f228b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "491d79d4147fabd531a347865cbef39eee96e9cb",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/HSpaces/Variant1131c4b634b136f35c40be6b518282ca7d68ef5b84aca03c5745727f768f228b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variant1131c4b634b136f35c40be6b518282ca7d68ef5b84aca03c5745727f768f228b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variant1131c4b634b136f35c40be6b518282ca7d68ef5b84aca03c5745727f768f228b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `491d79d4147fabd531a347865cbef39eee96e9cb`.

Source path: `GRWTSK/Topology/GeneralTopology/HSpaces/Variant1131c4b634b136f35c40be6b518282ca7d68ef5b84aca03c5745727f768f228b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/HSpaces/Variant1131c4b634b136f35c40be6b518282ca7d68ef5b84aca03c5745727f768f228b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HSpace](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variant1131c4b634b136f35c40be6b518282ca7d68ef5b84aca03c5745727f768f228b.lean/declarations/hspace--55deb425833a7dce87b1ab5c.md) | 74 | `declaration-track:55deb425833a7dce87b1ab5c83f61a3533eed32d11d7bb014295106648e1a23a` |
| 2 | `instance` | [HSpace.prod](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variant1131c4b634b136f35c40be6b518282ca7d68ef5b84aca03c5745727f768f228b.lean/declarations/hspace-prod--21af04d801e12f5977a5bd90.md) | 88 | `declaration-track:21af04d801e12f5977a5bd90752b3030326e07e3e959f4aa29a0faf553e0bfef` |
| 3 | `def` | [toHSpace](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variant1131c4b634b136f35c40be6b518282ca7d68ef5b84aca03c5745727f768f228b.lean/declarations/tohspace--b0402106025bd02f7f83e161.md) | 130 | `declaration-track:b0402106025bd02f7f83e161d0ad27a7781ea4f61e47d5aaa9417bf4e7716fb1` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variant1131c4b634b136f35c40be6b518282ca7d68ef5b84aca03c5745727f768f228b.lean/declarations/instance--a7bb2a190e05cb83a2ec0f84.md) | 138 | `declaration-track:a7bb2a190e05cb83a2ec0f84a7b8a63ba6e31711df8a876e69ba3f458b713379` |
| 5 | `theorem` | [one_eq_hSpace_e](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variant1131c4b634b136f35c40be6b518282ca7d68ef5b84aca03c5745727f768f228b.lean/declarations/one-eq-hspace-e--008ca241c0482db888e155dc.md) | 142 | `result-track:008ca241c0482db888e155dcc79d0d28e9b5143db620ff6f7271983a9cac61df` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variant1131c4b634b136f35c40be6b518282ca7d68ef5b84aca03c5745727f768f228b.lean/declarations/example--06c94201897a04f40986c5b2.md) | 148 | `declaration-track:06c94201897a04f40986c5b294cb1e471f77d082351de871997859c8acb90a6b` |
| 7 | `def` | [qRight](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variant1131c4b634b136f35c40be6b518282ca7d68ef5b84aca03c5745727f768f228b.lean/declarations/qright--816e2bcadcf5a71e07e9a15a.md) | 160 | `declaration-track:816e2bcadcf5a71e07e9a15ac63b0c1d956962a4a3f35604575bb5d89b253a81` |
| 8 | `theorem` | [continuous_qRight](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variant1131c4b634b136f35c40be6b518282ca7d68ef5b84aca03c5745727f768f228b.lean/declarations/continuous-qright--da2e8c5e9723ee17f506cf5e.md) | 164 | `result-track:da2e8c5e9723ee17f506cf5e7b06130ce94724bb0ce1bc33291f5c8c6d384716` |
| 9 | `theorem` | [qRight_zero_left](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variant1131c4b634b136f35c40be6b518282ca7d68ef5b84aca03c5745727f768f228b.lean/declarations/qright-zero-left--db901629f6c532d881a9c8ed.md) | 168 | `result-track:db901629f6c532d881a9c8ed2495bcfaa89aea33caaaedcf2a5fb3e9531aa673` |
| 10 | `theorem` | [qRight_one_left](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variant1131c4b634b136f35c40be6b518282ca7d68ef5b84aca03c5745727f768f228b.lean/declarations/qright-one-left--e73987838cf0064f42e42c65.md) | 171 | `result-track:e73987838cf0064f42e42c65101d77cf11e924abbd57e8a17f0ea59cc0e75f4d` |
| 11 | `theorem` | [qRight_zero_right](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variant1131c4b634b136f35c40be6b518282ca7d68ef5b84aca03c5745727f768f228b.lean/declarations/qright-zero-right--e8f91f56bac2c8a53f97cff1.md) | 179 | `result-track:e8f91f56bac2c8a53f97cff1b9592b1873de766c1f18645b4cd9ad04a4948ec2` |
| 12 | `theorem` | [qRight_one_right](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variant1131c4b634b136f35c40be6b518282ca7d68ef5b84aca03c5745727f768f228b.lean/declarations/qright-one-right--d9cdac7c0bc82fcc816b91f4.md) | 190 | `result-track:d9cdac7c0bc82fcc816b91f4d89f1f3bb5389172fc270607e90d91f3571f2744` |
| 13 | `def` | [delayReflRight](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variant1131c4b634b136f35c40be6b518282ca7d68ef5b84aca03c5745727f768f228b.lean/declarations/delayreflright--e075e3ed822fbd5d16bbd044.md) | 203 | `declaration-track:e075e3ed822fbd5d16bbd0449d2e1e55d180ecabbb20986af5af4aed08e8a23d` |
| 14 | `theorem` | [continuous_delayReflRight](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variant1131c4b634b136f35c40be6b518282ca7d68ef5b84aca03c5745727f768f228b.lean/declarations/continuous-delayreflright--361dc721781525194178003f.md) | 211 | `result-track:361dc721781525194178003f214233c39d48f704429303d67e27d56c8e2383c7` |
| 15 | `theorem` | [delayReflRight_zero](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variant1131c4b634b136f35c40be6b518282ca7d68ef5b84aca03c5745727f768f228b.lean/declarations/delayreflright-zero--c9289565cd9cb0b6a6ca6d31.md) | 216 | `result-track:c9289565cd9cb0b6a6ca6d31387013dfa1cc73ed70447032b265963ddae13705` |
| 16 | `theorem` | [delayReflRight_one](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variant1131c4b634b136f35c40be6b518282ca7d68ef5b84aca03c5745727f768f228b.lean/declarations/delayreflright-one--cc8505230c36375d199c0518.md) | 225 | `result-track:cc8505230c36375d199c0518150e5aeed6b2f767ec1b2f855806bdba84aff2e4` |
| 17 | `def` | [delayReflLeft](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variant1131c4b634b136f35c40be6b518282ca7d68ef5b84aca03c5745727f768f228b.lean/declarations/delayreflleft--ec3a67eeb8ebb7fac80eaac3.md) | 231 | `declaration-track:ec3a67eeb8ebb7fac80eaac3359969e7a23be6a976cf8b3647c17a9d8cf91c77` |
| 18 | `theorem` | [continuous_delayReflLeft](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variant1131c4b634b136f35c40be6b518282ca7d68ef5b84aca03c5745727f768f228b.lean/declarations/continuous-delayreflleft--5a734d5d034d696ed3fcc564.md) | 234 | `result-track:5a734d5d034d696ed3fcc5645a0bc3dfc0343df1f7309e1ceef0beda354784e5` |
| 19 | `theorem` | [delayReflLeft_zero](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variant1131c4b634b136f35c40be6b518282ca7d68ef5b84aca03c5745727f768f228b.lean/declarations/delayreflleft-zero--f7610e603ee2691eff520a9d.md) | 239 | `result-track:f7610e603ee2691eff520a9db6aa5ce07922e8b9395ef791bce4db7c5130a47d` |
| 20 | `theorem` | [delayReflLeft_one](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variant1131c4b634b136f35c40be6b518282ca7d68ef5b84aca03c5745727f768f228b.lean/declarations/delayreflleft-one--46ea70b1ee74374f115de487.md) | 242 | `result-track:46ea70b1ee74374f115de48713d3837d03ce8c80c7a6670c1b061cc5db44eb44` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variant1131c4b634b136f35c40be6b518282ca7d68ef5b84aca03c5745727f768f228b.lean/declarations/instance--c9bb8eccad8859c36c5b4d07.md) | 249 | `declaration-track:c9bb8eccad8859c36c5b4d07864b4095bf8eeb92c3658584574eccffdb91a2f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
