# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Lattice.Variant7f2c978f22e76bccc6b512a90267b3d88bab3a8a90ca086341d4d4664f9327ee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3cb541d3977bbc77080b6c857a0d669807dd41b3",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lattice/Variant7f2c978f22e76bccc6b512a90267b3d88bab3a8a90ca086341d4d4664f9327ee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant7f2c978f22e76bccc6b512a90267b3d88bab3a8a90ca086341d4d4664f9327ee.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant7f2c978f22e76bccc6b512a90267b3d88bab3a8a90ca086341d4d4664f9327ee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3cb541d3977bbc77080b6c857a0d669807dd41b3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Lattice/Variant7f2c978f22e76bccc6b512a90267b3d88bab3a8a90ca086341d4d4664f9327ee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Lattice/Variant7f2c978f22e76bccc6b512a90267b3d88bab3a8a90ca086341d4d4664f9327ee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Multiset.FinsetOps` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Fold` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant7f2c978f22e76bccc6b512a90267b3d88bab3a8a90ca086341d4d4664f9327ee.lean/declarations/sup--ecd17041865b010039276d61.md) | 27 | `declaration-track:ecd17041865b010039276d613469f814c89db5829edb7861165be42c01164797` |
| 2 | `theorem` | [sup_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant7f2c978f22e76bccc6b512a90267b3d88bab3a8a90ca086341d4d4664f9327ee.lean/declarations/sup-coe--c7cbbd435745ebd947fbdf3d.md) | 31 | `result-track:c7cbbd435745ebd947fbdf3d1091a99250b82ac2cdd8dfe00fe7c0c3926c6383` |
| 3 | `theorem` | [sup_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant7f2c978f22e76bccc6b512a90267b3d88bab3a8a90ca086341d4d4664f9327ee.lean/declarations/sup-zero--9164927a4392ca3acb798553.md) | 35 | `result-track:9164927a4392ca3acb798553a75b590ec5f45619fb1f2c6cca229fc6dc81c5e5` |
| 4 | `theorem` | [sup_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant7f2c978f22e76bccc6b512a90267b3d88bab3a8a90ca086341d4d4664f9327ee.lean/declarations/sup-cons--7a5fe80c7dde1f79419bf317.md) | 39 | `result-track:7a5fe80c7dde1f79419bf317f9188c264ab511f8b49407a608f8ff88ce8c1857` |
| 5 | `theorem` | [sup_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant7f2c978f22e76bccc6b512a90267b3d88bab3a8a90ca086341d4d4664f9327ee.lean/declarations/sup-singleton--32596a288c37eef777594277.md) | 43 | `result-track:32596a288c37eef777594277f3f88037052c1e99c9e4f3e6b88a443cdec240a4` |
| 6 | `theorem` | [sup_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant7f2c978f22e76bccc6b512a90267b3d88bab3a8a90ca086341d4d4664f9327ee.lean/declarations/sup-add--dedb8969fa2cb23eb276787a.md) | 46 | `result-track:dedb8969fa2cb23eb276787a25e761afafe29fe19191ee4cf4bd24b7abe5a5b8` |
| 7 | `theorem` | [sup_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant7f2c978f22e76bccc6b512a90267b3d88bab3a8a90ca086341d4d4664f9327ee.lean/declarations/sup-le--8ce97a036707763fc1c16f1d.md) | 50 | `result-track:8ce97a036707763fc1c16f1dce9881e99f02a5a48b1556888476537a2d48b5cb` |
| 8 | `theorem` | [le_sup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant7f2c978f22e76bccc6b512a90267b3d88bab3a8a90ca086341d4d4664f9327ee.lean/declarations/le-sup--b61fde4bbd451046f929581b.md) | 54 | `result-track:b61fde4bbd451046f929581bb40894793160ef9bc7a4031cb6c272ddce4567e5` |
| 9 | `theorem` | [sup_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant7f2c978f22e76bccc6b512a90267b3d88bab3a8a90ca086341d4d4664f9327ee.lean/declarations/sup-mono--800cdb76410d204eb958396f.md) | 58 | `result-track:800cdb76410d204eb958396fa1658e9892186d9aaa437ea19b011650c9f7722c` |
| 10 | `theorem` | [sup_dedup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant7f2c978f22e76bccc6b512a90267b3d88bab3a8a90ca086341d4d4664f9327ee.lean/declarations/sup-dedup--9a89442cf3f182e9df1d8a7f.md) | 64 | `result-track:9a89442cf3f182e9df1d8a7fd482781ba07d6c1a9bbba41a1f27042c660d2574` |
| 11 | `theorem` | [sup_ndunion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant7f2c978f22e76bccc6b512a90267b3d88bab3a8a90ca086341d4d4664f9327ee.lean/declarations/sup-ndunion--f271f38af5c0c4669c39c9a5.md) | 68 | `result-track:f271f38af5c0c4669c39c9a5805bf638e75b1f58ba0216c33f2300f44294aa7c` |
| 12 | `theorem` | [sup_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant7f2c978f22e76bccc6b512a90267b3d88bab3a8a90ca086341d4d4664f9327ee.lean/declarations/sup-union--a8430eb5f79b177720018895.md) | 72 | `result-track:a8430eb5f79b177720018895f4c7a7befb08051d9bd5d9f82e288b0846efb73b` |
| 13 | `theorem` | [sup_ndinsert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant7f2c978f22e76bccc6b512a90267b3d88bab3a8a90ca086341d4d4664f9327ee.lean/declarations/sup-ndinsert--0ef8ca3bd46289f7d6e21bdd.md) | 76 | `result-track:0ef8ca3bd46289f7d6e21bdde42cbb914c87361f50ee501ce119ff8e4e8c5b3b` |
| 14 | `theorem` | [nodup_sup_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant7f2c978f22e76bccc6b512a90267b3d88bab3a8a90ca086341d4d4664f9327ee.lean/declarations/nodup-sup-iff--8db58c58ec9abfa73ffaca4d.md) | 79 | `result-track:8db58c58ec9abfa73ffaca4d60d8e457f5af6697ed92c3c426d849c4a1c523c2` |
| 15 | `def` | [inf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant7f2c978f22e76bccc6b512a90267b3d88bab3a8a90ca086341d4d4664f9327ee.lean/declarations/inf--b6fd8181e1a0fab1a1571f9a.md) | 96 | `declaration-track:b6fd8181e1a0fab1a1571f9a0ece9341e3e27773edea127b9d8ec55475bee10e` |
| 16 | `theorem` | [inf_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant7f2c978f22e76bccc6b512a90267b3d88bab3a8a90ca086341d4d4664f9327ee.lean/declarations/inf-coe--8a936235a719ed78d9166dbb.md) | 100 | `result-track:8a936235a719ed78d9166dbbb4098a168c92efe23cfed6ede561a38a45405f18` |
| 17 | `theorem` | [inf_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant7f2c978f22e76bccc6b512a90267b3d88bab3a8a90ca086341d4d4664f9327ee.lean/declarations/inf-zero--c6dceb1251542aea0d442f86.md) | 104 | `result-track:c6dceb1251542aea0d442f868c73de8805c1c1b37ab378d04983df700496cddf` |
| 18 | `theorem` | [inf_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant7f2c978f22e76bccc6b512a90267b3d88bab3a8a90ca086341d4d4664f9327ee.lean/declarations/inf-cons--5edab334a1ab6c87eb9c641b.md) | 108 | `result-track:5edab334a1ab6c87eb9c641b0874030764b0a28321cbe645aa8d53373f46520c` |
| 19 | `theorem` | [inf_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant7f2c978f22e76bccc6b512a90267b3d88bab3a8a90ca086341d4d4664f9327ee.lean/declarations/inf-singleton--bf0e4806af857520fc0a2057.md) | 112 | `result-track:bf0e4806af857520fc0a20579b49fc7cc0424d5307cdd53c5b369922084789c8` |
| 20 | `theorem` | [inf_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant7f2c978f22e76bccc6b512a90267b3d88bab3a8a90ca086341d4d4664f9327ee.lean/declarations/inf-add--b8647413e69a479ffc7c5b41.md) | 115 | `result-track:b8647413e69a479ffc7c5b4104f049ac80731dc893c55daec8c7d6eae748d888` |
| 21 | `theorem` | [le_inf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant7f2c978f22e76bccc6b512a90267b3d88bab3a8a90ca086341d4d4664f9327ee.lean/declarations/le-inf--5043fb8a77f142ec6d3babe3.md) | 119 | `result-track:5043fb8a77f142ec6d3babe3c8b061622129b059db9b8d7fe2788aff6c9b0dba` |
| 22 | `theorem` | [inf_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant7f2c978f22e76bccc6b512a90267b3d88bab3a8a90ca086341d4d4664f9327ee.lean/declarations/inf-le--759d5a03066fdf5a91172ea4.md) | 123 | `result-track:759d5a03066fdf5a91172ea4fccae7959f8beb39269cdbf9bda7731a3799d04d` |
| 23 | `theorem` | [inf_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant7f2c978f22e76bccc6b512a90267b3d88bab3a8a90ca086341d4d4664f9327ee.lean/declarations/inf-mono--0bcf253ebf85af0e75a659fb.md) | 127 | `result-track:0bcf253ebf85af0e75a659fb8fbe48ae2fd1a4e23ecf13700f5e8fac7f5167b2` |
| 24 | `theorem` | [inf_dedup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant7f2c978f22e76bccc6b512a90267b3d88bab3a8a90ca086341d4d4664f9327ee.lean/declarations/inf-dedup--68d2fe319ace9142f53fc0fb.md) | 133 | `result-track:68d2fe319ace9142f53fc0fb8b05a451f7c74ae3709634d320a78741097700f4` |
| 25 | `theorem` | [inf_ndunion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant7f2c978f22e76bccc6b512a90267b3d88bab3a8a90ca086341d4d4664f9327ee.lean/declarations/inf-ndunion--9cc8d1dcef81b1eddd7e2ee2.md) | 137 | `result-track:9cc8d1dcef81b1eddd7e2ee2f2562648ea107909cc3e2ae379ea629203f27f47` |
| 26 | `theorem` | [inf_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant7f2c978f22e76bccc6b512a90267b3d88bab3a8a90ca086341d4d4664f9327ee.lean/declarations/inf-union--4f940092c4c5d60420976847.md) | 141 | `result-track:4f940092c4c5d60420976847f1b93e0364734b91438f7cdbb4a1445c23109e45` |
| 27 | `theorem` | [inf_ndinsert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant7f2c978f22e76bccc6b512a90267b3d88bab3a8a90ca086341d4d4664f9327ee.lean/declarations/inf-ndinsert--f68bc7dbb1413eb404d731cd.md) | 145 | `result-track:f68bc7dbb1413eb404d731cdd535cac45f1ce736aeb44306fd2373a352bdac5f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
