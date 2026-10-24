# Verification target: GRWTSK.Analysis.MeasureTheory.Finiteness.Variant236a786912a55628509314cfecf4458917b480e90346c91044d5f6ae8c5aaf7a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "435a6ea49629714f7f3e36389edb3fb67b870dcf",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Finiteness/Variant236a786912a55628509314cfecf4458917b480e90346c91044d5f6ae8c5aaf7a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Finiteness/Variant236a786912a55628509314cfecf4458917b480e90346c91044d5f6ae8c5aaf7a.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Finiteness/Variant236a786912a55628509314cfecf4458917b480e90346c91044d5f6ae8c5aaf7a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `435a6ea49629714f7f3e36389edb3fb67b870dcf`.

Source path: `GRWTSK/Analysis/MeasureTheory/Finiteness/Variant236a786912a55628509314cfecf4458917b480e90346c91044d5f6ae8c5aaf7a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Finiteness/Variant236a786912a55628509314cfecf4458917b480e90346c91044d5f6ae8c5aaf7a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ENNReal.Real` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Typeclasses.Finite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Finiteness` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Finiteness/Variant236a786912a55628509314cfecf4458917b480e90346c91044d5f6ae8c5aaf7a.lean/declarations/example--ae7e8e3e317f0878f375c186.md) | 16 | `declaration-track:ae7e8e3e317f0878f375c186b20880385fd738848477cb22916e06a4d6f7bf3a` |
| 2 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Finiteness/Variant236a786912a55628509314cfecf4458917b480e90346c91044d5f6ae8c5aaf7a.lean/declarations/example--3dd177481bbd381a9185ddee.md) | 17 | `declaration-track:3dd177481bbd381a9185ddeed941c700c027b3615c0c85b3180776892723d4bf` |
| 3 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Finiteness/Variant236a786912a55628509314cfecf4458917b480e90346c91044d5f6ae8c5aaf7a.lean/declarations/example--f807e6d2401a97ddcf5109fc.md) | 19 | `declaration-track:f807e6d2401a97ddcf5109fc87bb6b5c4fb180e693c70b39cef4cc9cee062c03` |
| 4 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Finiteness/Variant236a786912a55628509314cfecf4458917b480e90346c91044d5f6ae8c5aaf7a.lean/declarations/example--9c2bd1acac7127f1abc0c889.md) | 21 | `declaration-track:9c2bd1acac7127f1abc0c889f5753e3a84b9d88d9ff0e9d40746062b927cead7` |
| 5 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Finiteness/Variant236a786912a55628509314cfecf4458917b480e90346c91044d5f6ae8c5aaf7a.lean/declarations/example--a1e754351026251e579b3f0a.md) | 22 | `declaration-track:a1e754351026251e579b3f0a83c31e427cb8634792e81599eef3ffd74edc365a` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Finiteness/Variant236a786912a55628509314cfecf4458917b480e90346c91044d5f6ae8c5aaf7a.lean/declarations/example--8b7b9666760edd37faf9310e.md) | 27 | `declaration-track:8b7b9666760edd37faf9310eb6788264e08b4b79fd425c9e9401b61359aaf9be` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Finiteness/Variant236a786912a55628509314cfecf4458917b480e90346c91044d5f6ae8c5aaf7a.lean/declarations/example--2ca515bd10bd75505967ef68.md) | 29 | `declaration-track:2ca515bd10bd75505967ef6892e955cc6513358b60d8fe4f77f451b3cf835902` |
| 8 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Finiteness/Variant236a786912a55628509314cfecf4458917b480e90346c91044d5f6ae8c5aaf7a.lean/declarations/example--5e6bf923aa5b5ae32a000c9c.md) | 31 | `declaration-track:5e6bf923aa5b5ae32a000c9c2fea7c4ee6708ae8c9a4ac0df5c99c21230f1fa5` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Finiteness/Variant236a786912a55628509314cfecf4458917b480e90346c91044d5f6ae8c5aaf7a.lean/declarations/example--dc61a80ac7e06591ec3215bf.md) | 33 | `declaration-track:dc61a80ac7e06591ec3215bfbf7d99800ee602ec0fe2b9e2ae15af4e6c13c8fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
