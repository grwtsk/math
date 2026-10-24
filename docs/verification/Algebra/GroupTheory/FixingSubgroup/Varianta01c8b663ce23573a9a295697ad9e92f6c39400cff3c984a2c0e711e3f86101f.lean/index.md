# Verification target: GRWTSK.Algebra.GroupTheory.FixingSubgroup.Varianta01c8b663ce23573a9a295697ad9e92f6c39400cff3c984a2c0e711e3f86101f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "39ccdf2bf0b33c37541e2d10a5d9852fdf368621",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/FixingSubgroup/Varianta01c8b663ce23573a9a295697ad9e92f6c39400cff3c984a2c0e711e3f86101f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/FixingSubgroup/Varianta01c8b663ce23573a9a295697ad9e92f6c39400cff3c984a2c0e711e3f86101f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/FixingSubgroup/Varianta01c8b663ce23573a9a295697ad9e92f6c39400cff3c984a2c0e711e3f86101f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `39ccdf2bf0b33c37541e2d10a5d9852fdf368621`.

Source path: `GRWTSK/Algebra/GroupTheory/FixingSubgroup/Varianta01c8b663ce23573a9a295697ad9e92f6c39400cff3c984a2c0e711e3f86101f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/FixingSubgroup/Varianta01c8b663ce23573a9a295697ad9e92f6c39400cff3c984a2c0e711e3f86101f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Lattice` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.FixedPoints` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fixingSubmonoid](../../../../../mathematics/Algebra/GroupTheory/FixingSubgroup/Varianta01c8b663ce23573a9a295697ad9e92f6c39400cff3c984a2c0e711e3f86101f.lean/declarations/fixingsubmonoid--853a40827007c3c2a737e0e5.md) | 50 | `declaration-track:853a40827007c3c2a737e0e5e606fbf2b51d0b1bdb42f99f922e5473bfae540f` |
| 2 | `theorem` | [mem_fixingSubmonoid_iff](../../../../../mathematics/Algebra/GroupTheory/FixingSubgroup/Varianta01c8b663ce23573a9a295697ad9e92f6c39400cff3c984a2c0e711e3f86101f.lean/declarations/mem-fixingsubmonoid-iff--36797f7e274854b131a752e2.md) | 56 | `result-track:36797f7e274854b131a752e2f7cd0b178604157839be07071b3351b870d13da9` |
| 3 | `theorem` | [fixingSubmonoid_fixedPoints_gc](../../../../../mathematics/Algebra/GroupTheory/FixingSubgroup/Varianta01c8b663ce23573a9a295697ad9e92f6c39400cff3c984a2c0e711e3f86101f.lean/declarations/fixingsubmonoid-fixedpoints-gc--c91fb235b5f9159176d95913.md) | 64 | `result-track:c91fb235b5f9159176d9591370c9ff32a4f1a0799e8557e313c8956ad8475531` |
| 4 | `theorem` | [fixingSubmonoid_antitone](../../../../../mathematics/Algebra/GroupTheory/FixingSubgroup/Varianta01c8b663ce23573a9a295697ad9e92f6c39400cff3c984a2c0e711e3f86101f.lean/declarations/fixingsubmonoid-antitone--a4ddf3ad3e1f73746b150b13.md) | 70 | `result-track:a4ddf3ad3e1f73746b150b1391717b384570c3469aca9d947da4ba66b9dba1b7` |
| 5 | `theorem` | [fixedPoints_antitone](../../../../../mathematics/Algebra/GroupTheory/FixingSubgroup/Varianta01c8b663ce23573a9a295697ad9e92f6c39400cff3c984a2c0e711e3f86101f.lean/declarations/fixedpoints-antitone--64a7ff81055477bbdb8f6447.md) | 74 | `result-track:64a7ff81055477bbdb8f644702d5e5b01ec5a7c0cfaf07264d666bc0a190e457` |
| 6 | `theorem` | [fixingSubmonoid_union](../../../../../mathematics/Algebra/GroupTheory/FixingSubgroup/Varianta01c8b663ce23573a9a295697ad9e92f6c39400cff3c984a2c0e711e3f86101f.lean/declarations/fixingsubmonoid-union--740339edfce2bef9699e8aed.md) | 79 | `result-track:740339edfce2bef9699e8aed61dfc3442295910e40c205dc85de00d9ae9b843e` |
| 7 | `theorem` | [fixingSubmonoid_iUnion](../../../../../mathematics/Algebra/GroupTheory/FixingSubgroup/Varianta01c8b663ce23573a9a295697ad9e92f6c39400cff3c984a2c0e711e3f86101f.lean/declarations/fixingsubmonoid-iunion--dad879365bdfbfb0e0ae51ca.md) | 85 | `result-track:dad879365bdfbfb0e0ae51ca087f1af091c2ec4005c3174ea08937987c9d5166` |
| 8 | `theorem` | [fixedPoints_submonoid_sup](../../../../../mathematics/Algebra/GroupTheory/FixingSubgroup/Varianta01c8b663ce23573a9a295697ad9e92f6c39400cff3c984a2c0e711e3f86101f.lean/declarations/fixedpoints-submonoid-sup--0af50184a7430843183b79df.md) | 91 | `result-track:0af50184a7430843183b79dfb0665c11867ec5f2291ecd810433ca1c46ce1a71` |
| 9 | `theorem` | [fixedPoints_submonoid_iSup](../../../../../mathematics/Algebra/GroupTheory/FixingSubgroup/Varianta01c8b663ce23573a9a295697ad9e92f6c39400cff3c984a2c0e711e3f86101f.lean/declarations/fixedpoints-submonoid-isup--bdd2ed7299332b33d2472816.md) | 97 | `result-track:bdd2ed7299332b33d24728164d0cfda6a102367780ab763e60ff230269a773ea` |
| 10 | `def` | [fixingSubgroup](../../../../../mathematics/Algebra/GroupTheory/FixingSubgroup/Varianta01c8b663ce23573a9a295697ad9e92f6c39400cff3c984a2c0e711e3f86101f.lean/declarations/fixingsubgroup--d074b8251016fbd4fed136f0.md) | 111 | `declaration-track:d074b8251016fbd4fed136f06c7aa83422ca35a7c06c08d67d09273623d2403f` |
| 11 | `theorem` | [mem_fixingSubgroup_iff](../../../../../mathematics/Algebra/GroupTheory/FixingSubgroup/Varianta01c8b663ce23573a9a295697ad9e92f6c39400cff3c984a2c0e711e3f86101f.lean/declarations/mem-fixingsubgroup-iff--b9eb987209876fc408e9bb16.md) | 115 | `result-track:b9eb987209876fc408e9bb161de89edebb90509223d6889681e6954d30d0ad71` |
| 12 | `theorem` | [mem_fixingSubgroup_iff_subset_fixedBy](../../../../../mathematics/Algebra/GroupTheory/FixingSubgroup/Varianta01c8b663ce23573a9a295697ad9e92f6c39400cff3c984a2c0e711e3f86101f.lean/declarations/mem-fixingsubgroup-iff-subset-fixedby--672f67b4b88b05d1adefd614.md) | 119 | `result-track:672f67b4b88b05d1adefd6142ca3a1abe247e97abe9dcae63cb59dbc7300f549` |
| 13 | `theorem` | [mem_fixingSubgroup_compl_iff_movedBy_subset](../../../../../mathematics/Algebra/GroupTheory/FixingSubgroup/Varianta01c8b663ce23573a9a295697ad9e92f6c39400cff3c984a2c0e711e3f86101f.lean/declarations/mem-fixingsubgroup-compl-iff-movedby-subset--a9422440df6d79c52044f4f6.md) | 124 | `result-track:a9422440df6d79c52044f4f6d5ac64f6de20e8eba0cea0cb8ca90fad584d3acb` |
| 14 | `theorem` | [fixingSubgroup_fixedPoints_gc](../../../../../mathematics/Algebra/GroupTheory/FixingSubgroup/Varianta01c8b663ce23573a9a295697ad9e92f6c39400cff3c984a2c0e711e3f86101f.lean/declarations/fixingsubgroup-fixedpoints-gc--21fed93307a3f4ed5a4da7b7.md) | 132 | `result-track:21fed93307a3f4ed5a4da7b73248e2bdca9722c69ddce70d275b408b86f805bf` |
| 15 | `theorem` | [fixingSubgroup_antitone](../../../../../mathematics/Algebra/GroupTheory/FixingSubgroup/Varianta01c8b663ce23573a9a295697ad9e92f6c39400cff3c984a2c0e711e3f86101f.lean/declarations/fixingsubgroup-antitone--86c59917cde09ed47cd2a942.md) | 138 | `result-track:86c59917cde09ed47cd2a942d2d0345a8ba66e96ba40201a5f7d37d0a78f10cb` |
| 16 | `theorem` | [fixedPoints_subgroup_antitone](../../../../../mathematics/Algebra/GroupTheory/FixingSubgroup/Varianta01c8b663ce23573a9a295697ad9e92f6c39400cff3c984a2c0e711e3f86101f.lean/declarations/fixedpoints-subgroup-antitone--f77e9ae043205b52b51f3d11.md) | 142 | `result-track:f77e9ae043205b52b51f3d11f714d0a2f584ce7a5c8b579e7934f382891b09b1` |
| 17 | `theorem` | [fixingSubgroup_union](../../../../../mathematics/Algebra/GroupTheory/FixingSubgroup/Varianta01c8b663ce23573a9a295697ad9e92f6c39400cff3c984a2c0e711e3f86101f.lean/declarations/fixingsubgroup-union--953a0c95590ae5433697f5fe.md) | 147 | `result-track:953a0c95590ae5433697f5feeca0574c579bac15ff56929e380844038a1971f1` |
| 18 | `theorem` | [fixingSubgroup_iUnion](../../../../../mathematics/Algebra/GroupTheory/FixingSubgroup/Varianta01c8b663ce23573a9a295697ad9e92f6c39400cff3c984a2c0e711e3f86101f.lean/declarations/fixingsubgroup-iunion--2a179f3542f23beecbbfbb58.md) | 153 | `result-track:2a179f3542f23beecbbfbb5825c7989d3c9ced0395e8ceb1d34eeba58c7fca2b` |
| 19 | `theorem` | [fixedPoints_subgroup_sup](../../../../../mathematics/Algebra/GroupTheory/FixingSubgroup/Varianta01c8b663ce23573a9a295697ad9e92f6c39400cff3c984a2c0e711e3f86101f.lean/declarations/fixedpoints-subgroup-sup--42215903d2afe91370ce4843.md) | 159 | `result-track:42215903d2afe91370ce4843a3a76000046bdfcc0dcc1d31d0902743b4b74edf` |
| 20 | `theorem` | [fixedPoints_subgroup_iSup](../../../../../mathematics/Algebra/GroupTheory/FixingSubgroup/Varianta01c8b663ce23573a9a295697ad9e92f6c39400cff3c984a2c0e711e3f86101f.lean/declarations/fixedpoints-subgroup-isup--0639f220f4a4af2c1fe7c375.md) | 165 | `result-track:0639f220f4a4af2c1fe7c375fcdbbe59c79a02c49d5f8c064f7ab2774a85072f` |
| 21 | `theorem` | [orbit_fixingSubgroup_compl_subset](../../../../../mathematics/Algebra/GroupTheory/FixingSubgroup/Varianta01c8b663ce23573a9a295697ad9e92f6c39400cff3c984a2c0e711e3f86101f.lean/declarations/orbit-fixingsubgroup-compl-subset--d2b406e51f08ad1f678515c6.md) | 171 | `result-track:d2b406e51f08ad1f678515c6918859ffa2b1f9f875d64d063f62e3909c508d6b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
