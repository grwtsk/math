# Verification target: GRWTSK.Algebra.LinearAlgebra.InvariantForm.Variantc9749ccd947a0e180a3f138203e8dfc58687d46bcf41756c5387080990fbae24

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4330b31f6f5e1875bc8aa11d6380fc2cfa532087",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/InvariantForm/Variantc9749ccd947a0e180a3f138203e8dfc58687d46bcf41756c5387080990fbae24.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/InvariantForm/Variantc9749ccd947a0e180a3f138203e8dfc58687d46bcf41756c5387080990fbae24.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/InvariantForm/Variantc9749ccd947a0e180a3f138203e8dfc58687d46bcf41756c5387080990fbae24.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4330b31f6f5e1875bc8aa11d6380fc2cfa532087`.

Source path: `GRWTSK/Algebra/LinearAlgebra/InvariantForm/Variantc9749ccd947a0e180a3f138203e8dfc58687d46bcf41756c5387080990fbae24.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/InvariantForm/Variantc9749ccd947a0e180a3f138203e8dfc58687d46bcf41756c5387080990fbae24.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Semisimple.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.BilinearForm.Orthogonal` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [_root_.LinearMap.BilinForm.lieInvariant](../../../../../mathematics/Algebra/LinearAlgebra/InvariantForm/Variantc9749ccd947a0e180a3f138203e8dfc58687d46bcf41756c5387080990fbae24.lean/declarations/root-linearmap-bilinform-lieinvariant--593f6de2e94ec979a2a9866d.md) | 50 | `declaration-track:593f6de2e94ec979a2a9866d84de3fee50a9f7fcbcf4b52dcdb9f660200d5568` |
| 2 | `lemma` | [_root_.LinearMap.BilinForm.lieInvariant_iff](../../../../../mathematics/Algebra/LinearAlgebra/InvariantForm/Variantc9749ccd947a0e180a3f138203e8dfc58687d46bcf41756c5387080990fbae24.lean/declarations/root-linearmap-bilinform-lieinvariant-iff--646b14fa7041374ec1153e7e.md) | 53 | `result-track:646b14fa7041374ec1153e7e8ede56b9cd3bad8b5db8e611bd895a7d59002913` |
| 3 | `def` | [orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/InvariantForm/Variantc9749ccd947a0e180a3f138203e8dfc58687d46bcf41756c5387080990fbae24.lean/declarations/orthogonal--25a21ac2a5d3892655d25ea5.md) | 69 | `declaration-track:25a21ac2a5d3892655d25ea57e9286ae2a2f37614e5f635636ef9438335ce8c3` |
| 4 | `lemma` | [orthogonal_toSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/InvariantForm/Variantc9749ccd947a0e180a3f138203e8dfc58687d46bcf41756c5387080990fbae24.lean/declarations/orthogonal-tosubmodule--c109c87c668241f26f230720.md) | 83 | `result-track:c109c87c668241f26f23072074130269eb3e1e29094c69cea26b5889e9b94a78` |
| 5 | `lemma` | [mem_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/InvariantForm/Variantc9749ccd947a0e180a3f138203e8dfc58687d46bcf41756c5387080990fbae24.lean/declarations/mem-orthogonal--03be2e88220fa1984e295ca5.md) | 86 | `result-track:03be2e88220fa1984e295ca50914115f341667792684bbc11ba7e0edc8bfb020` |
| 6 | `lemma` | [orthogonal_disjoint](../../../../../mathematics/Algebra/LinearAlgebra/InvariantForm/Variantc9749ccd947a0e180a3f138203e8dfc58687d46bcf41756c5387080990fbae24.lean/declarations/orthogonal-disjoint--e6a3799035cc622ded63dce2.md) | 92 | `result-track:e6a3799035cc622ded63dce25c21738936873b2e44dc46c75fc38629b95b7312` |
| 7 | `lemma` | [orthogonal_isCompl_toSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/InvariantForm/Variantc9749ccd947a0e180a3f138203e8dfc58687d46bcf41756c5387080990fbae24.lean/declarations/orthogonal-iscompl-tosubmodule--337394274ee91a3b20ad32f1.md) | 128 | `result-track:337394274ee91a3b20ad32f10113e2459ae30fdf6c6f8ee532ffdfb4cd3e78bf` |
| 8 | `lemma` | [orthogonal_isCompl](../../../../../mathematics/Algebra/LinearAlgebra/InvariantForm/Variantc9749ccd947a0e180a3f138203e8dfc58687d46bcf41756c5387080990fbae24.lean/declarations/orthogonal-iscompl--30ce6ae9af0932526e821d1d.md) | 138 | `result-track:30ce6ae9af0932526e821d1d729becccd33a69b14fd748ddd6170f5c3976a88a` |
| 9 | `lemma` | [restrict_nondegenerate](../../../../../mathematics/Algebra/LinearAlgebra/InvariantForm/Variantc9749ccd947a0e180a3f138203e8dfc58687d46bcf41756c5387080990fbae24.lean/declarations/restrict-nondegenerate--f0d171b63a08f2431fcbec2f.md) | 145 | `result-track:f0d171b63a08f2431fcbec2fa5c590c310c7977f139548e4a96e090959a6b54f` |
| 10 | `lemma` | [restrict_orthogonal_nondegenerate](../../../../../mathematics/Algebra/LinearAlgebra/InvariantForm/Variantc9749ccd947a0e180a3f138203e8dfc58687d46bcf41756c5387080990fbae24.lean/declarations/restrict-orthogonal-nondegenerate--f5114685f0bfd73c67feef37.md) | 150 | `result-track:f5114685f0bfd73c67feef37635ef63c1c45c8c590c164f9b264533450771c92` |
| 11 | `lemma` | [atomistic](../../../../../mathematics/Algebra/LinearAlgebra/InvariantForm/Variantc9749ccd947a0e180a3f138203e8dfc58687d46bcf41756c5387080990fbae24.lean/declarations/atomistic--72f6c110725a505cc0bcfe20.md) | 158 | `result-track:72f6c110725a505cc0bcfe203d1d7201c269c9056493afce222a68567cd9a73b` |
| 12 | `theorem` | [isSemisimple_of_nondegenerate](../../../../../mathematics/Algebra/LinearAlgebra/InvariantForm/Variantc9749ccd947a0e180a3f138203e8dfc58687d46bcf41756c5387080990fbae24.lean/declarations/issemisimple-of-nondegenerate--ddbcdd8f82a4e5c02dd4ff83.md) | 194 | `result-track:ddbcdd8f82a4e5c02dd4ff832a48e69c3463db4b653d8b5cbaf86ca91adb67b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
