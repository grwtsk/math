# Verification target: GRWTSK.Algebra.HEval.Variant9752595f79675286e9022daca7afa7279587da1e162b692d299166330e787027

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f898d83025cc2a5ec8d49e7013b2ec9376540611",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/HEval/Variant9752595f79675286e9022daca7afa7279587da1e162b692d299166330e787027.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/HEval/Variant9752595f79675286e9022daca7afa7279587da1e162b692d299166330e787027.lean/index.md) · [Full source](../../../../mathematics/Algebra/HEval/Variant9752595f79675286e9022daca7afa7279587da1e162b692d299166330e787027.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f898d83025cc2a5ec8d49e7013b2ec9376540611`.

Source path: `GRWTSK/Algebra/HEval/Variant9752595f79675286e9022daca7afa7279587da1e162b692d299166330e787027.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/HEval/Variant9752595f79675286e9022daca7afa7279587da1e162b692d299166330e787027.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [powerSeriesFamily](../../../../mathematics/Algebra/HEval/Variant9752595f79675286e9022daca7afa7279587da1e162b692d299166330e787027.lean/declarations/powerseriesfamily--6586cadca9c8ea7332ac6356.md) | 51 | `declaration-track:6586cadca9c8ea7332ac63568ae97e01c87078e880de41c60a87a08c1d9a4f46` |
| 2 | `theorem` | [powerSeriesFamily_of_not_orderTop_pos](../../../../mathematics/Algebra/HEval/Variant9752595f79675286e9022daca7afa7279587da1e162b692d299166330e787027.lean/declarations/powerseriesfamily-of-not-ordertop-pos--2f255e527b7d1e4cabefd5ff.md) | 54 | `result-track:2f255e527b7d1e4cabefd5ff4659f5368624d103eb050f900baab80df7685e04` |
| 3 | `theorem` | [powerSeriesFamily_of_orderTop_pos](../../../../mathematics/Algebra/HEval/Variant9752595f79675286e9022daca7afa7279587da1e162b692d299166330e787027.lean/declarations/powerseriesfamily-of-ordertop-pos--65bf5c2b22844d1e50905fda.md) | 60 | `result-track:65bf5c2b22844d1e50905fda55e22b9c637c01b3c10360e9f9674e1566632efd` |
| 4 | `theorem` | [powerSeriesFamily_hsum_zero](../../../../mathematics/Algebra/HEval/Variant9752595f79675286e9022daca7afa7279587da1e162b692d299166330e787027.lean/declarations/powerseriesfamily-hsum-zero--992d5a0e27064b33cd0d8d47.md) | 65 | `result-track:992d5a0e27064b33cd0d8d47d5e797a52e4f4b61e4e084717d13a35f7344c885` |
| 5 | `theorem` | [powerSeriesFamily_add](../../../../mathematics/Algebra/HEval/Variant9752595f79675286e9022daca7afa7279587da1e162b692d299166330e787027.lean/declarations/powerseriesfamily-add--630dce1734299823a1034630.md) | 76 | `result-track:630dce1734299823a1034630f41c4594c2a9de242bd04cda1231981591332c17` |
| 6 | `theorem` | [powerSeriesFamily_smul](../../../../mathematics/Algebra/HEval/Variant9752595f79675286e9022daca7afa7279587da1e162b692d299166330e787027.lean/declarations/powerseriesfamily-smul--9333aa70a5a43e0cf6c60728.md) | 81 | `result-track:9333aa70a5a43e0cf6c607287bca56adeb703faa1296d65d6b803e772cb06be7` |
| 7 | `theorem` | [support_powerSeriesFamily_subset](../../../../mathematics/Algebra/HEval/Variant9752595f79675286e9022daca7afa7279587da1e162b692d299166330e787027.lean/declarations/support-powerseriesfamily-subset--c1ee12896d02519faf0a0f7b.md) | 87 | `result-track:c1ee12896d02519faf0a0f7bf0d68bee440cc2e10d53719e270ac24d4611690c` |
| 8 | `theorem` | [hsum_powerSeriesFamily_mul](../../../../mathematics/Algebra/HEval/Variant9752595f79675286e9022daca7afa7279587da1e162b692d299166330e787027.lean/declarations/hsum-powerseriesfamily-mul--bd95b6948e6177472f6f8695.md) | 117 | `result-track:bd95b6948e6177472f6f8695b4015ee997f30717cb4a9fd5c433aa8105b22c65` |
| 9 | `def` | [heval](../../../../mathematics/Algebra/HEval/Variant9752595f79675286e9022daca7afa7279587da1e162b692d299166330e787027.lean/declarations/heval--a62fe599a3e68f65d375ceac.md) | 167 | `declaration-track:a62fe599a3e68f65d375ceac56d1f37e6151ec37fca4b1b539c2957b1f717566` |
| 10 | `theorem` | [heval_mul](../../../../mathematics/Algebra/HEval/Variant9752595f79675286e9022daca7afa7279587da1e162b692d299166330e787027.lean/declarations/heval-mul--8c3356723a086633c67edaf8.md) | 189 | `result-track:8c3356723a086633c67edaf859178092f71baf1f9898a4cbf6d932ecf42defc9` |
| 11 | `theorem` | [heval_C](../../../../mathematics/Algebra/HEval/Variant9752595f79675286e9022daca7afa7279587da1e162b692d299166330e787027.lean/declarations/heval-c--6c1b4929745132b934f76def.md) | 192 | `result-track:6c1b4929745132b934f76def870324233f663a33f4d5db4b52003a6c034b6cd2` |
| 12 | `theorem` | [heval_X](../../../../mathematics/Algebra/HEval/Variant9752595f79675286e9022daca7afa7279587da1e162b692d299166330e787027.lean/declarations/heval-x--417387dc70dcc897e35ae506.md) | 199 | `result-track:417387dc70dcc897e35ae5062ea88c8c0d300433ce8b61b0c1e42b1fb5131226` |
| 13 | `theorem` | [heval_unit](../../../../mathematics/Algebra/HEval/Variant9752595f79675286e9022daca7afa7279587da1e162b692d299166330e787027.lean/declarations/heval-unit--eb5bce7f795a2752ae9d1e1b.md) | 206 | `result-track:eb5bce7f795a2752ae9d1e1b53e96f67417db37a444dc84307b2d51d3e3895e7` |
| 14 | `theorem` | [coeff_heval](../../../../mathematics/Algebra/HEval/Variant9752595f79675286e9022daca7afa7279587da1e162b692d299166330e787027.lean/declarations/coeff-heval--6c973377874314645a1fd8ec.md) | 211 | `result-track:6c973377874314645a1fd8ec94afad822dfeb7b08fac06e3a2dd7bf0714bea3f` |
| 15 | `theorem` | [coeff_heval_zero](../../../../mathematics/Algebra/HEval/Variant9752595f79675286e9022daca7afa7279587da1e162b692d299166330e787027.lean/declarations/coeff-heval-zero--dc0ae5051dd7e19f4007c2c7.md) | 216 | `result-track:dc0ae5051dd7e19f4007c2c75f7148ab58489930796a4ecc7bc85e69c4139138` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
