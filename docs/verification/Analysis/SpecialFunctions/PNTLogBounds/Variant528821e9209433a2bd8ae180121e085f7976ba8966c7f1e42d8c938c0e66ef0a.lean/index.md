# Verification target: GRWTSK.Analysis.SpecialFunctions.PNTLogBounds.Variant528821e9209433a2bd8ae180121e085f7976ba8966c7f1e42d8c938c0e66ef0a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "94ca2044ac940dc6b5ffdb8bfbd8e84b019840d4",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/PNTLogBounds/Variant528821e9209433a2bd8ae180121e085f7976ba8966c7f1e42d8c938c0e66ef0a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/PNTLogBounds/Variant528821e9209433a2bd8ae180121e085f7976ba8966c7f1e42d8c938c0e66ef0a.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/PNTLogBounds/Variant528821e9209433a2bd8ae180121e085f7976ba8966c7f1e42d8c938c0e66ef0a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `94ca2044ac940dc6b5ffdb8bfbd8e84b019840d4`.

Source path: `GRWTSK/Analysis/SpecialFunctions/PNTLogBounds/Variant528821e9209433a2bd8ae180121e085f7976ba8966c7f1e42d8c938c0e66ef0a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/PNTLogBounds/Variant528821e9209433a2bd8ae180121e085f7976ba8966c7f1e42d8c938c0e66ef0a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.SpecificFunctions.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [log_lower_taylor](../../../../../mathematics/Analysis/SpecialFunctions/PNTLogBounds/Variant528821e9209433a2bd8ae180121e085f7976ba8966c7f1e42d8c938c0e66ef0a.lean/declarations/log-lower-taylor--127d88120362281791ac72b0.md) | 34 | `result-track:127d88120362281791ac72b044dd7b418c3e3e128a080b1a47f91dbe13a55f16` |
| 2 | `theorem` | [log_ge](../../../../../mathematics/Analysis/SpecialFunctions/PNTLogBounds/Variant528821e9209433a2bd8ae180121e085f7976ba8966c7f1e42d8c938c0e66ef0a.lean/declarations/log-ge--41ebca24a8fd93ced3c2407c.md) | 70 | `result-track:41ebca24a8fd93ced3c2407c5ee4a94bb7545e4485e529b4d9b0da4834bf7673` |
| 3 | `theorem` | [log_ge'](../../../../../mathematics/Analysis/SpecialFunctions/PNTLogBounds/Variant528821e9209433a2bd8ae180121e085f7976ba8966c7f1e42d8c938c0e66ef0a.lean/declarations/log-ge--c0e20063c22e1e2b688bbe51.md) | 107 | `result-track:c0e20063c22e1e2b688bbe51fbb381048d19c742670efe3c72dbce8a649e7b25` |
| 4 | `def` | [symmetricLogComb](../../../../../mathematics/Analysis/SpecialFunctions/PNTLogBounds/Variant528821e9209433a2bd8ae180121e085f7976ba8966c7f1e42d8c938c0e66ef0a.lean/declarations/symmetriclogcomb--0defb4fd313a372826fb150d.md) | 145 | `declaration-track:0defb4fd313a372826fb150d1b2cbd70aa4f90ba928c834ed37e08006d7fa6c7` |
| 5 | `theorem` | [symmetricLogComb_pos](../../../../../mathematics/Analysis/SpecialFunctions/PNTLogBounds/Variant528821e9209433a2bd8ae180121e085f7976ba8966c7f1e42d8c938c0e66ef0a.lean/declarations/symmetriclogcomb-pos--60a2f1f50e760c85c0c4e22d.md) | 148 | `result-track:60a2f1f50e760c85c0c4e22d98d7793b825534219588286c18e1a8340154f6ca` |
| 6 | `theorem` | [symmetricLogComb_le_two](../../../../../mathematics/Analysis/SpecialFunctions/PNTLogBounds/Variant528821e9209433a2bd8ae180121e085f7976ba8966c7f1e42d8c938c0e66ef0a.lean/declarations/symmetriclogcomb-le-two--54a6749d4d9c06823c260cb2.md) | 182 | `result-track:54a6749d4d9c06823c260cb23302de0d0af4a58c46bc7aad97d76b89f0e3805e` |
| 7 | `theorem` | [symmetricLogComb_abs_le_two](../../../../../mathematics/Analysis/SpecialFunctions/PNTLogBounds/Variant528821e9209433a2bd8ae180121e085f7976ba8966c7f1e42d8c938c0e66ef0a.lean/declarations/symmetriclogcomb-abs-le-two--69cd84bb1b0405a148920058.md) | 234 | `result-track:69cd84bb1b0405a1489200583fb37749538095e068cca64dad4f3e9d0ee849b1` |
| 8 | `theorem` | [symm_inv_log](../../../../../mathematics/Analysis/SpecialFunctions/PNTLogBounds/Variant528821e9209433a2bd8ae180121e085f7976ba8966c7f1e42d8c938c0e66ef0a.lean/declarations/symm-inv-log--ccea1644158f29a8199b9cb2.md) | 245 | `result-track:ccea1644158f29a8199b9cb23b56a468a313ac0f0fb40df06a9cd16129484bc5` |
| 9 | `theorem` | [symm_inv_log_weak](../../../../../mathematics/Analysis/SpecialFunctions/PNTLogBounds/Variant528821e9209433a2bd8ae180121e085f7976ba8966c7f1e42d8c938c0e66ef0a.lean/declarations/symm-inv-log-weak--2f1d7dc1ef86cf030c03283f.md) | 251 | `result-track:2f1d7dc1ef86cf030c03283f7c14c45d6c6111882e780aab8bdd7d93d91c142f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
