# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Dominant.Variant60c1873356c27c0b01637ceb8cb1290fa508af146bff767edf59de60cffe376a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1710164f78ead9a02f14875eb40dfe6288a365d2",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Dominant/Variant60c1873356c27c0b01637ceb8cb1290fa508af146bff767edf59de60cffe376a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Dominant/Variant60c1873356c27c0b01637ceb8cb1290fa508af146bff767edf59de60cffe376a.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Dominant/Variant60c1873356c27c0b01637ceb8cb1290fa508af146bff767edf59de60cffe376a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1710164f78ead9a02f14875eb40dfe6288a365d2`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Dominant/Variant60c1873356c27c0b01637ceb8cb1290fa508af146bff767edf59de60cffe376a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Dominant/Variant60c1873356c27c0b01637ceb8cb1290fa508af146bff767edf59de60cffe376a.lean.json)

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
| 1 | `instance` | [isDominant_restrict_hom](../../../../../mathematics/Geometry/AlgebraicGeometry/Dominant/Variant60c1873356c27c0b01637ceb8cb1290fa508af146bff767edf59de60cffe376a.lean/declarations/isdominant-restrict-hom--82c4f956e8bd7dd81003a0c7.md) | 39 | `declaration-track:82c4f956e8bd7dd81003a0c73d7807f1d4c8cce8c7522b835009d14ec301d4a3` |
| 2 | `lemma` | [isDominant_hom_of_isDominant_restrict_hom](../../../../../mathematics/Geometry/AlgebraicGeometry/Dominant/Variant60c1873356c27c0b01637ceb8cb1290fa508af146bff767edf59de60cffe376a.lean/declarations/isdominant-hom-of-isdominant-restrict-hom--d812b770d3ab314fb1b2e8e1.md) | 46 | `result-track:d812b770d3ab314fb1b2e8e1d16f13774ecd90c42448ead135e2f0edab6065e4` |
| 3 | `lemma` | [isDominant_hom_iff_isDominant_restrict_hom](../../../../../mathematics/Geometry/AlgebraicGeometry/Dominant/Variant60c1873356c27c0b01637ceb8cb1290fa508af146bff767edf59de60cffe376a.lean/declarations/isdominant-hom-iff-isdominant-restrict-hom--c5f220535bb3439fe24780e4.md) | 52 | `result-track:c5f220535bb3439fe24780e40d9dc9a2c186c38b2f0e98ffea971b47bc8ac492` |
| 4 | `lemma` | [isDominant_hom_iff_of_equiv](../../../../../mathematics/Geometry/AlgebraicGeometry/Dominant/Variant60c1873356c27c0b01637ceb8cb1290fa508af146bff767edf59de60cffe376a.lean/declarations/isdominant-hom-iff-of-equiv--5346d8364236aa63c8a5c126.md) | 60 | `result-track:5346d8364236aa63c8a5c1269f84d023b837d5e2de00529381e9571d08e868a7` |
| 5 | `class` | [RationalMap.IsDominant](../../../../../mathematics/Geometry/AlgebraicGeometry/Dominant/Variant60c1873356c27c0b01637ceb8cb1290fa508af146bff767edf59de60cffe376a.lean/declarations/rationalmap-isdominant--de1c8c4f7e633e5d9396df37.md) | 73 | `declaration-track:de1c8c4f7e633e5d9396df37e87cfbeeb4ccd53f753f925b8c7f3e4fc2060710` |
| 6 | `lemma` | [PartialMap.isDominant_toRationalMap_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Dominant/Variant60c1873356c27c0b01637ceb8cb1290fa508af146bff767edf59de60cffe376a.lean/declarations/partialmap-isdominant-torationalmap-iff--8a8207e883c188f7b53ab90b.md) | 78 | `result-track:8a8207e883c188f7b53ab90b862232e0add1c0d93e9aae8567e3542ebcfeb686` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Dominant/Variant60c1873356c27c0b01637ceb8cb1290fa508af146bff767edf59de60cffe376a.lean/declarations/instance--fc8cf74c24c5b96813ea1c2e.md) | 82 | `declaration-track:fc8cf74c24c5b96813ea1c2edea25f0a53a0df4ce5da53a6d6d01d8614c0c98c` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Dominant/Variant60c1873356c27c0b01637ceb8cb1290fa508af146bff767edf59de60cffe376a.lean/declarations/instance--e7e8e373f24121a9ba0f55e7.md) | 86 | `declaration-track:e7e8e373f24121a9ba0f55e7213d93905967d72bbc8e988186433220edf0e338` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
