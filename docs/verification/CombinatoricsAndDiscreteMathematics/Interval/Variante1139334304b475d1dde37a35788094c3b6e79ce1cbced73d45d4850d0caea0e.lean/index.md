# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Interval.Variante1139334304b475d1dde37a35788094c3b6e79ce1cbced73d45d4850d0caea0e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "95716f7596fc3f80289a9bfa8b905e5b0def1452",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variante1139334304b475d1dde37a35788094c3b6e79ce1cbced73d45d4850d0caea0e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variante1139334304b475d1dde37a35788094c3b6e79ce1cbced73d45d4850d0caea0e.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variante1139334304b475d1dde37a35788094c3b6e79ce1cbced73d45d4850d0caea0e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `95716f7596fc3f80289a9bfa8b905e5b0def1452`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variante1139334304b475d1dde37a35788094c3b6e79ce1cbced73d45d4850d0caea0e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Interval/Variante1139334304b475d1dde37a35788094c3b6e79ce1cbced73d45d4850d0caea0e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Sum.Order` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.LocallyFinite` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sumLift₂](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variante1139334304b475d1dde37a35788094c3b6e79ce1cbced73d45d4850d0caea0e.lean/declarations/sumlift--3254d6d8cf1a5a351a53ee0a.md) | 36 | `declaration-track:3254d6d8cf1a5a351a53ee0aa3646e6368c88337c1d3b4a2fa67dd655996f86b` |
| 2 | `theorem` | [mem_sumLift₂](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variante1139334304b475d1dde37a35788094c3b6e79ce1cbced73d45d4850d0caea0e.lean/declarations/mem-sumlift--d1460c32abc97318579a34f5.md) | 45 | `result-track:d1460c32abc97318579a34f5f4df22da6134748a63d2c90f9446182f525f5b02` |
| 3 | `theorem` | [inl_mem_sumLift₂](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variante1139334304b475d1dde37a35788094c3b6e79ce1cbced73d45d4850d0caea0e.lean/declarations/inl-mem-sumlift--6925b9eaff999362b53a739d.md) | 62 | `result-track:6925b9eaff999362b53a739d20d7e0d1a7c8a10c4669b95444f75a2752d2ff9a` |
| 4 | `theorem` | [inr_mem_sumLift₂](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variante1139334304b475d1dde37a35788094c3b6e79ce1cbced73d45d4850d0caea0e.lean/declarations/inr-mem-sumlift--d8fdc83b8882147710430099.md) | 70 | `result-track:d8fdc83b8882147710430099d25f962f6ee7988c2efa6f9f03e179076e561475` |
| 5 | `theorem` | [sumLift₂_eq_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variante1139334304b475d1dde37a35788094c3b6e79ce1cbced73d45d4850d0caea0e.lean/declarations/sumlift-eq-empty--71450ed97e377f85689a2e3e.md) | 78 | `result-track:71450ed97e377f85689a2e3e8f66b4c7fee6d8360d57ffeb5414015aa13dcee4` |
| 6 | `theorem` | [sumLift₂_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variante1139334304b475d1dde37a35788094c3b6e79ce1cbced73d45d4850d0caea0e.lean/declarations/sumlift-nonempty--7677d04d0acc3c5bdd36cfe1.md) | 93 | `result-track:7677d04d0acc3c5bdd36cfe1e50f64d1792df2df6e21cdc8fe7eab0813b80309` |
| 7 | `theorem` | [sumLift₂_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variante1139334304b475d1dde37a35788094c3b6e79ce1cbced73d45d4850d0caea0e.lean/declarations/sumlift-mono--f335f09d339944a6d10e6c9a.md) | 100 | `result-track:f335f09d339944a6d10e6c9ab02c6cc518c8457e5348e5d5e71c2e226cd4e9f3` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variante1139334304b475d1dde37a35788094c3b6e79ce1cbced73d45d4850d0caea0e.lean/declarations/instance--a9ee7c84c2b0b0898f0ee77f.md) | 125 | `declaration-track:a9ee7c84c2b0b0898f0ee77f944392ae6abef834737b46e463bb3dff94b75c61` |
| 9 | `theorem` | [Icc_inl_inl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variante1139334304b475d1dde37a35788094c3b6e79ce1cbced73d45d4850d0caea0e.lean/declarations/icc-inl-inl--6019355b18608e091f6ed3c8.md) | 138 | `result-track:6019355b18608e091f6ed3c89e1bd847e3604e91027aced0b69d2736a6a07f22` |
| 10 | `theorem` | [Ico_inl_inl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variante1139334304b475d1dde37a35788094c3b6e79ce1cbced73d45d4850d0caea0e.lean/declarations/ico-inl-inl--fb9ec4a15c9d1d38a33773bf.md) | 142 | `result-track:fb9ec4a15c9d1d38a33773bfa0e26a83220f29816ceaabf435f07272d102d6f0` |
| 11 | `theorem` | [Ioc_inl_inl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variante1139334304b475d1dde37a35788094c3b6e79ce1cbced73d45d4850d0caea0e.lean/declarations/ioc-inl-inl--f739fe5d833cacf724f2b584.md) | 146 | `result-track:f739fe5d833cacf724f2b584fec29c0298eecbb9beca2fc741a4d4aa1c5075c6` |
| 12 | `theorem` | [Ioo_inl_inl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variante1139334304b475d1dde37a35788094c3b6e79ce1cbced73d45d4850d0caea0e.lean/declarations/ioo-inl-inl--b48c837d793f4c6db178df66.md) | 150 | `result-track:b48c837d793f4c6db178df6675d3b988eb273453216a0c1ff768c97079e5cfef` |
| 13 | `theorem` | [Icc_inl_inr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variante1139334304b475d1dde37a35788094c3b6e79ce1cbced73d45d4850d0caea0e.lean/declarations/icc-inl-inr--48a478d74eba3baf640f462f.md) | 155 | `result-track:48a478d74eba3baf640f462f13f4dd7238cf907ad0f7c014000e84efcec74648` |
| 14 | `theorem` | [Ico_inl_inr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variante1139334304b475d1dde37a35788094c3b6e79ce1cbced73d45d4850d0caea0e.lean/declarations/ico-inl-inr--06d8a36eab712b27d68e6061.md) | 160 | `result-track:06d8a36eab712b27d68e60614526bfc5d7df26fb19d7076a233b128c5ebeac06` |
| 15 | `theorem` | [Ioc_inl_inr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variante1139334304b475d1dde37a35788094c3b6e79ce1cbced73d45d4850d0caea0e.lean/declarations/ioc-inl-inr--0a3c47ccf6beebbb9aa7d9bb.md) | 165 | `result-track:0a3c47ccf6beebbb9aa7d9bb5ab6a4230f6d4f943b95fcaf800a67521cd50b70` |
| 16 | `theorem` | [Ioo_inl_inr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variante1139334304b475d1dde37a35788094c3b6e79ce1cbced73d45d4850d0caea0e.lean/declarations/ioo-inl-inr--4728a88a83d192d4197a2ba6.md) | 170 | `result-track:4728a88a83d192d4197a2ba6de3782e06e727b3c9078af36545a7526e5bc6501` |
| 17 | `theorem` | [Icc_inr_inl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variante1139334304b475d1dde37a35788094c3b6e79ce1cbced73d45d4850d0caea0e.lean/declarations/icc-inr-inl--c531cc96ee5e8d900d554c25.md) | 175 | `result-track:c531cc96ee5e8d900d554c2520fba73d53a7884c86ab04a13db8385397dd54ac` |
| 18 | `theorem` | [Ico_inr_inl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variante1139334304b475d1dde37a35788094c3b6e79ce1cbced73d45d4850d0caea0e.lean/declarations/ico-inr-inl--f5745f5dc77bea4644042b91.md) | 180 | `result-track:f5745f5dc77bea4644042b911b7420d1ec1e519e318f7f16cbc6318e1f5def6e` |
| 19 | `theorem` | [Ioc_inr_inl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variante1139334304b475d1dde37a35788094c3b6e79ce1cbced73d45d4850d0caea0e.lean/declarations/ioc-inr-inl--960efe99a48ae5d84629443a.md) | 185 | `result-track:960efe99a48ae5d84629443a3316590a885c4cd25416a4a525c902ed3195074f` |
| 20 | `theorem` | [Ioo_inr_inl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variante1139334304b475d1dde37a35788094c3b6e79ce1cbced73d45d4850d0caea0e.lean/declarations/ioo-inr-inl--3fa23f112c9dbecd0bb21e6c.md) | 190 | `result-track:3fa23f112c9dbecd0bb21e6c4239c34b3cc4937e7566f2eea7b8c969c62a7fed` |
| 21 | `theorem` | [Icc_inr_inr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variante1139334304b475d1dde37a35788094c3b6e79ce1cbced73d45d4850d0caea0e.lean/declarations/icc-inr-inr--94d847b81b7a67c296f09a6e.md) | 194 | `result-track:94d847b81b7a67c296f09a6e856ae62acf852cf4cbbc5d0fb3b82b643ec1ca4a` |
| 22 | `theorem` | [Ico_inr_inr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variante1139334304b475d1dde37a35788094c3b6e79ce1cbced73d45d4850d0caea0e.lean/declarations/ico-inr-inr--8d87feaf19f60f83f5ff5a62.md) | 198 | `result-track:8d87feaf19f60f83f5ff5a62731b1986ab6369ff5f0e5cb2992ef69bdf25d33a` |
| 23 | `theorem` | [Ioc_inr_inr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variante1139334304b475d1dde37a35788094c3b6e79ce1cbced73d45d4850d0caea0e.lean/declarations/ioc-inr-inr--152359b470c8ea6f333db5e3.md) | 202 | `result-track:152359b470c8ea6f333db5e3bfd3d75282bb0f154da7bd07918b39ab5e6790dc` |
| 24 | `theorem` | [Ioo_inr_inr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variante1139334304b475d1dde37a35788094c3b6e79ce1cbced73d45d4850d0caea0e.lean/declarations/ioo-inr-inr--f4d39b117a925af35c1abc63.md) | 206 | `result-track:f4d39b117a925af35c1abc63ecac9d12f8663d6467db478606ce50555be23fd6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
