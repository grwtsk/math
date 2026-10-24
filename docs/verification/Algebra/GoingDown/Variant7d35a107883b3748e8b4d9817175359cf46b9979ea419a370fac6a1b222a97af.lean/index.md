# Verification target: GRWTSK.Algebra.GoingDown.Variant7d35a107883b3748e8b4d9817175359cf46b9979ea419a370fac6a1b222a97af

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d3c66ce1a8de8bd20064503590da69298a62f60",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GoingDown/Variant7d35a107883b3748e8b4d9817175359cf46b9979ea419a370fac6a1b222a97af.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/GoingDown/Variant7d35a107883b3748e8b4d9817175359cf46b9979ea419a370fac6a1b222a97af.lean/index.md) · [Full source](../../../../mathematics/Algebra/GoingDown/Variant7d35a107883b3748e8b4d9817175359cf46b9979ea419a370fac6a1b222a97af.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d3c66ce1a8de8bd20064503590da69298a62f60`.

Source path: `GRWTSK/Algebra/GoingDown/Variant7d35a107883b3748e8b4d9817175359cf46b9979ea419a370fac6a1b222a97af.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GoingDown/Variant7d35a107883b3748e8b4d9817175359cf46b9979ea419a370fac6a1b222a97af.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.GoingUp` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Flat.FaithfullyFlat.Algebra` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Flat.Localization` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.Topology` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Algebra.HasGoingDown](../../../../mathematics/Algebra/GoingDown/Variant7d35a107883b3748e8b4d9817175359cf46b9979ea419a370fac6a1b222a97af.lean/declarations/algebra-hasgoingdown--b76e95e889c357343b9d49b7.md) | 47 | `declaration-track:b76e95e889c357343b9d49b7e5f4d5bff5f008fdba1663730975a2abcaa51b78` |
| 2 | `lemma` | [Ideal.exists_ideal_le_liesOver_of_le](../../../../mathematics/Algebra/GoingDown/Variant7d35a107883b3748e8b4d9817175359cf46b9979ea419a370fac6a1b222a97af.lean/declarations/ideal-exists-ideal-le-liesover-of-le--3ba237fa5e9fb7a5cba2dfec.md) | 53 | `result-track:3ba237fa5e9fb7a5cba2dfecd640b346a1ab594b2f14eac17b04da809f4e45ce` |
| 3 | `lemma` | [Ideal.exists_ideal_lt_liesOver_of_lt](../../../../mathematics/Algebra/GoingDown/Variant7d35a107883b3748e8b4d9817175359cf46b9979ea419a370fac6a1b222a97af.lean/declarations/ideal-exists-ideal-lt-liesover-of-lt--b3d53a39037da5c05852ab68.md) | 64 | `result-track:b3d53a39037da5c05852ab683492499221b33af651064fc7a6c277ee7ba863d9` |
| 4 | `lemma` | [iff_generalizingMap_primeSpectrumComap](../../../../mathematics/Algebra/GoingDown/Variant7d35a107883b3748e8b4d9817175359cf46b9979ea419a370fac6a1b222a97af.lean/declarations/iff-generalizingmap-primespectrumcomap--684415c20ff0985a855b6ed1.md) | 81 | `result-track:684415c20ff0985a855b6ed11dbfa7a12110af982e208e7634c16121b682fa2b` |
| 5 | `lemma` | [trans](../../../../mathematics/Algebra/GoingDown/Variant7d35a107883b3748e8b4d9817175359cf46b9979ea419a370fac6a1b222a97af.lean/declarations/trans--55cf1bea108fa6d0f744ad0a.md) | 100 | `result-track:55cf1bea108fa6d0f744ad0adea12630ba71a7cf609ecaaef2e38daf7b3991a3` |
| 6 | `lemma` | [of_specComap_localRingHom_surjective](../../../../mathematics/Algebra/GoingDown/Variant7d35a107883b3748e8b4d9817175359cf46b9979ea419a370fac6a1b222a97af.lean/declarations/of-speccomap-localringhom-surjective--746daef4e20a7f91a33bbde6.md) | 111 | `result-track:746daef4e20a7f91a33bbde63fdcf777e987e05d7e2e61a6e6b203c285d24de1` |
| 7 | `instance` | [of_flat](../../../../mathematics/Algebra/GoingDown/Variant7d35a107883b3748e8b4d9817175359cf46b9979ea419a370fac6a1b222a97af.lean/declarations/of-flat--fca927a2b6d7a8aedbfe34be.md) | 128 | `declaration-track:fca927a2b6d7a8aedbfe34beb093a6ba5b026c42d5a7a9352f6c87b5a89fecc2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
