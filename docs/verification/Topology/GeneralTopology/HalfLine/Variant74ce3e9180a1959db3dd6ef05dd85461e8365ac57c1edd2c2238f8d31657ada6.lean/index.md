# Verification target: GRWTSK.Topology.GeneralTopology.HalfLine.Variant74ce3e9180a1959db3dd6ef05dd85461e8365ac57c1edd2c2238f8d31657ada6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ef8fef67454e6e62565900c8f74ecfc04d2a72d",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/HalfLine/Variant74ce3e9180a1959db3dd6ef05dd85461e8365ac57c1edd2c2238f8d31657ada6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/HalfLine/Variant74ce3e9180a1959db3dd6ef05dd85461e8365ac57c1edd2c2238f8d31657ada6.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/HalfLine/Variant74ce3e9180a1959db3dd6ef05dd85461e8365ac57c1edd2c2238f8d31657ada6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ef8fef67454e6e62565900c8f74ecfc04d2a72d`.

Source path: `GRWTSK/Topology/GeneralTopology/HalfLine/Variant74ce3e9180a1959db3dd6ef05dd85461e8365ac57c1edd2c2238f8d31657ada6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/HalfLine/Variant74ce3e9180a1959db3dd6ef05dd85461e8365ac57c1edd2c2238f8d31657ada6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Bump` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Sobolev` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ℝ≥0](../../../../../mathematics/Topology/GeneralTopology/HalfLine/Variant74ce3e9180a1959db3dd6ef05dd85461e8365ac57c1edd2c2238f8d31657ada6.lean/declarations/0--9389ec638c8d959930bbd747.md) | 21 | `declaration-track:9389ec638c8d959930bbd747716fcabacf948817e2b7f7dd75a2d87706f00354` |
| 2 | `abbrev` | [μ₊](../../../../../mathematics/Topology/GeneralTopology/HalfLine/Variant74ce3e9180a1959db3dd6ef05dd85461e8365ac57c1edd2c2238f8d31657ada6.lean/declarations/anonymous--f14a169c9f0298b4e6f3de1b.md) | 24 | `declaration-track:f14a169c9f0298b4e6f3de1baab0d66681769e471a1d41ed616c32d9e076655d` |
| 3 | `abbrev` | [L²](../../../../../mathematics/Topology/GeneralTopology/HalfLine/Variant74ce3e9180a1959db3dd6ef05dd85461e8365ac57c1edd2c2238f8d31657ada6.lean/declarations/l--14221d640b99b07b8ce1a37c.md) | 27 | `declaration-track:14221d640b99b07b8ce1a37c7fff8240a7f1b0113d271ab8e689e8667f04b802` |
| 4 | `def` | [C∞₀_D](../../../../../mathematics/Topology/GeneralTopology/HalfLine/Variant74ce3e9180a1959db3dd6ef05dd85461e8365ac57c1edd2c2238f8d31657ada6.lean/declarations/c-d--2b6f373354402af949180299.md) | 35 | `declaration-track:2b6f373354402af949180299dede47635df8615deedb2c3fe7cbf4406a3bb108` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/HalfLine/Variant74ce3e9180a1959db3dd6ef05dd85461e8365ac57c1edd2c2238f8d31657ada6.lean/declarations/instance--46aba743c07281b7d6df940f.md) | 39 | `declaration-track:46aba743c07281b7d6df940fa56fe88bd60b6d92cfe066da791bd2c4657eefe0` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/HalfLine/Variant74ce3e9180a1959db3dd6ef05dd85461e8365ac57c1edd2c2238f8d31657ada6.lean/declarations/instance--12561ea691eff20c040430a0.md) | 40 | `declaration-track:12561ea691eff20c040430a00350dd5336a535c2f4fb14c3ba33bb78d47b351b` |
| 7 | `def` | [η](../../../../../mathematics/Topology/GeneralTopology/HalfLine/Variant74ce3e9180a1959db3dd6ef05dd85461e8365ac57c1edd2c2238f8d31657ada6.lean/declarations/anonymous--dbde82062ff0786e044abc09.md) | 45 | `declaration-track:dbde82062ff0786e044abc0966e81480f1202e2121718102dcd8adec2cbea3e8` |
| 8 | `lemma` | [η_at_zero](../../../../../mathematics/Topology/GeneralTopology/HalfLine/Variant74ce3e9180a1959db3dd6ef05dd85461e8365ac57c1edd2c2238f8d31657ada6.lean/declarations/at-zero--ce2042d15a54bcb7d676ffe5.md) | 64 | `result-track:ce2042d15a54bcb7d676ffe54782d290e54b34463667377079515aaf8972594b` |
| 9 | `lemma` | [dense_L2_halfLine](../../../../../mathematics/Topology/GeneralTopology/HalfLine/Variant74ce3e9180a1959db3dd6ef05dd85461e8365ac57c1edd2c2238f8d31657ada6.lean/declarations/dense-l2-halfline--7d8a17af0f78bcf4a47e958c.md) | 68 | `result-track:7d8a17af0f78bcf4a47e958c06238513c1e01e12cfcab7d8fbeaf50ed924151b` |
| 10 | `lemma` | [mem_H1](../../../../../mathematics/Topology/GeneralTopology/HalfLine/Variant74ce3e9180a1959db3dd6ef05dd85461e8365ac57c1edd2c2238f8d31657ada6.lean/declarations/mem-h1--6c197a36bb4e120df035cb09.md) | 87 | `result-track:6c197a36bb4e120df035cb09a4219c274b3c5c4c68a1348deb5d37c15c648854` |
| 11 | `lemma` | [dirichletBC_zero](../../../../../mathematics/Topology/GeneralTopology/HalfLine/Variant74ce3e9180a1959db3dd6ef05dd85461e8365ac57c1edd2c2238f8d31657ada6.lean/declarations/dirichletbc-zero--668fb60aae1408cca97ae992.md) | 90 | `result-track:668fb60aae1408cca97ae992fd17875e230d813580cbd0a3ca9836f501d79ec3` |
| 12 | `lemma` | [V_mul_L2](../../../../../mathematics/Topology/GeneralTopology/HalfLine/Variant74ce3e9180a1959db3dd6ef05dd85461e8365ac57c1edd2c2238f8d31657ada6.lean/declarations/v-mul-l2--26cd6198921d0ffaad1cbddf.md) | 98 | `result-track:26cd6198921d0ffaad1cbddfcc857afa66d180a9df75bebe741cf194f28a53ea` |
| 13 | `lemma` | [DirichletDomain_dense](../../../../../mathematics/Topology/GeneralTopology/HalfLine/Variant74ce3e9180a1959db3dd6ef05dd85461e8365ac57c1edd2c2238f8d31657ada6.lean/declarations/dirichletdomain-dense--c7f8f066ebb4378272cec943.md) | 125 | `result-track:c7f8f066ebb4378272cec94399538e805520a09eaa806d9185b5a63f1b867009` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
