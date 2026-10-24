# Verification target: GRWTSK.Algebra.CHSH.Variant89b76b0a1bc8dd115b12131a55384700e3bed35db03dbef1ae25c4c2bf91dc01

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3309e6f78fe2511496b7cdaada15394d32a514ad",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CHSH/Variant89b76b0a1bc8dd115b12131a55384700e3bed35db03dbef1ae25c4c2bf91dc01.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/CHSH/Variant89b76b0a1bc8dd115b12131a55384700e3bed35db03dbef1ae25c4c2bf91dc01.lean/index.md) · [Full source](../../../../mathematics/Algebra/CHSH/Variant89b76b0a1bc8dd115b12131a55384700e3bed35db03dbef1ae25c4c2bf91dc01.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3309e6f78fe2511496b7cdaada15394d32a514ad`.

Source path: `GRWTSK/Algebra/CHSH/Variant89b76b0a1bc8dd115b12131a55384700e3bed35db03dbef1ae25c4c2bf91dc01.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CHSH/Variant89b76b0a1bc8dd115b12131a55384700e3bed35db03dbef1ae25c4c2bf91dc01.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Invertible` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Sqrt` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsCHSHTuple](../../../../mathematics/Algebra/CHSH/Variant89b76b0a1bc8dd115b12131a55384700e3bed35db03dbef1ae25c4c2bf91dc01.lean/declarations/ischshtuple--7696ee14aecad577babaf1d9.md) | 93 | `declaration-track:7696ee14aecad577babaf1d9573c6316c563d47919557b5b428283e3aa5eb9f0` |
| 2 | `theorem` | [CHSH_id](../../../../mathematics/Algebra/CHSH/Variant89b76b0a1bc8dd115b12131a55384700e3bed35db03dbef1ae25c4c2bf91dc01.lean/declarations/chsh-id--a1709b7734ba892404a91346.md) | 111 | `result-track:a1709b7734ba892404a9134612b20d4b3f0a72dc0a173118dec324bbefd70c33` |
| 3 | `theorem` | [CHSH_inequality_of_comm](../../../../mathematics/Algebra/CHSH/Variant89b76b0a1bc8dd115b12131a55384700e3bed35db03dbef1ae25c4c2bf91dc01.lean/declarations/chsh-inequality-of-comm--47c93196a2659278fa0b87ef.md) | 132 | `result-track:47c93196a2659278fa0b87ef96d5a0e6e1a5a69c50e90a51502f5fa2db672764` |
| 4 | `theorem` | [tsirelson_inequality_aux](../../../../mathematics/Algebra/CHSH/Variant89b76b0a1bc8dd115b12131a55384700e3bed35db03dbef1ae25c4c2bf91dc01.lean/declarations/tsirelson-inequality-aux--d420660c3acd394792f36a19.md) | 178 | `result-track:d420660c3acd394792f36a19ff1f15c37d6ba4d51cb0239ac9a935bb63e89678` |
| 5 | `theorem` | [sqrt_two_inv_mul_self](../../../../mathematics/Algebra/CHSH/Variant89b76b0a1bc8dd115b12131a55384700e3bed35db03dbef1ae25c4c2bf91dc01.lean/declarations/sqrt-two-inv-mul-self--a90e62a75ac0381405187c5b.md) | 185 | `result-track:a90e62a75ac0381405187c5bd7504af3586ded42e91f16a2deda9b6396156eb3` |
| 6 | `theorem` | [tsirelson_inequality](../../../../mathematics/Algebra/CHSH/Variant89b76b0a1bc8dd115b12131a55384700e3bed35db03dbef1ae25c4c2bf91dc01.lean/declarations/tsirelson-inequality--2edb83c5a1ae8457cffda035.md) | 203 | `result-track:2edb83c5a1ae8457cffda0353261e17f02f61e4c184f5af45236a9a824cd5ae2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
