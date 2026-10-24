# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.String.Variant5e92ade6c1b6a8d168ae592b9dd2c1dfac5e627212beb48394206cf794040bde

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dbc268dc087503d035167af2b3edf7c0e4f87899",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant5e92ade6c1b6a8d168ae592b9dd2c1dfac5e627212beb48394206cf794040bde.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant5e92ade6c1b6a8d168ae592b9dd2c1dfac5e627212beb48394206cf794040bde.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant5e92ade6c1b6a8d168ae592b9dd2c1dfac5e627212beb48394206cf794040bde.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dbc268dc087503d035167af2b3edf7c0e4f87899`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant5e92ade6c1b6a8d168ae592b9dd2c1dfac5e627212beb48394206cf794040bde.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant5e92ade6c1b6a8d168ae592b9dd2c1dfac5e627212beb48394206cf794040bde.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.Length` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant5e92ade6c1b6a8d168ae592b9dd2c1dfac5e627212beb48394206cf794040bde.lean/declarations/instance--4d6e955196aa88fc000d62b6.md) | 28 | `declaration-track:4d6e955196aa88fc000d62b6f09fd97a069ad205cfb8e1e0ed1b1c6668d8db94` |
| 2 | `abbrev` | [Parser](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant5e92ade6c1b6a8d168ae592b9dd2c1dfac5e627212beb48394206cf794040bde.lean/declarations/parser--9d123aa7d6497712ba809104.md) | 39 | `declaration-track:9d123aa7d6497712ba809104eed08e1ebaaa29210f79423a56d8ff6dd759ad22` |
| 3 | `def` | [Parser.run](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant5e92ade6c1b6a8d168ae592b9dd2c1dfac5e627212beb48394206cf794040bde.lean/declarations/parser-run--80b37ae8e12f5573be31f1dc.md) | 44 | `declaration-track:80b37ae8e12f5573be31f1dcd1b71cf009fe84432b069e366d7aec9504ed6369` |
| 4 | `def` | [pstring](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant5e92ade6c1b6a8d168ae592b9dd2c1dfac5e627212beb48394206cf794040bde.lean/declarations/pstring--0976ce42c2c9043134a7d501.md) | 52 | `declaration-track:0976ce42c2c9043134a7d501d9b460c9ff8b69123a808892f514475799d63c00` |
| 5 | `def` | [skipString](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant5e92ade6c1b6a8d168ae592b9dd2c1dfac5e627212beb48394206cf794040bde.lean/declarations/skipstring--4ea2f0569369c0905cec2091.md) | 62 | `declaration-track:4ea2f0569369c0905cec20918add4b79eaa7054e7ec10b5eea8a3880d64dbba7` |
| 6 | `def` | [pchar](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant5e92ade6c1b6a8d168ae592b9dd2c1dfac5e627212beb48394206cf794040bde.lean/declarations/pchar--157a0e9911bc0d4ec2a84d9d.md) | 68 | `declaration-track:157a0e9911bc0d4ec2a84d9d880a98ade4c2e7d6f1c9dc939b6146f73323c3a0` |
| 7 | `def` | [skipChar](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant5e92ade6c1b6a8d168ae592b9dd2c1dfac5e627212beb48394206cf794040bde.lean/declarations/skipchar--85a5d46d032493bc0c07d197.md) | 75 | `declaration-track:85a5d46d032493bc0c07d197403f4ba448c3f5d7c8667ee1f49f9eda93925fca` |
| 8 | `def` | [digit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant5e92ade6c1b6a8d168ae592b9dd2c1dfac5e627212beb48394206cf794040bde.lean/declarations/digit--2458e59af6f3d3734d97f6ff.md) | 81 | `declaration-track:2458e59af6f3d3734d97f6ffe24a9e861f190199632fa063db7487536d75d010` |
| 9 | `def` | [digitToNat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant5e92ade6c1b6a8d168ae592b9dd2c1dfac5e627212beb48394206cf794040bde.lean/declarations/digittonat--73b5d396c424889e616a1b84.md) | 89 | `declaration-track:73b5d396c424889e616a1b8485cb845059c9e1cc0b0ef92f053864c47c6c0173` |
| 10 | `def` | [digitsCore](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant5e92ade6c1b6a8d168ae592b9dd2c1dfac5e627212beb48394206cf794040bde.lean/declarations/digitscore--3d7f6f3ce74ea6193a935743.md) | 92 | `declaration-track:3d7f6f3ce74ea6193a9357431d63e81060c510ecad32328ce07d414f5e127898` |
| 11 | `def` | [digits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant5e92ade6c1b6a8d168ae592b9dd2c1dfac5e627212beb48394206cf794040bde.lean/declarations/digits--a1e93c6ab40d4de23d8fefb4.md) | 117 | `declaration-track:a1e93c6ab40d4de23d8fefb48ec22c8118b4de3c9c4d1f6f412f31f41d275e8e` |
| 12 | `def` | [hexDigit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant5e92ade6c1b6a8d168ae592b9dd2c1dfac5e627212beb48394206cf794040bde.lean/declarations/hexdigit--fe527f44e1ce002e0d7c88c9.md) | 125 | `declaration-track:fe527f44e1ce002e0d7c88c9a012e91028f11726bdc6d282860fd7a4dcde00d6` |
| 13 | `def` | [asciiLetter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant5e92ade6c1b6a8d168ae592b9dd2c1dfac5e627212beb48394206cf794040bde.lean/declarations/asciiletter--90ffad3fdeeac6adef10c3b1.md) | 135 | `declaration-track:90ffad3fdeeac6adef10c3b112bfec8278f4ab03ef8cf23f7216e1f47e0bbf98` |
| 14 | `def` | [skipWs](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant5e92ade6c1b6a8d168ae592b9dd2c1dfac5e627212beb48394206cf794040bde.lean/declarations/skipws--b93d53c07c7e3b6b642f8908.md) | 139 | `declaration-track:b93d53c07c7e3b6b642f890859b8fed50252e1f9ea58ba9a763033d47c54426f` |
| 15 | `def` | [ws](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant5e92ade6c1b6a8d168ae592b9dd2c1dfac5e627212beb48394206cf794040bde.lean/declarations/ws--db6c3b5b735ee45f4731ccba.md) | 154 | `declaration-track:db6c3b5b735ee45f4731ccba2dc9178e106453e991df560fb19aabbf628588e2` |
| 16 | `def` | [take](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant5e92ade6c1b6a8d168ae592b9dd2c1dfac5e627212beb48394206cf794040bde.lean/declarations/take--1d3b60bb08b05dd40800b8db.md) | 160 | `declaration-track:1d3b60bb08b05dd40800b8dbccd85696584beaf9d78ed07b34374f9873407664` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
