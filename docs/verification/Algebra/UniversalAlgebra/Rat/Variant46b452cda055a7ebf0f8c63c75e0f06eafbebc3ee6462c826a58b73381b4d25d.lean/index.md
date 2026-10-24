# Verification target: GRWTSK.Algebra.UniversalAlgebra.Rat.Variant46b452cda055a7ebf0f8c63c75e0f06eafbebc3ee6462c826a58b73381b4d25d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e41522f6d7bb2b0d9adb8b06703952fac06968d",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Rat/Variant46b452cda055a7ebf0f8c63c75e0f06eafbebc3ee6462c826a58b73381b4d25d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variant46b452cda055a7ebf0f8c63c75e0f06eafbebc3ee6462c826a58b73381b4d25d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variant46b452cda055a7ebf0f8c63c75e0f06eafbebc3ee6462c826a58b73381b4d25d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e41522f6d7bb2b0d9adb8b06703952fac06968d`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Rat/Variant46b452cda055a7ebf0f8c63c75e0f06eafbebc3ee6462c826a58b73381b4d25d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Rat/Variant46b452cda055a7ebf0f8c63c75e0f06eafbebc3ee6462c826a58b73381b4d25d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Opposite` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.NNRat.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Cast.Defs` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Rat.instStarRing](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variant46b452cda055a7ebf0f8c63c75e0f06eafbebc3ee6462c826a58b73381b4d25d.lean/declarations/rat-inststarring--b5b59c8b8033395ce3cfb3ce.md) | 23 | `declaration-track:b5b59c8b8033395ce3cfb3ce6264b20d54cbbaf9a53de353588075948ae891f6` |
| 2 | `instance` | [NNRat.instStarRing](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variant46b452cda055a7ebf0f8c63c75e0f06eafbebc3ee6462c826a58b73381b4d25d.lean/declarations/nnrat-inststarring--d7f418c4ab15b19900885ada.md) | 24 | `declaration-track:d7f418c4ab15b19900885ada991a49bf08fc7bc2349bae4a092bf120ce9e8d1e` |
| 3 | `instance` | [Rat.instTrivialStar](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variant46b452cda055a7ebf0f8c63c75e0f06eafbebc3ee6462c826a58b73381b4d25d.lean/declarations/rat-insttrivialstar--845dad88f5a6b938a52130d6.md) | 25 | `declaration-track:845dad88f5a6b938a52130d662b2d7d77ba762b287b04258de9c62be6d5373ca` |
| 4 | `instance` | [NNRat.instTrivialStar](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variant46b452cda055a7ebf0f8c63c75e0f06eafbebc3ee6462c826a58b73381b4d25d.lean/declarations/nnrat-insttrivialstar--63fb1762c14c9478c0209a50.md) | 26 | `declaration-track:63fb1762c14c9478c0209a50bcdbc0ec43ecd98c1096c4b0e86820928d8e6d33` |
| 5 | `lemma` | [star_nnratCast](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variant46b452cda055a7ebf0f8c63c75e0f06eafbebc3ee6462c826a58b73381b4d25d.lean/declarations/star-nnratcast--6482207eaa277c658faefe9f.md) | 33 | `result-track:6482207eaa277c658faefe9f3f293afdbb3755a273be87bbd4fcd260986d986b` |
| 6 | `theorem` | [star_ratCast](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variant46b452cda055a7ebf0f8c63c75e0f06eafbebc3ee6462c826a58b73381b4d25d.lean/declarations/star-ratcast--9be2ea82cf3dfa993dab09af.md) | 37 | `result-track:9be2ea82cf3dfa993dab09aff03539270fee1c5a34aaca72d0b2b397795d4546` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
