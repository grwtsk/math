# Verification target: GRWTSK.Algebra.Lasker.Variant832bd739d3cc8cc0c391eef21ec0b4a95cb726c10609f2ee91ed8180453b933d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "99bbbd377a67f773afe508187d9d1600ce12e8c9",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Lasker/Variant832bd739d3cc8cc0c391eef21ec0b4a95cb726c10609f2ee91ed8180453b933d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Lasker/Variant832bd739d3cc8cc0c391eef21ec0b4a95cb726c10609f2ee91ed8180453b933d.lean/index.md) · [Full source](../../../../mathematics/Algebra/Lasker/Variant832bd739d3cc8cc0c391eef21ec0b4a95cb726c10609f2ee91ed8180453b933d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `99bbbd377a67f773afe508187d9d1600ce12e8c9`.

Source path: `GRWTSK/Algebra/Lasker/Variant832bd739d3cc8cc0c391eef21ec0b4a95cb726c10609f2ee91ed8180453b933d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Lasker/Variant832bd739d3cc8cc0c391eef21ec0b4a95cb726c10609f2ee91ed8180453b933d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Irreducible` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Colon` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.IsPrimary` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Noetherian.Defs` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsLasker](../../../../mathematics/Algebra/Lasker/Variant832bd739d3cc8cc0c391eef21ec0b4a95cb726c10609f2ee91ed8180453b933d.lean/declarations/islasker--cc7d1a4e66f7563a2146ef65.md) | 45 | `declaration-track:cc7d1a4e66f7563a2146ef651d026232a81b3a47ece8b9431e9862fff5782a16` |
| 2 | `lemma` | [decomposition_erase_inf](../../../../mathematics/Algebra/Lasker/Variant832bd739d3cc8cc0c391eef21ec0b4a95cb726c10609f2ee91ed8180453b933d.lean/declarations/decomposition-erase-inf--91b071fcee2faef97958f7c2.md) | 52 | `result-track:91b071fcee2faef97958f7c2d753351f2887fc7dede0a91acd186d70746bb521` |
| 3 | `lemma` | [isPrimary_decomposition_pairwise_ne_radical](../../../../mathematics/Algebra/Lasker/Variant832bd739d3cc8cc0c391eef21ec0b4a95cb726c10609f2ee91ed8180453b933d.lean/declarations/isprimary-decomposition-pairwise-ne-radical--63a4966a803709d175d0ffa0.md) | 68 | `result-track:63a4966a803709d175d0ffa032e505f35c9eff63c113aafe7f3644138ede60b2` |
| 4 | `lemma` | [exists_minimal_isPrimary_decomposition_of_isPrimary_decomposition](../../../../mathematics/Algebra/Lasker/Variant832bd739d3cc8cc0c391eef21ec0b4a95cb726c10609f2ee91ed8180453b933d.lean/declarations/exists-minimal-isprimary-decomposition-of-isprimary-decomposition--993b69d8aa55ada56b1e4567.md) | 104 | `result-track:993b69d8aa55ada56b1e4567af9042c2272d44b59dab125bafd41e18b39d1a0c` |
| 5 | `lemma` | [IsLasker.minimal](../../../../mathematics/Algebra/Lasker/Variant832bd739d3cc8cc0c391eef21ec0b4a95cb726c10609f2ee91ed8180453b933d.lean/declarations/islasker-minimal--1efc2b6d94ac9354d97b0a50.md) | 113 | `result-track:1efc2b6d94ac9354d97b0a5085d1abb8ed57e721f340f4435f939dbe79d2f40d` |
| 6 | `lemma` | [_root_.GRWTSK.Algebra.IsLasker.Variant81342ad2b5e75d1fd0e97ea379a702ff833932c540658572bfdc08d93eaf5339.InfIrred.isPrimary](../../../../mathematics/Algebra/Lasker/Variant832bd739d3cc8cc0c391eef21ec0b4a95cb726c10609f2ee91ed8180453b933d.lean/declarations/root-grwtsk-algebra-islasker-variant81342ad2b5e75d1fd0e97ea379a702ff8339--65c6cda924be5359ba929064.md) | 130 | `result-track:65c6cda924be5359ba9290649251fb15e3cd9e08afc1a2639aed089e38a27a78` |
| 7 | `lemma` | [isLasker](../../../../mathematics/Algebra/Lasker/Variant832bd739d3cc8cc0c391eef21ec0b4a95cb726c10609f2ee91ed8180453b933d.lean/declarations/islasker--ee52b39646ecfc11a0866e09.md) | 171 | `result-track:ee52b39646ecfc11a0866e09aa526399b36a6f09b426ead9b009df3a52886019` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
