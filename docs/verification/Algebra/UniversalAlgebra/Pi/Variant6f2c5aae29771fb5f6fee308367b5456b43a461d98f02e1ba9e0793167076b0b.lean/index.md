# Verification target: GRWTSK.Algebra.UniversalAlgebra.Pi.Variant6f2c5aae29771fb5f6fee308367b5456b43a461d98f02e1ba9e0793167076b0b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e4c5792e60246c03b9f26196f75d98813aacf53b",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Pi/Variant6f2c5aae29771fb5f6fee308367b5456b43a461d98f02e1ba9e0793167076b0b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant6f2c5aae29771fb5f6fee308367b5456b43a461d98f02e1ba9e0793167076b0b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant6f2c5aae29771fb5f6fee308367b5456b43a461d98f02e1ba9e0793167076b0b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e4c5792e60246c03b9f26196f75d98813aacf53b`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Pi/Variant6f2c5aae29771fb5f6fee308367b5456b43a461d98f02e1ba9e0793167076b0b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Pi/Variant6f2c5aae29771fb5f6fee308367b5456b43a461d98f02e1ba9e0793167076b0b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Spectrum.Quasispectrum` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Pi` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Prod` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pi.Units` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PreQuasiregular.toPi](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant6f2c5aae29771fb5f6fee308367b5456b43a461d98f02e1ba9e0793167076b0b.lean/declarations/prequasiregular-topi--f66b72ae86fa6ac7635bef1d.md) | 39 | `declaration-track:f66b72ae86fa6ac7635bef1dd989a1c8453405d4d18d1047473afaba08c5e16a` |
| 2 | `def` | [PreQuasiregular.toProd](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant6f2c5aae29771fb5f6fee308367b5456b43a461d98f02e1ba9e0793167076b0b.lean/declarations/prequasiregular-toprod--21f56fe32f3faa4e0113fd2d.md) | 50 | `declaration-track:21f56fe32f3faa4e0113fd2d03bc7b971e27f7f4448fd7797218e27120792bd9` |
| 3 | `lemma` | [isQuasiregular_pi_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant6f2c5aae29771fb5f6fee308367b5456b43a461d98f02e1ba9e0793167076b0b.lean/declarations/isquasiregular-pi-iff--710063aa034df37b3b11746b.md) | 58 | `result-track:710063aa034df37b3b11746b2d7e78f02a168eaf3cd05143fb7a41cd57f794c2` |
| 4 | `lemma` | [isQuasiregular_prod_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant6f2c5aae29771fb5f6fee308367b5456b43a461d98f02e1ba9e0793167076b0b.lean/declarations/isquasiregular-prod-iff--2112f2099b944dc69587c808.md) | 63 | `result-track:2112f2099b944dc69587c808ca4d17e8d529d40932c477c264a51b7138ba128b` |
| 5 | `lemma` | [quasispectrum.mem_iff_of_isUnit](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant6f2c5aae29771fb5f6fee308367b5456b43a461d98f02e1ba9e0793167076b0b.lean/declarations/quasispectrum-mem-iff-of-isunit--77c214a1c0a0110b76da0c87.md) | 68 | `result-track:77c214a1c0a0110b76da0c87605b5ea294bca820621e35f09e94e6ef8e61401f` |
| 6 | `lemma` | [Pi.spectrum_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant6f2c5aae29771fb5f6fee308367b5456b43a461d98f02e1ba9e0793167076b0b.lean/declarations/pi-spectrum-eq--11824a240652e7cb0501f6b3.md) | 77 | `result-track:11824a240652e7cb0501f6b3690354795e6a6cf0621b3c7678f4b2b4be32df6d` |
| 7 | `lemma` | [Prod.spectrum_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant6f2c5aae29771fb5f6fee308367b5456b43a461d98f02e1ba9e0793167076b0b.lean/declarations/prod-spectrum-eq--3a4e839a2bae96f9f83accce.md) | 83 | `result-track:3a4e839a2bae96f9f83accce396dc2058fbcbec97f43d8429d5eebcc421fecb4` |
| 8 | `lemma` | [Pi.quasispectrum_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant6f2c5aae29771fb5f6fee308367b5456b43a461d98f02e1ba9e0793167076b0b.lean/declarations/pi-quasispectrum-eq--8dae7941a29ac91429f43196.md) | 89 | `result-track:8dae7941a29ac91429f43196b4800691b9ae30905bd199c803fee78270edcdb8` |
| 9 | `lemma` | [Prod.quasispectrum_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant6f2c5aae29771fb5f6fee308367b5456b43a461d98f02e1ba9e0793167076b0b.lean/declarations/prod-quasispectrum-eq--4a4e13952ab2774ffeaa89b2.md) | 101 | `result-track:4a4e13952ab2774ffeaa89b21617760eff1ba691071cb89324df57986830c780` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
