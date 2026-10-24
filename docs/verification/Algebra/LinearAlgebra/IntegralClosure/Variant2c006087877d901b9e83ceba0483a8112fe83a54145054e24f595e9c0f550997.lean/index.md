# Verification target: GRWTSK.Algebra.LinearAlgebra.IntegralClosure.Variant2c006087877d901b9e83ceba0483a8112fe83a54145054e24f595e9c0f550997

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b013227984ab473e2ea4fc15f771a404391c0c9b",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/IntegralClosure/Variant2c006087877d901b9e83ceba0483a8112fe83a54145054e24f595e9c0f550997.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/IntegralClosure/Variant2c006087877d901b9e83ceba0483a8112fe83a54145054e24f595e9c0f550997.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/IntegralClosure/Variant2c006087877d901b9e83ceba0483a8112fe83a54145054e24f595e9c0f550997.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b013227984ab473e2ea4fc15f771a404391c0c9b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/IntegralClosure/Variant2c006087877d901b9e83ceba0483a8112fe83a54145054e24f595e9c0f550997.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/IntegralClosure/Variant2c006087877d901b9e83ceba0483a8112fe83a54145054e24f595e9c0f550997.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.FreeModule.PID` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Finite.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.BilinearForm.DualLattice` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DedekindDomain.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Module` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Trace.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsIntegralClosure.isLocalization](../../../../../mathematics/Algebra/LinearAlgebra/IntegralClosure/Variant2c006087877d901b9e83ceba0483a8112fe83a54145054e24f595e9c0f550997.lean/declarations/isintegralclosure-islocalization--336870de7c80ecad863573c5.md) | 70 | `result-track:336870de7c80ecad863573c5f527c1157eb689014673c385027d59b95df60b75` |
| 2 | `theorem` | [IsIntegralClosure.isLocalization_of_isSeparable](../../../../../mathematics/Algebra/LinearAlgebra/IntegralClosure/Variant2c006087877d901b9e83ceba0483a8112fe83a54145054e24f595e9c0f550997.lean/declarations/isintegralclosure-islocalization-of-isseparable--5e30b0ed332a115f59099e08.md) | 90 | `result-track:5e30b0ed332a115f59099e08093d29977851c992851255b9af4da3fb65071a66` |
| 3 | `theorem` | [IsIntegralClosure.range_le_span_dualBasis](../../../../../mathematics/Algebra/LinearAlgebra/IntegralClosure/Variant2c006087877d901b9e83ceba0483a8112fe83a54145054e24f595e9c0f550997.lean/declarations/isintegralclosure-range-le-span-dualbasis--6ad4e3eac6d359329c944e13.md) | 97 | `result-track:6ad4e3eac6d359329c944e13dc498063126cd5fcbeb1df539d9e77680a61b34e` |
| 4 | `theorem` | [integralClosure_le_span_dualBasis](../../../../../mathematics/Algebra/LinearAlgebra/IntegralClosure/Variant2c006087877d901b9e83ceba0483a8112fe83a54145054e24f595e9c0f550997.lean/declarations/integralclosure-le-span-dualbasis--d8ea84226ce06406e9ce1c9e.md) | 109 | `result-track:d8ea84226ce06406e9ce1c9e5e181d13987ec4f3faa8ada6ffab693372008000` |
| 5 | `theorem` | [exists_integral_multiples](../../../../../mathematics/Algebra/LinearAlgebra/IntegralClosure/Variant2c006087877d901b9e83ceba0483a8112fe83a54145054e24f595e9c0f550997.lean/declarations/exists-integral-multiples--22c0f49e1f51871ff0c35f4a.md) | 122 | `result-track:22c0f49e1f51871ff0c35f4a255ee6c62933dcd9c38b06461069a496d6ddb0ad` |
| 6 | `theorem` | [FiniteDimensional.exists_is_basis_integral](../../../../../mathematics/Algebra/LinearAlgebra/IntegralClosure/Variant2c006087877d901b9e83ceba0483a8112fe83a54145054e24f595e9c0f550997.lean/declarations/finitedimensional-exists-is-basis-integral--10b10a2aabc5089d50f92c69.md) | 132 | `result-track:10b10a2aabc5089d50f92c694dc27243bb687949615f316887c8ce99b05d373f` |
| 7 | `theorem` | [IsIntegralClosure.isNoetherian](../../../../../mathematics/Algebra/LinearAlgebra/IntegralClosure/Variant2c006087877d901b9e83ceba0483a8112fe83a54145054e24f595e9c0f550997.lean/declarations/isintegralclosure-isnoetherian--b077490dd7a3f4b862918370.md) | 161 | `result-track:b077490dd7a3f4b86291837022c62add6dc5a06b7c4fb647c362d6e21cfbc669` |
| 8 | `theorem` | [IsIntegralClosure.isNoetherianRing](../../../../../mathematics/Algebra/LinearAlgebra/IntegralClosure/Variant2c006087877d901b9e83ceba0483a8112fe83a54145054e24f595e9c0f550997.lean/declarations/isintegralclosure-isnoetherianring--43fc042bc764529b34aef47a.md) | 177 | `result-track:43fc042bc764529b34aef47ae39d95d509b0331f2b36a3ca025a3ce2efebc481` |
| 9 | `theorem` | [IsIntegralClosure.finite](../../../../../mathematics/Algebra/LinearAlgebra/IntegralClosure/Variant2c006087877d901b9e83ceba0483a8112fe83a54145054e24f595e9c0f550997.lean/declarations/isintegralclosure-finite--5265767c33c3626d2830af96.md) | 184 | `result-track:5265767c33c3626d2830af96f0f2462f6c7fa8bccfe58e91655b7d044d37abfd` |
| 10 | `theorem` | [IsIntegralClosure.module_free](../../../../../mathematics/Algebra/LinearAlgebra/IntegralClosure/Variant2c006087877d901b9e83ceba0483a8112fe83a54145054e24f595e9c0f550997.lean/declarations/isintegralclosure-module-free--071135636a5b3a5cedddba01.md) | 192 | `result-track:071135636a5b3a5cedddba010b6116e18b348ff5fd1f7c6194fba88629266e77` |
| 11 | `theorem` | [IsIntegralClosure.rank](../../../../../mathematics/Algebra/LinearAlgebra/IntegralClosure/Variant2c006087877d901b9e83ceba0483a8112fe83a54145054e24f595e9c0f550997.lean/declarations/isintegralclosure-rank--44d33763512bcb1ec25f1f07.md) | 201 | `result-track:44d33763512bcb1ec25f1f070cc1b817a858427e170cf39a74a17de762f8e5fa` |
| 12 | `theorem` | [integralClosure.isNoetherianRing](../../../../../mathematics/Algebra/LinearAlgebra/IntegralClosure/Variant2c006087877d901b9e83ceba0483a8112fe83a54145054e24f595e9c0f550997.lean/declarations/integralclosure-isnoetherianring--f40226eb7f82e264ecbc1b73.md) | 215 | `result-track:f40226eb7f82e264ecbc1b73d2df829a5fdaa47e5182151eb3ed0137669876b4` |
| 13 | `theorem` | [IsIntegralClosure.isDedekindDomain](../../../../../mathematics/Algebra/LinearAlgebra/IntegralClosure/Variant2c006087877d901b9e83ceba0483a8112fe83a54145054e24f595e9c0f550997.lean/declarations/isintegralclosure-isdedekinddomain--81457f9e9fa350e8918f4fa2.md) | 227 | `result-track:81457f9e9fa350e8918f4fa23508dde462515be13dac0ddf9393754b56af4e45` |
| 14 | `theorem` | [integralClosure.isDedekindDomain](../../../../../mathematics/Algebra/LinearAlgebra/IntegralClosure/Variant2c006087877d901b9e83ceba0483a8112fe83a54145054e24f595e9c0f550997.lean/declarations/integralclosure-isdedekinddomain--9658dcce0912647585417a6e.md) | 241 | `result-track:9658dcce0912647585417a6ecb5489804ca94d9f2cfe08b386eb4aa68f412eae` |
| 15 | `instance` | [integralClosure.isDedekindDomain_fractionRing](../../../../../mathematics/Algebra/LinearAlgebra/IntegralClosure/Variant2c006087877d901b9e83ceba0483a8112fe83a54145054e24f595e9c0f550997.lean/declarations/integralclosure-isdedekinddomain-fractionring--af5c8d0f559f69a94753de06.md) | 253 | `declaration-track:af5c8d0f559f69a94753de060aa457a62761a0096dea0a68b684fc5f341f9710` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/IntegralClosure/Variant2c006087877d901b9e83ceba0483a8112fe83a54145054e24f595e9c0f550997.lean/declarations/instance--36a9b8835e0febd8f1128083.md) | 258 | `declaration-track:36a9b8835e0febd8f1128083636fea885ec333720878abaead66831d9372d3bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
