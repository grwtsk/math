# Verification target: GRWTSK.Topology.GeneralTopology.GDelta.Variant6894cd3a1341a3d434c7b5546b754671efc2f8501bd88fad22fa32108de304b9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4af67c5356eedf0ea705e8f99c91bb7b95f61db4",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/GDelta/Variant6894cd3a1341a3d434c7b5546b754671efc2f8501bd88fad22fa32108de304b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/GDelta/Variant6894cd3a1341a3d434c7b5546b754671efc2f8501bd88fad22fa32108de304b9.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/GDelta/Variant6894cd3a1341a3d434c7b5546b754671efc2f8501bd88fad22fa32108de304b9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4af67c5356eedf0ea705e8f99c91bb7b95f61db4`.

Source path: `GRWTSK/Topology/GeneralTopology/GDelta/Variant6894cd3a1341a3d434c7b5546b754671efc2f8501bd88fad22fa32108de304b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/GDelta/Variant6894cd3a1341a3d434c7b5546b754671efc2f8501bd88fad22fa32108de304b9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Compactness.Lindelof` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Compactness.SigmaCompact` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Connected.TotallyDisconnected` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Inseparable` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.Regular` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.GDelta.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsGδ.compl_singleton](../../../../../mathematics/Topology/GeneralTopology/GDelta/Variant6894cd3a1341a3d434c7b5546b754671efc2f8501bd88fad22fa32108de304b9.lean/declarations/isg-compl-singleton--752049e89bda263e4286edcb.md) | 43 | `result-track:752049e89bda263e4286edcb029a7531b2d9fe59d536a7ba73d9fee99de924d3` |
| 2 | `theorem` | [Set.Countable.isGδ_compl](../../../../../mathematics/Topology/GeneralTopology/GDelta/Variant6894cd3a1341a3d434c7b5546b754671efc2f8501bd88fad22fa32108de304b9.lean/declarations/set-countable-isg-compl--64deac3fad3f7d6cebad8b3b.md) | 47 | `result-track:64deac3fad3f7d6cebad8b3b98422b290bb9d3778abfd925355f3bc006d3fe56` |
| 3 | `theorem` | [Set.Finite.isGδ_compl](../../../../../mathematics/Topology/GeneralTopology/GDelta/Variant6894cd3a1341a3d434c7b5546b754671efc2f8501bd88fad22fa32108de304b9.lean/declarations/set-finite-isg-compl--a8f112dada6bbb74be0e4a3f.md) | 51 | `result-track:a8f112dada6bbb74be0e4a3f0f5dcbeb2e59bdc57508003da5770db8be490ad4` |
| 4 | `theorem` | [Set.Subsingleton.isGδ_compl](../../../../../mathematics/Topology/GeneralTopology/GDelta/Variant6894cd3a1341a3d434c7b5546b754671efc2f8501bd88fad22fa32108de304b9.lean/declarations/set-subsingleton-isg-compl--9e586f01b6b43d875f39af03.md) | 54 | `result-track:9e586f01b6b43d875f39af0377bb529579e5d6079568a2443e4c5b38951bc7a4` |
| 5 | `theorem` | [Finset.isGδ_compl](../../../../../mathematics/Topology/GeneralTopology/GDelta/Variant6894cd3a1341a3d434c7b5546b754671efc2f8501bd88fad22fa32108de304b9.lean/declarations/finset-isg-compl--ef9f91bf8ba3a21182845416.md) | 57 | `result-track:ef9f91bf8ba3a2118284541673556756468a418a33f13100c03971a0591c3bd4` |
| 6 | `theorem` | [IsGδ.singleton](../../../../../mathematics/Topology/GeneralTopology/GDelta/Variant6894cd3a1341a3d434c7b5546b754671efc2f8501bd88fad22fa32108de304b9.lean/declarations/isg-singleton--b6c472521ac452429ab8f1b1.md) | 60 | `result-track:b6c472521ac452429ab8f1b1738e1cc528a459cc56f93fdd9e329517b5d9ffde` |
| 7 | `theorem` | [Set.Finite.isGδ](../../../../../mathematics/Topology/GeneralTopology/GDelta/Variant6894cd3a1341a3d434c7b5546b754671efc2f8501bd88fad22fa32108de304b9.lean/declarations/set-finite-isg--3524288a3567a05f20aea42f.md) | 67 | `result-track:3524288a3567a05f20aea42ff43c1017ab9b80740bd7e30f00f5a1daac58f98e` |
| 8 | `class` | [PerfectlyNormalSpace](../../../../../mathematics/Topology/GeneralTopology/GDelta/Variant6894cd3a1341a3d434c7b5546b754671efc2f8501bd88fad22fa32108de304b9.lean/declarations/perfectlynormalspace--efb7144fa303599c0ff35afa.md) | 76 | `declaration-track:efb7144fa303599c0ff35afa9c10c4a32eae6e4b3853f74907e4d8313288667d` |
| 9 | `theorem` | [Disjoint.hasSeparatingCover_closed_gdelta_right](../../../../../mathematics/Topology/GeneralTopology/GDelta/Variant6894cd3a1341a3d434c7b5546b754671efc2f8501bd88fad22fa32108de304b9.lean/declarations/disjoint-hasseparatingcover-closed-gdelta-right--f238c466cec598301c94fd6a.md) | 80 | `result-track:f238c466cec598301c94fd6acbd69c51f8758c4f573f2a541511fd47636bc89c` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/GDelta/Variant6894cd3a1341a3d434c7b5546b754671efc2f8501bd88fad22fa32108de304b9.lean/declarations/instance--d10c2530f9697870d247694a.md) | 108 | `declaration-track:d10c2530f9697870d247694a7ee4da16f814fc64f167464388224eba11a59dcf` |
| 11 | `theorem` | [IsClosed.isGδ](../../../../../mathematics/Topology/GeneralTopology/GDelta/Variant6894cd3a1341a3d434c7b5546b754671efc2f8501bd88fad22fa32108de304b9.lean/declarations/isclosed-isg--5ab039328c91500222fa9d0c.md) | 118 | `result-track:5ab039328c91500222fa9d0ce1c5b14a0226a22caa3511f06855ec75159e439e` |
| 12 | `class` | [T6Space](../../../../../mathematics/Topology/GeneralTopology/GDelta/Variant6894cd3a1341a3d434c7b5546b754671efc2f8501bd88fad22fa32108de304b9.lean/declarations/t6space--c597ae7f9bef4aeaff0947bf.md) | 122 | `declaration-track:c597ae7f9bef4aeaff0947bf7b161288476aa585fe462a3e27b2bcaec2542254` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/GDelta/Variant6894cd3a1341a3d434c7b5546b754671efc2f8501bd88fad22fa32108de304b9.lean/declarations/instance--57e42f5e07dc123f63aa6fe6.md) | 126 | `declaration-track:57e42f5e07dc123f63aa6fe6479476adf132a90b70f8e4a14dd2f4a99faa8928` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
