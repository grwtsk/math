# Verification target: GRWTSK.Algebra.LinearAlgebra.BaseChange.Variant8bef49b0d0d0325194e0c0d4a254df4f16b2afa89a9bd00ea63d7f3271f5887d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e27e969f648ac8af3dd10df70a35c021ab2f28f0",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BaseChange/Variant8bef49b0d0d0325194e0c0d4a254df4f16b2afa89a9bd00ea63d7f3271f5887d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant8bef49b0d0d0325194e0c0d4a254df4f16b2afa89a9bd00ea63d7f3271f5887d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant8bef49b0d0d0325194e0c0d4a254df4f16b2afa89a9bd00ea63d7f3271f5887d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e27e969f648ac8af3dd10df70a35c021ab2f28f0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BaseChange/Variant8bef49b0d0d0325194e0c0d4a254df4f16b2afa89a9bd00ea63d7f3271f5887d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BaseChange/Variant8bef49b0d0d0325194e0c0d4a254df4f16b2afa89a9bd00ea63d7f3271f5887d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [congr](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant8bef49b0d0d0325194e0c0d4a254df4f16b2afa89a9bd00ea63d7f3271f5887d.lean/declarations/congr--aa2aff3726a3522f4ddb4628.md) | 49 | `declaration-track:aa2aff3726a3522f4ddb462844a8c2aa7271ab180992cc566d907689f59d0061` |
| 2 | `def` | [baseChange](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant8bef49b0d0d0325194e0c0d4a254df4f16b2afa89a9bd00ea63d7f3271f5887d.lean/declarations/basechange--fbb426d005936166bea42ee9.md) | 53 | `declaration-track:fbb426d005936166bea42ee92e1f258aa38bcde9ab893e4d21f4dc52ae574d9d` |
| 3 | `theorem` | [baseChange_apply_tmul](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant8bef49b0d0d0325194e0c0d4a254df4f16b2afa89a9bd00ea63d7f3271f5887d.lean/declarations/basechange-apply-tmul--b4627953ae0bbeaa5e8f7d03.md) | 57 | `result-track:b4627953ae0bbeaa5e8f7d03ac7336826c8f8fe9c013893da4d71cb1c009ad25` |
| 4 | `theorem` | [baseChange_baseChange](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant8bef49b0d0d0325194e0c0d4a254df4f16b2afa89a9bd00ea63d7f3271f5887d.lean/declarations/basechange-basechange--c8c542b9f5a698c2f4561a64.md) | 64 | `result-track:c8c542b9f5a698c2f4561a64940f30e27b85c1064b51389a10bbf6c4d32fc632` |
| 5 | `def` | [toDual](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant8bef49b0d0d0325194e0c0d4a254df4f16b2afa89a9bd00ea63d7f3271f5887d.lean/declarations/todual--10f82e6ba9b7c69d9a19a033.md) | 81 | `declaration-track:10f82e6ba9b7c69d9a19a033499c754ab580542f77cf887672156d152d3dd93d` |
| 6 | `theorem` | [toDual_comp_apply](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant8bef49b0d0d0325194e0c0d4a254df4f16b2afa89a9bd00ea63d7f3271f5887d.lean/declarations/todual-comp-apply--691635fc7e18d60cb05e4e94.md) | 85 | `result-track:691635fc7e18d60cb05e4e94548b6732011e3a2c8196045629a2b3eda3923843` |
| 7 | `theorem` | [toDual_apply](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant8bef49b0d0d0325194e0c0d4a254df4f16b2afa89a9bd00ea63d7f3271f5887d.lean/declarations/todual-apply--413ab1643bb501d7f7761dcd.md) | 89 | `result-track:413ab1643bb501d7f7761dcdb4f68acf57bbf35d69b4678e6acd64ac46fb5d4f` |
| 8 | `def` | [toDualBaseChangeAux](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant8bef49b0d0d0325194e0c0d4a254df4f16b2afa89a9bd00ea63d7f3271f5887d.lean/declarations/todualbasechangeaux--b26dfcc644f0d3ab6c54943b.md) | 97 | `declaration-track:b26dfcc644f0d3ab6c54943b2310f530186683b7f46aa349788c6937c64d46fb` |
| 9 | `theorem` | [toDualBaseChangeAux_tmul](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant8bef49b0d0d0325194e0c0d4a254df4f16b2afa89a9bd00ea63d7f3271f5887d.lean/declarations/todualbasechangeaux-tmul--9cafdbd1a3687bd94fffee2b.md) | 109 | `result-track:9cafdbd1a3687bd94fffee2b7a92d2163387bc48436251ba014636cb506602a0` |
| 10 | `def` | [toDualBaseChange](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant8bef49b0d0d0325194e0c0d4a254df4f16b2afa89a9bd00ea63d7f3271f5887d.lean/declarations/todualbasechange--6eec859a27a3eecc71872e4b.md) | 118 | `declaration-track:6eec859a27a3eecc71872e4bbd1cf1d124aa55abf145ea09e93122ba9ff78b7a` |
| 11 | `theorem` | [toDualBaseChange_tmul](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant8bef49b0d0d0325194e0c0d4a254df4f16b2afa89a9bd00ea63d7f3271f5887d.lean/declarations/todualbasechange-tmul--64e8efa910344b0e95cb0648.md) | 138 | `result-track:64e8efa910344b0e95cb0648737a7dce6bad9670c662d93c887a2a3fe9d416e9` |
| 12 | `theorem` | [dual](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant8bef49b0d0d0325194e0c0d4a254df4f16b2afa89a9bd00ea63d7f3271f5887d.lean/declarations/dual--6757c6c66005f3179b7ab383.md) | 142 | `result-track:6757c6c66005f3179b7ab383999dd8e89e23ed9f6d3f289b444917de1a3eeeda` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
