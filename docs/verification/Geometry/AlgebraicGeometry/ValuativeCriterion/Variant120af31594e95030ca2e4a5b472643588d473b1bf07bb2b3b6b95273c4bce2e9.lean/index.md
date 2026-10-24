# Verification target: GRWTSK.Geometry.AlgebraicGeometry.ValuativeCriterion.Variant120af31594e95030ca2e4a5b472643588d473b1bf07bb2b3b6b95273c4bce2e9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d124f8631d739ffa31a604cb2b42f59e7f7739e",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant120af31594e95030ca2e4a5b472643588d473b1bf07bb2b3b6b95273c4bce2e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant120af31594e95030ca2e4a5b472643588d473b1bf07bb2b3b6b95273c4bce2e9.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant120af31594e95030ca2e4a5b472643588d473b1bf07bb2b3b6b95273c4bce2e9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d124f8631d739ffa31a604cb2b42f59e7f7739e`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant120af31594e95030ca2e4a5b472643588d473b1bf07bb2b3b6b95273c4bce2e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant120af31594e95030ca2e4a5b472643588d473b1bf07bb2b3b6b95273c4bce2e9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.Immersion` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Morphisms.Proper` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RingHom.Injective` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Valuation.LocalSubring` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ValuativeCommSq](../../../../../mathematics/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant120af31594e95030ca2e4a5b472643588d473b1bf07bb2b3b6b95273c4bce2e9.lean/declarations/valuativecommsq--0ec59c705d9a03c5500fe5dd.md) | 49 | `declaration-track:0ec59c705d9a03c5500fe5dd6af615aacb145adf337448bba102c05184862440` |
| 2 | `def` | [ValuativeCriterion.Existence](../../../../../mathematics/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant120af31594e95030ca2e4a5b472643588d473b1bf07bb2b3b6b95273c4bce2e9.lean/declarations/valuativecriterion-existence--f690e6a9c4f444eb14192e8d.md) | 74 | `declaration-track:f690e6a9c4f444eb14192e8d1c8cd2222e0b7f2dc31b39022b257598e273619a` |
| 3 | `def` | [ValuativeCriterion.Uniqueness](../../../../../mathematics/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant120af31594e95030ca2e4a5b472643588d473b1bf07bb2b3b6b95273c4bce2e9.lean/declarations/valuativecriterion-uniqueness--663e3866dcb641709b6af0f7.md) | 79 | `declaration-track:663e3866dcb641709b6af0f75532d1e313d938701f34a97511bdf4c513708f57` |
| 4 | `def` | [ValuativeCriterion](../../../../../mathematics/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant120af31594e95030ca2e4a5b472643588d473b1bf07bb2b3b6b95273c4bce2e9.lean/declarations/valuativecriterion--eb963aa2d65bd1b606c00b10.md) | 84 | `declaration-track:eb963aa2d65bd1b606c00b10258110059e7a54099a8a3814c015306fcb4df9f6` |
| 5 | `lemma` | [ValuativeCriterion.iff](../../../../../mathematics/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant120af31594e95030ca2e4a5b472643588d473b1bf07bb2b3b6b95273c4bce2e9.lean/declarations/valuativecriterion-iff--dc497b6235dd81b8000c8e81.md) | 89 | `result-track:dc497b6235dd81b8000c8e81b2b8071e9664d8aaa7ae378d0ec115dcb2a7a46a` |
| 6 | `lemma` | [ValuativeCriterion.eq](../../../../../mathematics/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant120af31594e95030ca2e4a5b472643588d473b1bf07bb2b3b6b95273c4bce2e9.lean/declarations/valuativecriterion-eq--2cf52312f5e488fcb00c88d7.md) | 94 | `result-track:2cf52312f5e488fcb00c88d70018d2d495087ff832472b9a5a97bd0b2db9615a` |
| 7 | `lemma` | [ValuativeCriterion.existence](../../../../../mathematics/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant120af31594e95030ca2e4a5b472643588d473b1bf07bb2b3b6b95273c4bce2e9.lean/declarations/valuativecriterion-existence--cb26fdb846d70367706ee368.md) | 99 | `result-track:cb26fdb846d70367706ee36870b394f626d57a8688fdda150af19d196cc6eb71` |
| 8 | `lemma` | [ValuativeCriterion.uniqueness](../../../../../mathematics/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant120af31594e95030ca2e4a5b472643588d473b1bf07bb2b3b6b95273c4bce2e9.lean/declarations/valuativecriterion-uniqueness--4cba9fbd2a83ebd174d40377.md) | 102 | `result-track:4cba9fbd2a83ebd174d403771962fb21020558bbe8fea2a81cbc8961b0efde44` |
| 9 | `lemma` | [specializingMap](../../../../../mathematics/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant120af31594e95030ca2e4a5b472643588d473b1bf07bb2b3b6b95273c4bce2e9.lean/declarations/specializingmap--7899b4a4e95a35ca0d8bf8ef.md) | 110 | `result-track:7899b4a4e95a35ca0d8bf8ef1b527bb6759397bef0c495fca781cd494edb4c50` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant120af31594e95030ca2e4a5b472643588d473b1bf07bb2b3b6b95273c4bce2e9.lean/declarations/instance--9e5e8ef46e4def7124e5bb6b.md) | 136 | `declaration-track:9e5e8ef46e4def7124e5bb6be25aea205392bbaea154a0c6d23a350f779f7150` |
| 11 | `lemma` | [of_specializingMap](../../../../../mathematics/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant120af31594e95030ca2e4a5b472643588d473b1bf07bb2b3b6b95273c4bce2e9.lean/declarations/of-specializingmap--1166f9efaa4a6caa8bad5f66.md) | 139 | `result-track:1166f9efaa4a6caa8bad5f664cfc796c5ef151983f656d416580ae582d54d094` |
| 12 | `instance` | [stableUnderBaseChange](../../../../../mathematics/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant120af31594e95030ca2e4a5b472643588d473b1bf07bb2b3b6b95273c4bce2e9.lean/declarations/stableunderbasechange--cf17f200ba2351792e43571b.md) | 193 | `declaration-track:cf17f200ba2351792e43571be69699a1eecded894e954745aaa5f359cb8debd5` |
| 13 | `lemma` | [eq](../../../../../mathematics/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant120af31594e95030ca2e4a5b472643588d473b1bf07bb2b3b6b95273c4bce2e9.lean/declarations/eq--f91df8e4e86f2c3ed836094d.md) | 211 | `result-track:f91df8e4e86f2c3ed836094d2217d91aea6358ffa23ac64e633a570b1e67fcbc` |
| 14 | `lemma` | [UniversallyClosed.eq_valuativeCriterion](../../../../../mathematics/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant120af31594e95030ca2e4a5b472643588d473b1bf07bb2b3b6b95273c4bce2e9.lean/declarations/universallyclosed-eq-valuativecriterion--59afc2858c88da3b545e410c.md) | 225 | `result-track:59afc2858c88da3b545e410c109bc53f87323d17788b9682650cadd30ea4f5db` |
| 15 | `lemma` | [UniversallyClosed.of_valuativeCriterion](../../../../../mathematics/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant120af31594e95030ca2e4a5b472643588d473b1bf07bb2b3b6b95273c4bce2e9.lean/declarations/universallyclosed-of-valuativecriterion--42771e12cf624eee5b9e8952.md) | 231 | `result-track:42771e12cf624eee5b9e89521f2cf1118efd0dc08c6403eed17ba162cc2f95bf` |
| 16 | `lemma` | [IsSeparated.of_valuativeCriterion](../../../../../mathematics/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant120af31594e95030ca2e4a5b472643588d473b1bf07bb2b3b6b95273c4bce2e9.lean/declarations/isseparated-of-valuativecriterion--61655fa92ad72793766cb5d6.md) | 240 | `result-track:61655fa92ad72793766cb5d6063640c95ca74a6b3bbb7483b8c4f2d7620de20a` |
| 17 | `lemma` | [IsSeparated.valuativeCriterion](../../../../../mathematics/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant120af31594e95030ca2e4a5b472643588d473b1bf07bb2b3b6b95273c4bce2e9.lean/declarations/isseparated-valuativecriterion--bbfe46bb698b86a60c035bd3.md) | 271 | `result-track:bbfe46bb698b86a60c035bd3cb4244b69dc0c3f6dd6a51196c3065ffc12c3225` |
| 18 | `lemma` | [IsSeparated.eq_valuativeCriterion](../../../../../mathematics/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant120af31594e95030ca2e4a5b472643588d473b1bf07bb2b3b6b95273c4bce2e9.lean/declarations/isseparated-eq-valuativecriterion--a3d0a2bb5867453290747afc.md) | 316 | `result-track:a3d0a2bb5867453290747afc345b36d7b4dabb0fad983fd25ce699badd3bcbac` |
| 19 | `lemma` | [IsProper.eq_valuativeCriterion](../../../../../mathematics/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant120af31594e95030ca2e4a5b472643588d473b1bf07bb2b3b6b95273c4bce2e9.lean/declarations/isproper-eq-valuativecriterion--cc96bdc10c2d7aaf2fc32154.md) | 326 | `result-track:cc96bdc10c2d7aaf2fc32154d0d3839c46834df10794369a491f6376566c094c` |
| 20 | `lemma` | [IsProper.of_valuativeCriterion](../../../../../mathematics/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant120af31594e95030ca2e4a5b472643588d473b1bf07bb2b3b6b95273c4bce2e9.lean/declarations/isproper-of-valuativecriterion--c10fcd77f359026362fcc6f4.md) | 337 | `result-track:c10fcd77f359026362fcc6f49fd85a35c92d005a0c2744f14b58d586bb7f3086` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
