# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Inclusion.Variant633d241d50f53841300844d14babe2e773a0cfdaba982304161ca24e219d53fc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1a14a5f9418ae71bc71bd0ef21ca873102513131",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inclusion/Variant633d241d50f53841300844d14babe2e773a0cfdaba982304161ca24e219d53fc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inclusion/Variant633d241d50f53841300844d14babe2e773a0cfdaba982304161ca24e219d53fc.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inclusion/Variant633d241d50f53841300844d14babe2e773a0cfdaba982304161ca24e219d53fc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1a14a5f9418ae71bc71bd0ef21ca873102513131`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inclusion/Variant633d241d50f53841300844d14babe2e773a0cfdaba982304161ca24e219d53fc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inclusion/Variant633d241d50f53841300844d14babe2e773a0cfdaba982304161ca24e219d53fc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [inclusion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inclusion/Variant633d241d50f53841300844d14babe2e773a0cfdaba982304161ca24e219d53fc.lean/declarations/inclusion--b6e549b6af10855889479847.md) | 25 | `declaration-track:b6e549b6af10855889479847a74be919c594d41a96d54b9a2f177f34a9902f2c` |
| 2 | `theorem` | [inclusion_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inclusion/Variant633d241d50f53841300844d14babe2e773a0cfdaba982304161ca24e219d53fc.lean/declarations/inclusion-self--9ff48863dfc1504b08188e48.md) | 27 | `result-track:9ff48863dfc1504b08188e48d614892b93c452496a4b3ab8557154afabec07c2` |
| 3 | `theorem` | [inclusion_eq_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inclusion/Variant633d241d50f53841300844d14babe2e773a0cfdaba982304161ca24e219d53fc.lean/declarations/inclusion-eq-id--8981497790ad7efaed13b617.md) | 31 | `result-track:8981497790ad7efaed13b6174c4a8200fa40cfefbd112b18bcf86cc67b950695` |
| 4 | `theorem` | [inclusion_mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inclusion/Variant633d241d50f53841300844d14babe2e773a0cfdaba982304161ca24e219d53fc.lean/declarations/inclusion-mk--1eab931587eac998fe026752.md) | 35 | `result-track:1eab931587eac998fe02675229319f8a628cef1c2890a2bcbfce424b08f337b3` |
| 5 | `theorem` | [inclusion_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inclusion/Variant633d241d50f53841300844d14babe2e773a0cfdaba982304161ca24e219d53fc.lean/declarations/inclusion-right--6e6b1a3c6d06c12e6a52bd62.md) | 38 | `result-track:6e6b1a3c6d06c12e6a52bd6249679af58d2166207d48150803aeea95c36965f8` |
| 6 | `theorem` | [inclusion_inclusion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inclusion/Variant633d241d50f53841300844d14babe2e773a0cfdaba982304161ca24e219d53fc.lean/declarations/inclusion-inclusion--31a9dd496aa922cdb40345df.md) | 43 | `result-track:31a9dd496aa922cdb40345df11c92cced963fbc7fea72cde91ae9a9422ea4ff1` |
| 7 | `theorem` | [inclusion_comp_inclusion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inclusion/Variant633d241d50f53841300844d14babe2e773a0cfdaba982304161ca24e219d53fc.lean/declarations/inclusion-comp-inclusion--ed15e63123dbc70050f209cb.md) | 49 | `result-track:ed15e63123dbc70050f209cbc052a1585964287b3cb6d4555c7105eb5bbcf31d` |
| 8 | `theorem` | [coe_inclusion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inclusion/Variant633d241d50f53841300844d14babe2e773a0cfdaba982304161ca24e219d53fc.lean/declarations/coe-inclusion--aa57cd04fe0335fbd6a524cd.md) | 54 | `result-track:aa57cd04fe0335fbd6a524cd462a19f0eedcfdcdbb5376cd44ec218b65dfd746` |
| 9 | `theorem` | [val_comp_inclusion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inclusion/Variant633d241d50f53841300844d14babe2e773a0cfdaba982304161ca24e219d53fc.lean/declarations/val-comp-inclusion--7dbaf8e77258ffe69006e606.md) | 57 | `result-track:7dbaf8e77258ffe69006e60659f0639edbd02a6664ff14453f446c8965c78f34` |
| 10 | `theorem` | [inclusion_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inclusion/Variant633d241d50f53841300844d14babe2e773a0cfdaba982304161ca24e219d53fc.lean/declarations/inclusion-injective--809accca5c5825cd6d1e5e14.md) | 60 | `result-track:809accca5c5825cd6d1e5e14de3aefdf512f5a57d5d831cd4f7edd4e28a73168` |
| 11 | `theorem` | [inclusion_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inclusion/Variant633d241d50f53841300844d14babe2e773a0cfdaba982304161ca24e219d53fc.lean/declarations/inclusion-inj--3974f84c11b355d68477b811.md) | 63 | `result-track:3974f84c11b355d68477b8111e44ac1dba14a0f986c22f2244ed7efe1619c7e5` |
| 12 | `theorem` | [eq_of_inclusion_surjective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inclusion/Variant633d241d50f53841300844d14babe2e773a0cfdaba982304161ca24e219d53fc.lean/declarations/eq-of-inclusion-surjective--eeed50b0f657b55771d5fa79.md) | 66 | `result-track:eeed50b0f657b55771d5fa798f090429b4fa15c5924f4ac718e10ba86c2ecd07` |
| 13 | `theorem` | [inclusion_le_inclusion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inclusion/Variant633d241d50f53841300844d14babe2e773a0cfdaba982304161ca24e219d53fc.lean/declarations/inclusion-le-inclusion--8eddb05b6c546a424e299c83.md) | 72 | `result-track:8eddb05b6c546a424e299c8394af273af176b42c61ee837d08fd985fb6f08987` |
| 14 | `theorem` | [inclusion_lt_inclusion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inclusion/Variant633d241d50f53841300844d14babe2e773a0cfdaba982304161ca24e219d53fc.lean/declarations/inclusion-lt-inclusion--90fa5cda2b2cd34db3b818c6.md) | 75 | `result-track:90fa5cda2b2cd34db3b818c68ffa76ef89f0a8928b3722f975b7f09f56a1e1a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
