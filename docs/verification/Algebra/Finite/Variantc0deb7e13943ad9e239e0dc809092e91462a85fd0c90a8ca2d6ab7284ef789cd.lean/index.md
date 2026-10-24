# Verification target: GRWTSK.Algebra.Finite.Variantc0deb7e13943ad9e239e0dc809092e91462a85fd0c90a8ca2d6ab7284ef789cd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c8fd4e93d0b005c350e9d3994f5c54d8e01114d",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Finite/Variantc0deb7e13943ad9e239e0dc809092e91462a85fd0c90a8ca2d6ab7284ef789cd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Finite/Variantc0deb7e13943ad9e239e0dc809092e91462a85fd0c90a8ca2d6ab7284ef789cd.lean/index.md) · [Full source](../../../../mathematics/Algebra/Finite/Variantc0deb7e13943ad9e239e0dc809092e91462a85fd0c90a8ca2d6ab7284ef789cd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c8fd4e93d0b005c350e9d3994f5c54d8e01114d`.

Source path: `GRWTSK/Algebra/Finite/Variantc0deb7e13943ad9e239e0dc809092e91462a85fd0c90a8ca2d6ab7284ef789cd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Finite/Variantc0deb7e13943ad9e239e0dc809092e91462a85fd0c90a8ca2d6ab7284ef789cd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.IdempotentFG` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Unramified.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Flat.Stability` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [iff_exists_tensorProduct](../../../../mathematics/Algebra/Finite/Variantc0deb7e13943ad9e239e0dc809092e91462a85fd0c90a8ca2d6ab7284ef789cd.lean/declarations/iff-exists-tensorproduct--41c5ad235ae9701b58496221.md) | 48 | `result-track:41c5ad235ae9701b58496221696139904d44c85a050f7dd86f8a4da36a18b2a2` |
| 2 | `lemma` | [finite_of_free_aux](../../../../mathematics/Algebra/Finite/Variantc0deb7e13943ad9e239e0dc809092e91462a85fd0c90a8ca2d6ab7284ef789cd.lean/declarations/finite-of-free-aux--efb99b3783e57ca6bbfe9418.md) | 83 | `result-track:efb99b3783e57ca6bbfe9418e4c1ec644e85c52d06f4263d3a5b32b156ab3b87` |
| 3 | `def` | [elem](../../../../mathematics/Algebra/Finite/Variantc0deb7e13943ad9e239e0dc809092e91462a85fd0c90a8ca2d6ab7284ef789cd.lean/declarations/elem--186f3ca8136e74432048aec0.md) | 135 | `declaration-track:186f3ca8136e74432048aec0bd48b6f2dc63f83fa911c75c403e45efbf4df1c8` |
| 4 | `lemma` | [one_tmul_sub_tmul_one_mul_elem](../../../../mathematics/Algebra/Finite/Variantc0deb7e13943ad9e239e0dc809092e91462a85fd0c90a8ca2d6ab7284ef789cd.lean/declarations/one-tmul-sub-tmul-one-mul-elem--7edfa572dd004bfdb840d3c2.md) | 138 | `result-track:7edfa572dd004bfdb840d3c2c0bc4c902126d2087c8152fadd617a795f047de8` |
| 5 | `lemma` | [one_tmul_mul_elem](../../../../mathematics/Algebra/Finite/Variantc0deb7e13943ad9e239e0dc809092e91462a85fd0c90a8ca2d6ab7284ef789cd.lean/declarations/one-tmul-mul-elem--d84eebb1d930ba6032fa9cc4.md) | 142 | `result-track:d84eebb1d930ba6032fa9cc46032d4e837fab75f0a5ecdba51184aa5071ef2b4` |
| 6 | `lemma` | [lmul_elem](../../../../mathematics/Algebra/Finite/Variantc0deb7e13943ad9e239e0dc809092e91462a85fd0c90a8ca2d6ab7284ef789cd.lean/declarations/lmul-elem--71bb3ab17239387ac96d4faa.md) | 146 | `result-track:71bb3ab17239387ac96d4faa873f236ce6036bf613bb9061bedbe6e922cb6f0b` |
| 7 | `lemma` | [finite_of_free](../../../../mathematics/Algebra/Finite/Variantc0deb7e13943ad9e239e0dc809092e91462a85fd0c90a8ca2d6ab7284ef789cd.lean/declarations/finite-of-free--1f428084faa070762c170c7c.md) | 154 | `result-track:1f428084faa070762c170c7c964f8b681f103fc50940a47ce6b97d2e939fac3a` |
| 8 | `def` | [sec](../../../../mathematics/Algebra/Finite/Variantc0deb7e13943ad9e239e0dc809092e91462a85fd0c90a8ca2d6ab7284ef789cd.lean/declarations/sec--1e7e21c17da58283f3c2ed9d.md) | 236 | `declaration-track:1e7e21c17da58283f3c2ed9d183f820ff22e377d4b7c4b6355c16f1b5e796dd9` |
| 9 | `lemma` | [comp_sec](../../../../mathematics/Algebra/Finite/Variantc0deb7e13943ad9e239e0dc809092e91462a85fd0c90a8ca2d6ab7284ef789cd.lean/declarations/comp-sec--8081912e2f595edcc7c3fa73.md) | 257 | `result-track:8081912e2f595edcc7c3fa731bc7c22e22bd0482b1c6331a8dfd1647d846166d` |
| 10 | `lemma` | [flat_of_restrictScalars](../../../../mathematics/Algebra/Finite/Variantc0deb7e13943ad9e239e0dc809092e91462a85fd0c90a8ca2d6ab7284ef789cd.lean/declarations/flat-of-restrictscalars--9f51e013130156d61dd9bf8c.md) | 273 | `result-track:9f51e013130156d61dd9bf8c67373167e9296d6e82ca039b0f81ab8f7769bb6e` |
| 11 | `lemma` | [projective_of_restrictScalars](../../../../mathematics/Algebra/Finite/Variantc0deb7e13943ad9e239e0dc809092e91462a85fd0c90a8ca2d6ab7284ef789cd.lean/declarations/projective-of-restrictscalars--8339c86ac2abcadb8cad5e63.md) | 277 | `result-track:8339c86ac2abcadb8cad5e633bb6848f2d07ef585c9ff46547f260b6c622f024` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
