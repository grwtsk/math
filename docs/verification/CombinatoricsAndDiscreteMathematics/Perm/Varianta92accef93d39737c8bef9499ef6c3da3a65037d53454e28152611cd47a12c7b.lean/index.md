# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Perm.Varianta92accef93d39737c8bef9499ef6c3da3a65037d53454e28152611cd47a12c7b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "517688d4bb33638cc1f8ba46e9140322727ff261",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Perm/Varianta92accef93d39737c8bef9499ef6c3da3a65037d53454e28152611cd47a12c7b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Varianta92accef93d39737c8bef9499ef6c3da3a65037d53454e28152611cd47a12c7b.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Varianta92accef93d39737c8bef9499ef6c3da3a65037d53454e28152611cd47a12c7b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `517688d4bb33638cc1f8ba46e9140322727ff261`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Perm/Varianta92accef93d39737c8bef9499ef6c3da3a65037d53454e28152611cd47a12c7b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Perm/Varianta92accef93d39737c8bef9499ef6c3da3a65037d53454e28152611cd47a12c7b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.List.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.End` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Nat.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.EquivFin` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorial.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [permsOfList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Varianta92accef93d39737c8bef9499ef6c3da3a65037d53454e28152611cd47a12c7b.lean/declarations/permsoflist--977a1cb5ae762fbde6332ca5.md) | 43 | `declaration-track:977a1cb5ae762fbde6332ca5cf967439739bcbc812a00febe9d641aa74d4fd19` |
| 2 | `theorem` | [length_permsOfList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Varianta92accef93d39737c8bef9499ef6c3da3a65037d53454e28152611cd47a12c7b.lean/declarations/length-permsoflist--810aee7ca8514fd179e49e85.md) | 47 | `result-track:810aee7ca8514fd179e49e85ef66209403e9e7b05b107f176147cc8f772517b6` |
| 3 | `theorem` | [mem_permsOfList_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Varianta92accef93d39737c8bef9499ef6c3da3a65037d53454e28152611cd47a12c7b.lean/declarations/mem-permsoflist-of-mem--aa7013eaf34b70df2e274a50.md) | 52 | `result-track:aa7013eaf34b70df2e274a50f969d30837975c8cee920975b1cfb78bc2fe44b3` |
| 4 | `theorem` | [mem_of_mem_permsOfList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Varianta92accef93d39737c8bef9499ef6c3da3a65037d53454e28152611cd47a12c7b.lean/declarations/mem-of-mem-permsoflist--933a443c1d75d1b5426dce05.md) | 80 | `result-track:933a443c1d75d1b5426dce05b077426b96b1a59eb0c0b86e03e9483a408a1e91` |
| 5 | `theorem` | [mem_permsOfList_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Varianta92accef93d39737c8bef9499ef6c3da3a65037d53454e28152611cd47a12c7b.lean/declarations/mem-permsoflist-iff--e370153534b3e42b5426a099.md) | 97 | `result-track:e370153534b3e42b5426a0990e8b88ee4c69ed34e679c84d66668786bbe7b21c` |
| 6 | `theorem` | [nodup_permsOfList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Varianta92accef93d39737c8bef9499ef6c3da3a65037d53454e28152611cd47a12c7b.lean/declarations/nodup-permsoflist--96f4679218d1980b20823079.md) | 101 | `result-track:96f4679218d1980b20823079ed25c8a8ab537e1784b4c1294eeabdc575f91f79` |
| 7 | `def` | [permsOfFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Varianta92accef93d39737c8bef9499ef6c3da3a65037d53454e28152611cd47a12c7b.lean/declarations/permsoffinset--03b1fe02b05a37a111fd02aa.md) | 130 | `declaration-track:03b1fe02b05a37a111fd02aa924574e018530a1c19730449916820b451b9e31f` |
| 8 | `theorem` | [mem_perms_of_finset_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Varianta92accef93d39737c8bef9499ef6c3da3a65037d53454e28152611cd47a12c7b.lean/declarations/mem-perms-of-finset-iff--f7dfff4a50177bc8336c2d80.md) | 137 | `result-track:f7dfff4a50177bc8336c2d80d6abffb62538dc57477192a2dbac6ddbcd978df3` |
| 9 | `theorem` | [card_perms_of_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Varianta92accef93d39737c8bef9499ef6c3da3a65037d53454e28152611cd47a12c7b.lean/declarations/card-perms-of-finset--7ab6979292e983e25a3fd32e.md) | 141 | `result-track:7ab6979292e983e25a3fd32e5a9a619937016638fc17de7ebd454a6686aca1a2` |
| 10 | `def` | [fintypePerm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Varianta92accef93d39737c8bef9499ef6c3da3a65037d53454e28152611cd47a12c7b.lean/declarations/fintypeperm--048c23956892bd7adbb7ccd3.md) | 145 | `declaration-track:048c23956892bd7adbb7ccd3dbd9a5a9b1cfe9f91e0e0ffacece0ed24b9358ae` |
| 11 | `instance` | [Equiv.instFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Varianta92accef93d39737c8bef9499ef6c3da3a65037d53454e28152611cd47a12c7b.lean/declarations/equiv-instfintype--ab4e78655b3d2c94a23979ad.md) | 148 | `declaration-track:ab4e78655b3d2c94a23979ad7005bf275d14403dd5c7026b248c7c30de912e5b` |
| 12 | `instance` | [MulEquiv.instFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Varianta92accef93d39737c8bef9499ef6c3da3a65037d53454e28152611cd47a12c7b.lean/declarations/mulequiv-instfintype--d42f48db6d446092cc452e59.md) | 159 | `declaration-track:d42f48db6d446092cc452e594d9343058f764d066d9860091b38a378dab9eb7d` |
| 13 | `theorem` | [Fintype.card_perm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Varianta92accef93d39737c8bef9499ef6c3da3a65037d53454e28152611cd47a12c7b.lean/declarations/fintype-card-perm--04accd10b43b337f714bf24d.md) | 166 | `result-track:04accd10b43b337f714bf24d3683a734cffd0a59beacbf9282a15f791746cab3` |
| 14 | `theorem` | [Fintype.card_equiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Varianta92accef93d39737c8bef9499ef6c3da3a65037d53454e28152611cd47a12c7b.lean/declarations/fintype-card-equiv--8bfe52ae265690eacc0c1d76.md) | 169 | `result-track:8bfe52ae265690eacc0c1d765228ec5c76597c2365bca0066689affc49251b9c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
