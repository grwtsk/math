# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RelabelFin.Variant9595e9dbf121f6af79af0e5754220249527ea7e4d6323f6525708ab31a0bc70f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d0406e008a07bc19729ad13ac7fbe25e5f6670f1",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RelabelFin/Variant9595e9dbf121f6af79af0e5754220249527ea7e4d6323f6525708ab31a0bc70f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RelabelFin/Variant9595e9dbf121f6af79af0e5754220249527ea7e4d6323f6525708ab31a0bc70f.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RelabelFin/Variant9595e9dbf121f6af79af0e5754220249527ea7e4d6323f6525708ab31a0bc70f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d0406e008a07bc19729ad13ac7fbe25e5f6670f1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RelabelFin/Variant9595e9dbf121f6af79af0e5754220249527ea7e4d6323f6525708ab31a0bc70f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RelabelFin/Variant9595e9dbf121f6af79af0e5754220249527ea7e4d6323f6525708ab31a0bc70f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Option.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.List.Impl` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.List.MinMax` — import line 14; external provider; requires a separately pinned dependency.
- `Init.TacticsExtra` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Clause.maxLiteral](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RelabelFin/Variant9595e9dbf121f6af79af0e5754220249527ea7e4d6323f6525708ab31a0bc70f.lean/declarations/clause-maxliteral--1829dccffce10af9219e118a.md) | 28 | `declaration-track:1829dccffce10af9219e118a7c1f88a3549b5859a2be3e5f17be1c9fc3b23355` |
| 2 | `theorem` | [Clause.of_maxLiteral_eq_some](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RelabelFin/Variant9595e9dbf121f6af79af0e5754220249527ea7e4d6323f6525708ab31a0bc70f.lean/declarations/clause-of-maxliteral-eq-some--d5525d27f8e13345ccf1eedf.md) | 30 | `result-track:d5525d27f8e13345ccf1eedf037f27c8905393311921cefdf38443f5874a79bc` |
| 3 | `theorem` | [Clause.maxLiteral_eq_some_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RelabelFin/Variant9595e9dbf121f6af79af0e5754220249527ea7e4d6323f6525708ab31a0bc70f.lean/declarations/clause-maxliteral-eq-some-of-mem--c09f76cad13b6cac938dd829.md) | 42 | `result-track:c09f76cad13b6cac938dd82909821ae0b26cfeacbfcd1b8b2163600ca2c8b243` |
| 4 | `theorem` | [Clause.of_maxLiteral_eq_none](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RelabelFin/Variant9595e9dbf121f6af79af0e5754220249527ea7e4d6323f6525708ab31a0bc70f.lean/declarations/clause-of-maxliteral-eq-none--8ba898a5c06b50641603a655.md) | 51 | `result-track:8ba898a5c06b50641603a655f7aa481129a30ff1b9c0b10d08ecdc1cd6b9515b` |
| 5 | `def` | [maxLiteral](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RelabelFin/Variant9595e9dbf121f6af79af0e5754220249527ea7e4d6323f6525708ab31a0bc70f.lean/declarations/maxliteral--9fbfc14139b6e7c834d6a669.md) | 60 | `declaration-track:9fbfc14139b6e7c834d6a669b9d663a3ec680eec683e990b3f37559a04746284` |
| 6 | `theorem` | [of_maxLiteral_eq_some'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RelabelFin/Variant9595e9dbf121f6af79af0e5754220249527ea7e4d6323f6525708ab31a0bc70f.lean/declarations/of-maxliteral-eq-some--34876e7cff97e184453d5c49.md) | 63 | `result-track:34876e7cff97e184453d5c49cd48fdef79cc4cfc744dad5054675a33064c7ea4` |
| 7 | `theorem` | [of_maxLiteral_eq_some](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RelabelFin/Variant9595e9dbf121f6af79af0e5754220249527ea7e4d6323f6525708ab31a0bc70f.lean/declarations/of-maxliteral-eq-some--5a3c0f9499bfbe36ef7bab6c.md) | 70 | `result-track:5a3c0f9499bfbe36ef7bab6c66d427a544bb5df80d0c6b9efdb5a7649b63cd43` |
| 8 | `theorem` | [of_maxLiteral_eq_none](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RelabelFin/Variant9595e9dbf121f6af79af0e5754220249527ea7e4d6323f6525708ab31a0bc70f.lean/declarations/of-maxliteral-eq-none--c36c08d157136e2ce55b0aeb.md) | 80 | `result-track:c36c08d157136e2ce55b0aeb5285b5f08a24328bc9ddd2c2f951f529e104ca83` |
| 9 | `def` | [numLiterals](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RelabelFin/Variant9595e9dbf121f6af79af0e5754220249527ea7e4d6323f6525708ab31a0bc70f.lean/declarations/numliterals--c6b028159d51346204dbf0f9.md) | 92 | `declaration-track:c6b028159d51346204dbf0f9bd448fba82354559db461e9c9c8154b9508262dc` |
| 10 | `theorem` | [lt_numLiterals](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RelabelFin/Variant9595e9dbf121f6af79af0e5754220249527ea7e4d6323f6525708ab31a0bc70f.lean/declarations/lt-numliterals--bf4ba62b7a0d6c53b11140f6.md) | 97 | `result-track:bf4ba62b7a0d6c53b11140f666abd8109020028ba19173748b2e91586d2f9ae8` |
| 11 | `theorem` | [numLiterals_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RelabelFin/Variant9595e9dbf121f6af79af0e5754220249527ea7e4d6323f6525708ab31a0bc70f.lean/declarations/numliterals-pos--7ddeecc195096719ec53fc32.md) | 105 | `result-track:7ddeecc195096719ec53fc320c0757010159213d63330a011093263fbcfdacc5` |
| 12 | `def` | [relabelFin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RelabelFin/Variant9595e9dbf121f6af79af0e5754220249527ea7e4d6323f6525708ab31a0bc70f.lean/declarations/relabelfin--a3054910c4732801b6085973.md) | 114 | `declaration-track:a3054910c4732801b6085973cd84fa95ca76c34e1500e7dac7f1e2486b383622` |
| 13 | `theorem` | [not_exists_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RelabelFin/Variant9595e9dbf121f6af79af0e5754220249527ea7e4d6323f6525708ab31a0bc70f.lean/declarations/not-exists-mem--42b01b7abaceac37e122c8f9.md) | 126 | `result-track:42b01b7abaceac37e122c8f941bc323d54040c45ee4646de1db0fc2ef6c70924` |
| 14 | `theorem` | [unsat_relabelFin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RelabelFin/Variant9595e9dbf121f6af79af0e5754220249527ea7e4d6323f6525708ab31a0bc70f.lean/declarations/unsat-relabelfin--e183effd8de483891bb579e1.md) | 146 | `result-track:e183effd8de483891bb579e1397a9e9035b24feb00261a3deb6a06c2a39ac015` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
