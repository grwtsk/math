# Verification target: GRWTSK.Algebra.LinearAlgebra.Coinduced.Variant3981c3f99ae57c33b1ad79c41dae0bf6740cb9981057fc846e17fba1593255e5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f141cb0a6cd560a3d34cd65a877ce1dc631c7a7",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Coinduced/Variant3981c3f99ae57c33b1ad79c41dae0bf6740cb9981057fc846e17fba1593255e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Coinduced/Variant3981c3f99ae57c33b1ad79c41dae0bf6740cb9981057fc846e17fba1593255e5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Coinduced/Variant3981c3f99ae57c33b1ad79c41dae0bf6740cb9981057fc846e17fba1593255e5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f141cb0a6cd560a3d34cd65a877ce1dc631c7a7`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Coinduced/Variant3981c3f99ae57c33b1ad79c41dae0bf6740cb9981057fc846e17fba1593255e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Coinduced/Variant3981c3f99ae57c33b1ad79c41dae0bf6740cb9981057fc846e17fba1593255e5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RepresentationTheory.Rep` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coindV](../../../../../mathematics/Algebra/LinearAlgebra/Coinduced/Variant3981c3f99ae57c33b1ad79c41dae0bf6740cb9981057fc846e17fba1593255e5.lean/declarations/coindv--c0906aa431e8047aae33b4e9.md) | 54 | `declaration-track:c0906aa431e8047aae33b4e9ac67230ac37d6436fa2ef76843f823969e4e5b6a` |
| 2 | `def` | [coind](../../../../../mathematics/Algebra/LinearAlgebra/Coinduced/Variant3981c3f99ae57c33b1ad79c41dae0bf6740cb9981057fc846e17fba1593255e5.lean/declarations/coind--537962909bc16a580461451f.md) | 69 | `declaration-track:537962909bc16a580461451fbe71b8c9895dcbcd6259de8a5aa6b2cfd414da61` |
| 3 | `abbrev` | [coind](../../../../../mathematics/Algebra/LinearAlgebra/Coinduced/Variant3981c3f99ae57c33b1ad79c41dae0bf6740cb9981057fc846e17fba1593255e5.lean/declarations/coind--baaf87caec44c0c43ddab690.md) | 89 | `declaration-track:baaf87caec44c0c43ddab6908daf6d6f9b89a07ed210fab6a628d6c5690117ab` |
| 4 | `def` | [coindMap](../../../../../mathematics/Algebra/LinearAlgebra/Coinduced/Variant3981c3f99ae57c33b1ad79c41dae0bf6740cb9981057fc846e17fba1593255e5.lean/declarations/coindmap--b880c120056d6377390c4b43.md) | 95 | `declaration-track:b880c120056d6377390c4b430f7aa9dcf3454ba3567fc65f533ded581dc87767` |
| 5 | `def` | [coindFunctor](../../../../../mathematics/Algebra/LinearAlgebra/Coinduced/Variant3981c3f99ae57c33b1ad79c41dae0bf6740cb9981057fc846e17fba1593255e5.lean/declarations/coindfunctor--dfc9951571e715e71c8e6c04.md) | 104 | `declaration-track:dfc9951571e715e71c8e6c0482856071d83e4678b18a76a66d600a07e06c4066` |
| 6 | `def` | [_root_.Representation.coind'](../../../../../mathematics/Algebra/LinearAlgebra/Coinduced/Variant3981c3f99ae57c33b1ad79c41dae0bf6740cb9981057fc846e17fba1593255e5.lean/declarations/root-representation-coind--c57c132a59b266307f7febb4.md) | 117 | `declaration-track:c57c132a59b266307f7febb4bd642757f3a1a8866aefa5e50d3332407063b2e1` |
| 7 | `abbrev` | [coind'](../../../../../mathematics/Algebra/LinearAlgebra/Coinduced/Variant3981c3f99ae57c33b1ad79c41dae0bf6740cb9981057fc846e17fba1593255e5.lean/declarations/coind--d041b1fda71c65a206cd3bbc.md) | 137 | `declaration-track:d041b1fda71c65a206cd3bbcc90968c25918080184e439576fbef2a684313b9c` |
| 8 | `lemma` | [coind'_ext](../../../../../mathematics/Algebra/LinearAlgebra/Coinduced/Variant3981c3f99ae57c33b1ad79c41dae0bf6740cb9981057fc846e17fba1593255e5.lean/declarations/coind-ext--fbcc06823a68800243e31bf7.md) | 141 | `result-track:fbcc06823a68800243e31bf7a551e655883e6f4c77483df8353e661c996582f6` |
| 9 | `def` | [coindMap'](../../../../../mathematics/Algebra/LinearAlgebra/Coinduced/Variant3981c3f99ae57c33b1ad79c41dae0bf6740cb9981057fc846e17fba1593255e5.lean/declarations/coindmap--85798ceea8e54031c4f55624.md) | 149 | `declaration-track:85798ceea8e54031c4f55624ef1948b210eb362012feea06835176c63c0864a2` |
| 10 | `def` | [coindFunctor'](../../../../../mathematics/Algebra/LinearAlgebra/Coinduced/Variant3981c3f99ae57c33b1ad79c41dae0bf6740cb9981057fc846e17fba1593255e5.lean/declarations/coindfunctor--947d6c6b829c7f1644f3b1c2.md) | 157 | `declaration-track:947d6c6b829c7f1644f3b1c24781bd180f64588f9c37c026a4a34c6efb949a07` |
| 11 | `def` | [coindVLEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Coinduced/Variant3981c3f99ae57c33b1ad79c41dae0bf6740cb9981057fc846e17fba1593255e5.lean/declarations/coindvlequiv--32749e71de08425fc0b66527.md) | 170 | `declaration-track:32749e71de08425fc0b665278131834b5aeaad64d9d98dfeb756205099c40469` |
| 12 | `def` | [coindIso](../../../../../mathematics/Algebra/LinearAlgebra/Coinduced/Variant3981c3f99ae57c33b1ad79c41dae0bf6740cb9981057fc846e17fba1593255e5.lean/declarations/coindiso--db0e60db41242c3c5ae37038.md) | 187 | `declaration-track:db0e60db41242c3c5ae3703881dde72db4709ff82ac09f8aa0c297560c5ea592` |
| 13 | `def` | [coindFunctorIso](../../../../../mathematics/Algebra/LinearAlgebra/Coinduced/Variant3981c3f99ae57c33b1ad79c41dae0bf6740cb9981057fc846e17fba1593255e5.lean/declarations/coindfunctoriso--621b473c2ed90d8e5ad4c1c3.md) | 196 | `declaration-track:621b473c2ed90d8e5ad4c1c3bf8d8ed8be548530e2b9f5928adea6eedc6c6614` |
| 14 | `def` | [resCoindHomLEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Coinduced/Variant3981c3f99ae57c33b1ad79c41dae0bf6740cb9981057fc846e17fba1593255e5.lean/declarations/rescoindhomlequiv--87f3a24b1b5563370faa3ef6.md) | 209 | `declaration-track:87f3a24b1b5563370faa3ef61fc8b7a83f96a22da6282f5a5c973119b5b29e18` |
| 15 | `abbrev` | [resCoindAdjunction](../../../../../mathematics/Algebra/LinearAlgebra/Coinduced/Variant3981c3f99ae57c33b1ad79c41dae0bf6740cb9981057fc846e17fba1593255e5.lean/declarations/rescoindadjunction--0ba475d995a010625980aff6.md) | 231 | `declaration-track:0ba475d995a010625980aff6f7394e918f7e7519c6d3a26180fd2fe19b3e7932` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Coinduced/Variant3981c3f99ae57c33b1ad79c41dae0bf6740cb9981057fc846e17fba1593255e5.lean/declarations/instance--410e938e190b41af2a82a49c.md) | 237 | `declaration-track:410e938e190b41af2a82a49c2245ba0d93c0dce34f16e1e8a0acd08dcfa70a62` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
