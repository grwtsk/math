# Verification target: GRWTSK.Algebra.LinearAlgebra.Defs.Variantbb9d3f1ab021e0c38266bb01fad2947894fed5740dad2352d96656a942c0f3f8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a6efd15a855c1e31d8e76e594b56b1066f8c9d95",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variantbb9d3f1ab021e0c38266bb01fad2947894fed5740dad2352d96656a942c0f3f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantbb9d3f1ab021e0c38266bb01fad2947894fed5740dad2352d96656a942c0f3f8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantbb9d3f1ab021e0c38266bb01fad2947894fed5740dad2352d96656a942c0f3f8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a6efd15a855c1e31d8e76e594b56b1066f8c9d95`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Defs/Variantbb9d3f1ab021e0c38266bb01fad2947894fed5740dad2352d96656a942c0f3f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Defs/Variantbb9d3f1ab021e0c38266bb01fad2947894fed5740dad2352d96656a942c0f3f8.lean.json)

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
| 1 | `class` | [IsNoetherian](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantbb9d3f1ab021e0c38266bb01fad2947894fed5740dad2352d96656a942c0f3f8.lean/declarations/isnoetherian--2dccc0fc84bceebc1d7969c2.md) | 70 | `declaration-track:2dccc0fc84bceebc1d7969c2b7ea1604dc39c3f842919fe6bf34223f83cf4edc` |
| 2 | `theorem` | [isNoetherian_def](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantbb9d3f1ab021e0c38266bb01fad2947894fed5740dad2352d96656a942c0f3f8.lean/declarations/isnoetherian-def--ba07d6d366d0c2ee564d0126.md) | 84 | `result-track:ba07d6d366d0c2ee564d01263f1fe81d41f8ecf3694965ca53952369791cfa83` |
| 3 | `theorem` | [isNoetherian_submodule](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantbb9d3f1ab021e0c38266bb01fad2947894fed5740dad2352d96656a942c0f3f8.lean/declarations/isnoetherian-submodule--79a6fbe019362550cb4e2f02.md) | 87 | `result-track:79a6fbe019362550cb4e2f02eb989af530a1406b9750b94a616a8ebc4fc8b9f1` |
| 4 | `theorem` | [isNoetherian_submodule_left](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantbb9d3f1ab021e0c38266bb01fad2947894fed5740dad2352d96656a942c0f3f8.lean/declarations/isnoetherian-submodule-left--68b95f138ba2bd7fea75aca3.md) | 96 | `result-track:68b95f138ba2bd7fea75aca3859b942dc304fb6ebb8ff8d6ae35c61011a71795` |
| 5 | `theorem` | [isNoetherian_submodule_right](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantbb9d3f1ab021e0c38266bb01fad2947894fed5740dad2352d96656a942c0f3f8.lean/declarations/isnoetherian-submodule-right--a460a7a6455507fb3ab66c16.md) | 100 | `result-track:a460a7a6455507fb3ab66c166884a0e710285632a587e82bf15690d8e51daa5a` |
| 6 | `instance` | [isNoetherian_submodule'](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantbb9d3f1ab021e0c38266bb01fad2947894fed5740dad2352d96656a942c0f3f8.lean/declarations/isnoetherian-submodule--465cb5230262cf5a4255875c.md) | 104 | `declaration-track:465cb5230262cf5a4255875cbbba89e72e84af59ae98129c2c5a0095b10d2a44` |
| 7 | `theorem` | [isNoetherian_of_le](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantbb9d3f1ab021e0c38266bb01fad2947894fed5740dad2352d96656a942c0f3f8.lean/declarations/isnoetherian-of-le--b835b5f81a15582eed457ee6.md) | 107 | `result-track:b835b5f81a15582eed457ee60b26a738d4e33482463708e1607441c1ec6dbaa0` |
| 8 | `theorem` | [isNoetherian_iff](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantbb9d3f1ab021e0c38266bb01fad2947894fed5740dad2352d96656a942c0f3f8.lean/declarations/isnoetherian-iff--f2b0c6d6087f14c1a87f6622.md) | 122 | `result-track:f2b0c6d6087f14c1a87f6622108872c6c29c3be654d2a5a872860c5158ac1b7e` |
| 9 | `instance` | [IsNoetherian.wellFoundedGT](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantbb9d3f1ab021e0c38266bb01fad2947894fed5740dad2352d96656a942c0f3f8.lean/declarations/isnoetherian-wellfoundedgt--a0c828cb579984981984cf82.md) | 132 | `declaration-track:a0c828cb579984981984cf82724eac2749ef5cb93391aef810ecb8d7d45259b2` |
| 10 | `theorem` | [isNoetherian_iff_fg_wellFounded](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantbb9d3f1ab021e0c38266bb01fad2947894fed5740dad2352d96656a942c0f3f8.lean/declarations/isnoetherian-iff-fg-wellfounded--4f5819d6118f5f30fe26ed44.md) | 135 | `result-track:4f5819d6118f5f30fe26ed4411339054b83aeeb2990fdcb523e3a9566c3d84a9` |
| 11 | `theorem` | [set_has_maximal_iff_noetherian](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantbb9d3f1ab021e0c38266bb01fad2947894fed5740dad2352d96656a942c0f3f8.lean/declarations/set-has-maximal-iff-noetherian--6de4546a86d777bac502a2c0.md) | 159 | `result-track:6de4546a86d777bac502a2c081ab1cfee2cf0cc0f6fe9c3b9fb8993c4203f0bd` |
| 12 | `theorem` | [monotone_stabilizes_iff_noetherian](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantbb9d3f1ab021e0c38266bb01fad2947894fed5740dad2352d96656a942c0f3f8.lean/declarations/monotone-stabilizes-iff-noetherian--b138eb828af47e4e62ba9ca0.md) | 164 | `result-track:b138eb828af47e4e62ba9ca0f7d7f267a98634153c14c0ad55e7119208c1f84e` |
| 13 | `theorem` | [Module.End.eventually_disjoint_ker_pow_range_pow](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantbb9d3f1ab021e0c38266bb01fad2947894fed5740dad2352d96656a942c0f3f8.lean/declarations/module-end-eventually-disjoint-ker-pow-range-pow--689b473f53b5c1a8d15e8423.md) | 173 | `result-track:689b473f53b5c1a8d15e8423947a0e10c0bb8756c5004bcf0fab3df08095febb` |
| 14 | `lemma` | [LinearMap.eventually_iSup_ker_pow_eq](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantbb9d3f1ab021e0c38266bb01fad2947894fed5740dad2352d96656a942c0f3f8.lean/declarations/linearmap-eventually-isup-ker-pow-eq--952512a75e23d5c176bd1c96.md) | 185 | `result-track:952512a75e23d5c176bd1c964a670bb6c6756de5c15406446c6904d2c276bef0` |
| 15 | `abbrev` | [IsNoetherianRing](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantbb9d3f1ab021e0c38266bb01fad2947894fed5740dad2352d96656a942c0f3f8.lean/declarations/isnoetherianring--01f91c53248a0c4cd05c1b7a.md) | 200 | `declaration-track:01f91c53248a0c4cd05c1b7a37b1e933f5912a2351ee077f8b7c395e4946bc9e` |
| 16 | `theorem` | [isNoetherianRing_iff](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantbb9d3f1ab021e0c38266bb01fad2947894fed5740dad2352d96656a942c0f3f8.lean/declarations/isnoetherianring-iff--488968616cf6622de16b4061.md) | 203 | `result-track:488968616cf6622de16b406131744471e46c89b00a3ba4523b2873d29c0cf0db` |
| 17 | `theorem` | [isNoetherianRing_iff_ideal_fg](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantbb9d3f1ab021e0c38266bb01fad2947894fed5740dad2352d96656a942c0f3f8.lean/declarations/isnoetherianring-iff-ideal-fg--14e948bbbfb25bf6de69ac37.md) | 207 | `result-track:14e948bbbfb25bf6de69ac376b4812df3dc4e2434cf165e67cbe513fe8f536af` |
| 18 | `lemma` | [Ideal.fg_of_isNoetherianRing](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantbb9d3f1ab021e0c38266bb01fad2947894fed5740dad2352d96656a942c0f3f8.lean/declarations/ideal-fg-of-isnoetherianring--588d99d4773bba58695fe1e0.md) | 211 | `result-track:588d99d4773bba58695fe1e029cd28c94212085e2253ff091eb9497e018cfbef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
