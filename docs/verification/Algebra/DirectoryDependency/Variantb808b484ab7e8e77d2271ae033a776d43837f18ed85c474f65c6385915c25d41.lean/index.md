# Verification target: GRWTSK.Algebra.DirectoryDependency.Variantb808b484ab7e8e77d2271ae033a776d43837f18ed85c474f65c6385915c25d41

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f99a2a661efb1e04f1045027dff5349cdbe79a2",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/DirectoryDependency/Variantb808b484ab7e8e77d2271ae033a776d43837f18ed85c474f65c6385915c25d41.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/DirectoryDependency/Variantb808b484ab7e8e77d2271ae033a776d43837f18ed85c474f65c6385915c25d41.lean/index.md) · [Full source](../../../../mathematics/Algebra/DirectoryDependency/Variantb808b484ab7e8e77d2271ae033a776d43837f18ed85c474f65c6385915c25d41.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f99a2a661efb1e04f1045027dff5349cdbe79a2`.

Source path: `GRWTSK/Algebra/DirectoryDependency/Variantb808b484ab7e8e77d2271ae033a776d43837f18ed85c474f65c6385915c25d41.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/DirectoryDependency/Variantb808b484ab7e8e77d2271ae033a776d43837f18ed85c474f65c6385915c25d41.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Command` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Lean.Name.findPrefix](../../../../mathematics/Algebra/DirectoryDependency/Variantb808b484ab7e8e77d2271ae033a776d43837f18ed85c474f65c6385915c25d41.lean/declarations/lean-name-findprefix--03ecb3e1e391aae02463dcff.md) | 16 | `declaration-track:03ecb3e1e391aae02463dcffc9bfb7333a905af71bc965855ec2461d86b0a76a` |
| 2 | `def` | [Lean.Name.prefixes](../../../../mathematics/Algebra/DirectoryDependency/Variantb808b484ab7e8e77d2271ae033a776d43837f18ed85c474f65c6385915c25d41.lean/declarations/lean-name-prefixes--07a01b521a046eac0741ba6b.md) | 23 | `declaration-track:07a01b521a046eac0741ba6bf946cae547d8a65fdedc4a224a57894a2a3c85c9` |
| 3 | `def` | [Lean.Name.collectPrefixes](../../../../mathematics/Algebra/DirectoryDependency/Variantb808b484ab7e8e77d2271ae033a776d43837f18ed85c474f65c6385915c25d41.lean/declarations/lean-name-collectprefixes--3a26c1de9b98f0096737101c.md) | 30 | `declaration-track:3a26c1de9b98f0096737101cf58fdf2753a456d17b149ef8717a8ad2d62208b5` |
| 4 | `def` | [Lean.Name.prefixToName](../../../../mathematics/Algebra/DirectoryDependency/Variantb808b484ab7e8e77d2271ae033a776d43837f18ed85c474f65c6385915c25d41.lean/declarations/lean-name-prefixtoname--250b91356ac0097abdd25dd2.md) | 34 | `declaration-track:250b91356ac0097abdd25dd2cb366847c86773d6b79b2f525570664fdb0c8ba2` |
| 5 | `def` | [Lean.Environment.importPath](../../../../mathematics/Algebra/DirectoryDependency/Variantb808b484ab7e8e77d2271ae033a776d43837f18ed85c474f65c6385915c25d41.lean/declarations/lean-environment-importpath--e60b0ff717c76b67ed80a655.md) | 42 | `declaration-track:e60b0ff717c76b67ed80a65509a5937313a7e4b7eb95d49d11d0cdd388f945bd` |
| 6 | `register_option` | [linter.directoryDependency](../../../../mathematics/Algebra/DirectoryDependency/Variantb808b484ab7e8e77d2271ae033a776d43837f18ed85c474f65c6385915c25d41.lean/declarations/linter-directorydependency--fc890d31e06e268d4798b229.md) | 62 | `declaration-track:fc890d31e06e268d4798b2299f8db4291cea719948eba67632989fc73d48ef14` |
| 7 | `def` | [NamePrefixRel](../../../../mathematics/Algebra/DirectoryDependency/Variantb808b484ab7e8e77d2271ae033a776d43837f18ed85c474f65c6385915c25d41.lean/declarations/nameprefixrel--ab7adc773ed4f258145d5953.md) | 77 | `declaration-track:ab7adc773ed4f258145d59539f4b6810d394555f5fa26d1865e6bda663287e9c` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectoryDependency/Variantb808b484ab7e8e77d2271ae033a776d43837f18ed85c474f65c6385915c25d41.lean/declarations/instance--6070d4e3387ca23799ff6b24.md) | 81 | `declaration-track:6070d4e3387ca23799ff6b2489ccdc6d48034a014ddab59224fa10c0421fa1b6` |
| 9 | `def` | [insert](../../../../mathematics/Algebra/DirectoryDependency/Variantb808b484ab7e8e77d2271ae033a776d43837f18ed85c474f65c6385915c25d41.lean/declarations/insert--39756bd48d3e1ebba9055106.md) | 84 | `declaration-track:39756bd48d3e1ebba90551069fcb382eb5823fc4410d41f659a9f2f462c39a33` |
| 10 | `def` | [ofArray](../../../../mathematics/Algebra/DirectoryDependency/Variantb808b484ab7e8e77d2271ae033a776d43837f18ed85c474f65c6385915c25d41.lean/declarations/ofarray--5c2ee36a1fd3a4c59aa59e51.md) | 90 | `declaration-track:5c2ee36a1fd3a4c59aa59e51b98f0cdd6e57f36718e85345be8cdb333ee13e03` |
| 11 | `def` | [find](../../../../mathematics/Algebra/DirectoryDependency/Variantb808b484ab7e8e77d2271ae033a776d43837f18ed85c474f65c6385915c25d41.lean/declarations/find--1843caefa56873fb94a3e924.md) | 95 | `declaration-track:1843caefa56873fb94a3e924909448f42b843b315c2c2200992b46af39ea49d4` |
| 12 | `def` | [findAny](../../../../mathematics/Algebra/DirectoryDependency/Variantb808b484ab7e8e77d2271ae033a776d43837f18ed85c474f65c6385915c25d41.lean/declarations/findany--11e24c1c14c56d034101d144.md) | 109 | `declaration-track:11e24c1c14c56d034101d144162f0895629ee85fda016b1d6e472601ba3a0f25` |
| 13 | `def` | [contains](../../../../mathematics/Algebra/DirectoryDependency/Variantb808b484ab7e8e77d2271ae033a776d43837f18ed85c474f65c6385915c25d41.lean/declarations/contains--dd187ef0932ae857a635843a.md) | 121 | `declaration-track:dd187ef0932ae857a635843a306752ece7be1f46f73404f6484cbaba17d55c09` |
| 14 | `def` | [forbiddenImportDirs](../../../../mathematics/Algebra/DirectoryDependency/Variantb808b484ab7e8e77d2271ae033a776d43837f18ed85c474f65c6385915c25d41.lean/declarations/forbiddenimportdirs--6d23926048d5b8d9b9f85d6b.md) | 134 | `declaration-track:6d23926048d5b8d9b9f85d6b02195c134009da0cbc193bdac89687902a3c1c96` |
| 15 | `def` | [overrideAllowedImportDirs](../../../../mathematics/Algebra/DirectoryDependency/Variantb808b484ab7e8e77d2271ae033a776d43837f18ed85c474f65c6385915c25d41.lean/declarations/overrideallowedimportdirs--8628155539b6a7cb74f9d365.md) | 464 | `declaration-track:8628155539b6a7cb74f9d365f030902793f4c23cbcfc0ac113d973f9e382fe0f` |
| 16 | `def` | [directoryDependencyCheck](../../../../mathematics/Algebra/DirectoryDependency/Variantb808b484ab7e8e77d2271ae033a776d43837f18ed85c474f65c6385915c25d41.lean/declarations/directorydependencycheck--62db5bdf29deae99bb3c6197.md) | 476 | `declaration-track:62db5bdf29deae99bb3c61972353c54fcc93eb96191d20f96be5101baa7fd49e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
