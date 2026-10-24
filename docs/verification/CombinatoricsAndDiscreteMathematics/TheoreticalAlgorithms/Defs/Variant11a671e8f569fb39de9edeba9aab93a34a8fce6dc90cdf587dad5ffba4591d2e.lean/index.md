# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Defs.Variant11a671e8f569fb39de9edeba9aab93a34a8fce6dc90cdf587dad5ffba4591d2e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b9f95d8b66860209ee85e2f9cca44a5b1e3b413",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant11a671e8f569fb39de9edeba9aab93a34a8fce6dc90cdf587dad5ffba4591d2e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant11a671e8f569fb39de9edeba9aab93a34a8fce6dc90cdf587dad5ffba4591d2e.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant11a671e8f569fb39de9edeba9aab93a34a8fce6dc90cdf587dad5ffba4591d2e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b9f95d8b66860209ee85e2f9cca44a5b1e3b413`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant11a671e8f569fb39de9edeba9aab93a34a8fce6dc90cdf587dad5ffba4591d2e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant11a671e8f569fb39de9edeba9aab93a34a8fce6dc90cdf587dad5ffba4591d2e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Fin.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.NeZero` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Int.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.GrindInstances` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.ModEq` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.EquivFin` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instCommSemigroup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant11a671e8f569fb39de9edeba9aab93a34a8fce6dc90cdf587dad5ffba4591d2e.lean/declarations/instcommsemigroup--f3ac70c2e301647052e4bab0.md) | 55 | `declaration-track:f3ac70c2e301647052e4bab0976c44c43fa84eb14ce5ad9963d7cae597f3868c` |
| 2 | `theorem` | [left_distrib_aux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant11a671e8f569fb39de9edeba9aab93a34a8fce6dc90cdf587dad5ffba4591d2e.lean/declarations/left-distrib-aux--617aff487a5d4bb1d8bd6059.md) | 65 | `result-track:617aff487a5d4bb1d8bd60595ae1173e953e7b170cda9cbb8752df99ab1d83da` |
| 3 | `instance` | [instDistrib](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant11a671e8f569fb39de9edeba9aab93a34a8fce6dc90cdf587dad5ffba4591d2e.lean/declarations/instdistrib--ad0e121ce4419e0d1ba318c2.md) | 74 | `declaration-track:ad0e121ce4419e0d1ba318c2f899e39e81063fce5522c4b43315c61988b97be1` |
| 4 | `instance` | [instCommRing](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant11a671e8f569fb39de9edeba9aab93a34a8fce6dc90cdf587dad5ffba4591d2e.lean/declarations/instcommring--9610728b8550df950c1ac313.md) | 81 | `declaration-track:9610728b8550df950c1ac313ab7d5b673bed07c657a9816562edbb546c46002c` |
| 5 | `instance` | [instHasDistribNeg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant11a671e8f569fb39de9edeba9aab93a34a8fce6dc90cdf587dad5ffba4591d2e.lean/declarations/insthasdistribneg--46bde74e62b22e7cd3f38101.md) | 89 | `declaration-track:46bde74e62b22e7cd3f38101d6f75f94d2b10c86c4322f17fd6919dac5e73fb0` |
| 6 | `def` | [ZMod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant11a671e8f569fb39de9edeba9aab93a34a8fce6dc90cdf587dad5ffba4591d2e.lean/declarations/zmod--fd6905b40a23f9dbab17d2a7.md) | 97 | `declaration-track:fd6905b40a23f9dbab17d2a77ad82547bf8f3766ad07aa08ddd01e2c0b632a78` |
| 7 | `instance` | [ZMod.decidableEq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant11a671e8f569fb39de9edeba9aab93a34a8fce6dc90cdf587dad5ffba4591d2e.lean/declarations/zmod-decidableeq--f756cbfba989543f1dbeaa29.md) | 101 | `declaration-track:f756cbfba989543f1dbeaa292915da653f2448da299e33a21156fc279f4bbca1` |
| 8 | `instance` | [ZMod.repr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant11a671e8f569fb39de9edeba9aab93a34a8fce6dc90cdf587dad5ffba4591d2e.lean/declarations/zmod-repr--0071ee9778de97eba7133a40.md) | 105 | `declaration-track:0071ee9778de97eba7133a404eacc3141e4a3e17a9563fe557180038431c76d9` |
| 9 | `instance` | [instUnique](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant11a671e8f569fb39de9edeba9aab93a34a8fce6dc90cdf587dad5ffba4591d2e.lean/declarations/instunique--dcede612ff11a0f43af5ab96.md) | 111 | `declaration-track:dcede612ff11a0f43af5ab96207539a216a17885fa132e15221292f992612b8e` |
| 10 | `instance` | [fintype](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant11a671e8f569fb39de9edeba9aab93a34a8fce6dc90cdf587dad5ffba4591d2e.lean/declarations/fintype--70f37ca9bebf3d2db666a940.md) | 113 | `declaration-track:70f37ca9bebf3d2db666a940a5c6d17b771a1efcdf209cbfb3c50ecac8197d43` |
| 11 | `instance` | [infinite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant11a671e8f569fb39de9edeba9aab93a34a8fce6dc90cdf587dad5ffba4591d2e.lean/declarations/infinite--d9312b385508e0cdb0f09d24.md) | 117 | `declaration-track:d9312b385508e0cdb0f09d24fb743d75b2b7b10577742d25d604e84051d2356e` |
| 12 | `theorem` | [card](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant11a671e8f569fb39de9edeba9aab93a34a8fce6dc90cdf587dad5ffba4591d2e.lean/declarations/card--ced4e1961d7138330952ceeb.md) | 121 | `result-track:ced4e1961d7138330952ceebe63f7de46ebb64e699be521ae51c8b12bb8659d9` |
| 13 | `instance` | [commRing](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant11a671e8f569fb39de9edeba9aab93a34a8fce6dc90cdf587dad5ffba4591d2e.lean/declarations/commring--a628f2a1f1e8b45bb1233ef1.md) | 129 | `declaration-track:a628f2a1f1e8b45bb1233ef17095bacdcaecd22c4f36a5f4931b613a0447084d` |
| 14 | `instance` | [inhabited](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant11a671e8f569fb39de9edeba9aab93a34a8fce6dc90cdf587dad5ffba4591d2e.lean/declarations/inhabited--db869aa768565eb382cc1cff.md) | 186 | `declaration-track:db869aa768565eb382cc1cff53f14aa087d76a9264c9215f8b1639a2f6b32850` |
| 15 | `example` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant11a671e8f569fb39de9edeba9aab93a34a8fce6dc90cdf587dad5ffba4591d2e.lean/declarations/example--2b2351847084d3594edb825a.md) | 190 | `declaration-track:2b2351847084d3594edb825a53cf567e67a22ba975bb8f75ecd2fb08f5836a70` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
