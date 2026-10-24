# Verification target: GRWTSK.Algebra.Count.Variant82600250001924ae4d658c2ad6533953ffc830c70eb4449c7d0744a9d05c08d3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "660382a868b69d021460803754268b33c3784ca7",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Count/Variant82600250001924ae4d658c2ad6533953ffc830c70eb4449c7d0744a9d05c08d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Count/Variant82600250001924ae4d658c2ad6533953ffc830c70eb4449c7d0744a9d05c08d3.lean/index.md) · [Full source](../../../../mathematics/Algebra/Count/Variant82600250001924ae4d658c2ad6533953ffc830c70eb4449c7d0744a9d05c08d3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `660382a868b69d021460803754268b33c3784ca7`.

Source path: `GRWTSK/Algebra/Count/Variant82600250001924ae4d658c2ad6533953ffc830c70eb4449c7d0744a9d05c08d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Count/Variant82600250001924ae4d658c2ad6533953ffc830c70eb4449c7d0744a9d05c08d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.FreeMonoid.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.TypeTags.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [countP'](../../../../mathematics/Algebra/Count/Variant82600250001924ae4d658c2ad6533953ffc830c70eb4449c7d0744a9d05c08d3.lean/declarations/countp--a9a4d2f6c92fd3fc7859ca8f.md) | 24 | `declaration-track:a9a4d2f6c92fd3fc7859ca8fce2aa728c7d99ede934fb507f907d81adf72b837` |
| 2 | `lemma` | [countP'_one](../../../../mathematics/Algebra/Count/Variant82600250001924ae4d658c2ad6533953ffc830c70eb4449c7d0744a9d05c08d3.lean/declarations/countp-one--5548ce0775d819f349223623.md) | 27 | `result-track:5548ce0775d819f3492236232aad2926f3a6cfd89fd5fd34974b47727788d2bb` |
| 3 | `lemma` | [countP'_mul](../../../../mathematics/Algebra/Count/Variant82600250001924ae4d658c2ad6533953ffc830c70eb4449c7d0744a9d05c08d3.lean/declarations/countp-mul--e790f8aecc8f8a08eb81fa4e.md) | 30 | `result-track:e790f8aecc8f8a08eb81fa4e599021aefd7f3fa125b7973a3fb7138606c25d10` |
| 4 | `def` | [countP](../../../../mathematics/Algebra/Count/Variant82600250001924ae4d658c2ad6533953ffc830c70eb4449c7d0744a9d05c08d3.lean/declarations/countp--ab709374e954db0971a000ab.md) | 35 | `declaration-track:ab709374e954db0971a000ab1aceef8fd7d21fc398d7bd82cc09e5ed793b74f4` |
| 5 | `theorem` | [countP_apply](../../../../mathematics/Algebra/Count/Variant82600250001924ae4d658c2ad6533953ffc830c70eb4449c7d0744a9d05c08d3.lean/declarations/countp-apply--0c543329eb75a141a28facca.md) | 42 | `result-track:0c543329eb75a141a28faccaea0d0fdc9cb3282bd1f7fa646d4d4ec90f69b4a9` |
| 6 | `lemma` | [countP_of](../../../../mathematics/Algebra/Count/Variant82600250001924ae4d658c2ad6533953ffc830c70eb4449c7d0744a9d05c08d3.lean/declarations/countp-of--5ee6cd1703a7f9b8657488cb.md) | 44 | `result-track:5ee6cd1703a7f9b8657488cb1051bb4a0645454d01132cb129804c7d21061974` |
| 7 | `def` | [count](../../../../mathematics/Algebra/Count/Variant82600250001924ae4d658c2ad6533953ffc830c70eb4449c7d0744a9d05c08d3.lean/declarations/count--a5431f5ac729fa73234a5c90.md) | 51 | `declaration-track:a5431f5ac729fa73234a5c90b650cf3ea77a1a819f5fe4f2e1db6f62f30df915` |
| 8 | `theorem` | [count_apply](../../../../mathematics/Algebra/Count/Variant82600250001924ae4d658c2ad6533953ffc830c70eb4449c7d0744a9d05c08d3.lean/declarations/count-apply--514458b03cbf6163499ce1d8.md) | 53 | `result-track:514458b03cbf6163499ce1d87e6ce05150db440a1f919940f8adcd43315a7c2b` |
| 9 | `theorem` | [count_of](../../../../mathematics/Algebra/Count/Variant82600250001924ae4d658c2ad6533953ffc830c70eb4449c7d0744a9d05c08d3.lean/declarations/count-of--6bd441e52a806bfe3d89b50e.md) | 56 | `result-track:6bd441e52a806bfe3d89b50ec32a4bbdd0475d3abb3b8285ba51a6e3e2423ce9` |
| 10 | `def` | [countP](../../../../mathematics/Algebra/Count/Variant82600250001924ae4d658c2ad6533953ffc830c70eb4449c7d0744a9d05c08d3.lean/declarations/countp--953a7e632da53002e0852d1c.md) | 65 | `declaration-track:953a7e632da53002e0852d1cfea48f7add2fc00fe17f699a0e08cbae8a88cd99` |
| 11 | `theorem` | [countP_apply](../../../../mathematics/Algebra/Count/Variant82600250001924ae4d658c2ad6533953ffc830c70eb4449c7d0744a9d05c08d3.lean/declarations/countp-apply--ec202fc3112de3f05d497ff3.md) | 70 | `result-track:ec202fc3112de3f05d497ff31b090b1c816135f025a9d848c3ea82fe0407747b` |
| 12 | `theorem` | [countP_of](../../../../mathematics/Algebra/Count/Variant82600250001924ae4d658c2ad6533953ffc830c70eb4449c7d0744a9d05c08d3.lean/declarations/countp-of--f13e6155b65243b59104dd10.md) | 72 | `result-track:f13e6155b65243b59104dd10646e3610dff5dc7f2e71ece24a5742a007b892bf` |
| 13 | `def` | [count](../../../../mathematics/Algebra/Count/Variant82600250001924ae4d658c2ad6533953ffc830c70eb4449c7d0744a9d05c08d3.lean/declarations/count--0c1d818a8835fd7f84f8472b.md) | 78 | `declaration-track:0c1d818a8835fd7f84f8472b5825d4b440d9683235cc1b183acf4feb70da4774` |
| 14 | `lemma` | [count_of](../../../../mathematics/Algebra/Count/Variant82600250001924ae4d658c2ad6533953ffc830c70eb4449c7d0744a9d05c08d3.lean/declarations/count-of--49fcd1a0fd1c0861783c3c25.md) | 80 | `result-track:49fcd1a0fd1c0861783c3c25c88c7df9355825613456c2f90611c881a33287e3` |
| 15 | `theorem` | [count_apply](../../../../mathematics/Algebra/Count/Variant82600250001924ae4d658c2ad6533953ffc830c70eb4449c7d0744a9d05c08d3.lean/declarations/count-apply--5ac7686e9aafa5e38a93572a.md) | 85 | `result-track:5ac7686e9aafa5e38a93572a49865cc25dca57a6df8b03149f70dab486d1aecc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
