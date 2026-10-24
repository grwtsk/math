# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Roth.Variantfcac35f34cb37042d5cde9ec4d9afd5954e12bb7cdb2e52aac96ac1a4cd6edf8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61b864640791ebb4661a1330ddc564dbb0df1380",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Roth/Variantfcac35f34cb37042d5cde9ec4d9afd5954e12bb7cdb2e52aac96ac1a4cd6edf8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Roth/Variantfcac35f34cb37042d5cde9ec4d9afd5954e12bb7cdb2e52aac96ac1a4cd6edf8.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Roth/Variantfcac35f34cb37042d5cde9ec4d9afd5954e12bb7cdb2e52aac96ac1a4cd6edf8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61b864640791ebb4661a1330ddc564dbb0df1380`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Roth/Variantfcac35f34cb37042d5cde9ec4d9afd5954e12bb7cdb2e52aac96ac1a4cd6edf8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Roth/Variantfcac35f34cb37042d5cde9ec4d9afd5954e12bb7cdb2e52aac96ac1a4cd6edf8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Additive.AP.Three.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Additive.Corner.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Triangle.Removal` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Triangle.Tripartite` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [triangleIndices](../../../../../mathematics/Analysis/AsymptoticAnalysis/Roth/Variantfcac35f34cb37042d5cde9ec4d9afd5954e12bb7cdb2e52aac96ac1a4cd6edf8.lean/declarations/triangleindices--28ddd187cbcfe48261fefed9.md) | 39 | `declaration-track:28ddd187cbcfe48261fefed9eb9d8c522070b8e00936c8615061f4b65f86a449` |
| 2 | `lemma` | [mk_mem_triangleIndices](../../../../../mathematics/Analysis/AsymptoticAnalysis/Roth/Variantfcac35f34cb37042d5cde9ec4d9afd5954e12bb7cdb2e52aac96ac1a4cd6edf8.lean/declarations/mk-mem-triangleindices--4d27811d01ae068763f2a134.md) | 43 | `result-track:4d27811d01ae068763f2a134ef94c5bf873672f7c68b2fd4c607a62c49ff5c3f` |
| 3 | `lemma` | [card_triangleIndices](../../../../../mathematics/Analysis/AsymptoticAnalysis/Roth/Variantfcac35f34cb37042d5cde9ec4d9afd5954e12bb7cdb2e52aac96ac1a4cd6edf8.lean/declarations/card-triangleindices--09d6580e8f703c11d6c886f7.md) | 50 | `result-track:09d6580e8f703c11d6c886f73d853f4dc287f21384a8d132ba76052b07c0a13e` |
| 4 | `instance` | [triangleIndices.instExplicitDisjoint](../../../../../mathematics/Analysis/AsymptoticAnalysis/Roth/Variantfcac35f34cb37042d5cde9ec4d9afd5954e12bb7cdb2e52aac96ac1a4cd6edf8.lean/declarations/triangleindices-instexplicitdisjoint--8b70fec2359a675c3722987e.md) | 52 | `declaration-track:8b70fec2359a675c3722987e467f1e4d2384cb13f64e2834c6e8382a5027a0bc` |
| 5 | `lemma` | [noAccidental](../../../../../mathematics/Analysis/AsymptoticAnalysis/Roth/Variantfcac35f34cb37042d5cde9ec4d9afd5954e12bb7cdb2e52aac96ac1a4cd6edf8.lean/declarations/noaccidental--7370e654152f0402ad5926f4.md) | 59 | `result-track:7370e654152f0402ad5926f4c7e383ff168c71f689ea0ef6f0d0be532808b352` |
| 6 | `lemma` | [farFromTriangleFree_graph](../../../../../mathematics/Analysis/AsymptoticAnalysis/Roth/Variantfcac35f34cb37042d5cde9ec4d9afd5954e12bb7cdb2e52aac96ac1a4cd6edf8.lean/declarations/farfromtrianglefree-graph--96445bea793881cb41bd4d45.md) | 65 | `result-track:96445bea793881cb41bd4d45caf524b085a783d2fdc74c9b0339882f1824e333` |
| 7 | `def` | [cornersTheoremBound](../../../../../mathematics/Analysis/AsymptoticAnalysis/Roth/Variantfcac35f34cb37042d5cde9ec4d9afd5954e12bb7cdb2e52aac96ac1a4cd6edf8.lean/declarations/cornerstheorembound--935e57caaa9dfe4f9a0753a6.md) | 83 | `declaration-track:935e57caaa9dfe4f9a0753a68e5bcc81e2412f4246d109ad2e79601306f4db01` |
| 8 | `theorem` | [corners_theorem](../../../../../mathematics/Analysis/AsymptoticAnalysis/Roth/Variantfcac35f34cb37042d5cde9ec4d9afd5954e12bb7cdb2e52aac96ac1a4cd6edf8.lean/declarations/corners-theorem--81604c8383a7552aa09a5d26.md) | 88 | `result-track:81604c8383a7552aa09a5d26e189e8694f949b696da947649325e60d66d67246` |
| 9 | `theorem` | [corners_theorem_nat](../../../../../mathematics/Analysis/AsymptoticAnalysis/Roth/Variantfcac35f34cb37042d5cde9ec4d9afd5954e12bb7cdb2e52aac96ac1a4cd6edf8.lean/declarations/corners-theorem-nat--f73426cc72adeee989847592.md) | 112 | `result-track:f73426cc72adeee98984759233e1f39d4b93727a3ff63dae9d72f046af840980` |
| 10 | `theorem` | [roth_3ap_theorem](../../../../../mathematics/Analysis/AsymptoticAnalysis/Roth/Variantfcac35f34cb37042d5cde9ec4d9afd5954e12bb7cdb2e52aac96ac1a4cd6edf8.lean/declarations/roth-3ap-theorem--06b0d5f62fd2884c33b31f56.md) | 148 | `result-track:06b0d5f62fd2884c33b31f563eb4a591052da92cea1325af56415325b199584c` |
| 11 | `theorem` | [roth_3ap_theorem_nat](../../../../../mathematics/Analysis/AsymptoticAnalysis/Roth/Variantfcac35f34cb37042d5cde9ec4d9afd5954e12bb7cdb2e52aac96ac1a4cd6edf8.lean/declarations/roth-3ap-theorem-nat--e5d1f30dbf9093218e0b256e.md) | 173 | `result-track:e5d1f30dbf9093218e0b256e6aa1d8cbc3140e9d559036a6a278e885987ae957` |
| 12 | `theorem` | [rothNumberNat_isLittleO_id](../../../../../mathematics/Analysis/AsymptoticAnalysis/Roth/Variantfcac35f34cb37042d5cde9ec4d9afd5954e12bb7cdb2e52aac96ac1a4cd6edf8.lean/declarations/rothnumbernat-islittleo-id--d88ff9b4a9f7fc6a7c1c9776.md) | 206 | `result-track:d88ff9b4a9f7fc6a7c1c97761fc0f1b6ea8350d5f618d4999931e11375247f6b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
