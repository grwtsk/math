# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.RationalPositiveHeightCountIsolation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f70a4622f2b3727146eaa05a8fe5d4a69d0defc",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/RationalPositiveHeightCountIsolation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPositiveHeightCountIsolation.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPositiveHeightCountIsolation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f70a4622f2b3727146eaa05a8fe5d4a69d0defc`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/RationalPositiveHeightCountIsolation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/RationalPositiveHeightCountIsolation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PositiveHeightCountDeficit`](../../../../../mathematics/NumberTheory/Zeta/Riemann/PositiveHeightCountDeficit.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RationalCountInterval](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPositiveHeightCountIsolation.lean/declarations/rationalcountinterval--9fae295c33cbdaeaa35dae9f.md) | 40 | `declaration-track:9fae295c33cbdaeaa35dae9f628fa6d93698462d509e0b05e874b84d6f3e8c9c` |
| 2 | `def` | [Contains](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPositiveHeightCountIsolation.lean/declarations/contains--67a963ea683216975d7af362.md) | 48 | `declaration-track:67a963ea683216975d7af3620834467b6c0930e6c2099e9a207e202d469c784e` |
| 3 | `def` | [Isolates](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPositiveHeightCountIsolation.lean/declarations/isolates--664c7eba3cae03a0ea7dc3f1.md) | 55 | `declaration-track:664c7eba3cae03a0ea7dc3f1cd839e952128382d6b9e2d1303a0c47fe6033b96` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPositiveHeightCountIsolation.lean/declarations/instance--b34ddfe6692e596354582249.md) | 61 | `declaration-track:b34ddfe6692e596354582249397eacbb95f602ac500922baa179360cd2a2d5a3` |
| 5 | `def` | [accepts](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPositiveHeightCountIsolation.lean/declarations/accepts--367b1b609bf3907bf5fd3ea3.md) | 67 | `declaration-track:367b1b609bf3907bf5fd3ea393092c8bf852fc4cd0893db0b8d4371952680888` |
| 6 | `theorem` | [accepts_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPositiveHeightCountIsolation.lean/declarations/accepts-iff--7aaf8874ac8ae02dbc82f048.md) | 70 | `result-track:7aaf8874ac8ae02dbc82f0485e1fabfb625a3d55ffb6a932dfbb919ff2596d43` |
| 7 | `theorem` | [nat_eq_of_contains_of_isolates](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPositiveHeightCountIsolation.lean/declarations/nat-eq-of-contains-of-isolates--3f566157304f79b90ab4288e.md) | 76 | `result-track:3f566157304f79b90ab4288edf3a042d68232aa8a1fb92f98b2f69ca22dd1c26` |
| 8 | `theorem` | [not_isolates_of_successor_le_upper](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPositiveHeightCountIsolation.lean/declarations/not-isolates-of-successor-le-upper--6be91ef53241a05f0c85c304.md) | 106 | `result-track:6be91ef53241a05f0c85c304fba4a408ae9bf936b1e64a7448eb4d327509675e` |
| 9 | `theorem` | [not_isolates_of_lower_le_predecessor](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPositiveHeightCountIsolation.lean/declarations/not-isolates-of-lower-le-predecessor--f181096b19121793a5c11246.md) | 118 | `result-track:f181096b19121793a5c11246e26614cb34e0db88b11f8dca3a9a6331683b1f2b` |
| 10 | `structure` | [CanonicalCountEnclosure](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPositiveHeightCountIsolation.lean/declarations/canonicalcountenclosure--e2551aa362992dc60a263676.md) | 135 | `declaration-track:e2551aa362992dc60a26367637af3363a55e81d5c24aa440a9e3a8be33624937` |
| 11 | `def` | [accepts](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPositiveHeightCountIsolation.lean/declarations/accepts--e1de7f15adb29e55c38d2ba1.md) | 142 | `declaration-track:e1de7f15adb29e55c38d2ba17c3bd8614253b9c7f1e1eec7cd9bb99d9fcf3077` |
| 12 | `theorem` | [accepts_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPositiveHeightCountIsolation.lean/declarations/accepts-iff--5782ce02642d435aa4a07bed.md) | 145 | `result-track:5782ce02642d435aa4a07bed66bb7f1e0837ce91e2a11a84349a5856bd9aa5c3` |
| 13 | `theorem` | [exact_count_of_accepts](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPositiveHeightCountIsolation.lean/declarations/exact-count-of-accepts--009c95ba9dd59d34e7f185bb.md) | 151 | `result-track:009c95ba9dd59d34e7f185bba0dabf57d0f31c03b74901c2717ca250b0c53419` |
| 14 | `theorem` | [accepted_count_unique](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPositiveHeightCountIsolation.lean/declarations/accepted-count-unique--8093901b3fcb4cfb20085161.md) | 160 | `result-track:8093901b3fcb4cfb20085161b0fa4de1fa8f818e92c8f651a437d44bd4303af1` |
| 15 | `def` | [fourteenInterval](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPositiveHeightCountIsolation.lean/declarations/fourteeninterval--fe54b777db73723b89bcc988.md) | 171 | `declaration-track:fe54b777db73723b89bcc988ae700ca37b853332dcd77014e02c0f8e116808b2` |
| 16 | `theorem` | [fourteen_interval_accepts](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPositiveHeightCountIsolation.lean/declarations/fourteen-interval-accepts--2098d748385230be64738cc0.md) | 177 | `result-track:2098d748385230be64738cc0358da45a6d8385adc963edc5f5a9d78e69030b5b` |
| 17 | `def` | [twoIntegerInterval](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPositiveHeightCountIsolation.lean/declarations/twointegerinterval--ae4657a1b5722f08d8f84d6a.md) | 182 | `declaration-track:ae4657a1b5722f08d8f84d6a740b795eea0557d8b3a064a8594ef203255c8f1f` |
| 18 | `theorem` | [two_integer_interval_rejects_fourteen](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPositiveHeightCountIsolation.lean/declarations/two-integer-interval-rejects-fourteen--1809f72f4ab4788be11b2995.md) | 188 | `result-track:1809f72f4ab4788be11b2995f6ce1693a0b23d7653f006e414489f09fcfba00f` |
| 19 | `theorem` | [two_integer_interval_rejects_fifteen](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPositiveHeightCountIsolation.lean/declarations/two-integer-interval-rejects-fifteen--7182d80c8d27c01d450a9899.md) | 194 | `result-track:7182d80c8d27c01d450a9899d64d038904771c2660853f60e20c8c92bc3dfa30` |
| 20 | `def` | [missedIntegerInterval](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPositiveHeightCountIsolation.lean/declarations/missedintegerinterval--2ebb1664f8e1e38df6e4f95d.md) | 200 | `declaration-track:2ebb1664f8e1e38df6e4f95db348e63fb256e87495c0992bdb26eff27427cbe8` |
| 21 | `theorem` | [missed_integer_interval_rejected](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPositiveHeightCountIsolation.lean/declarations/missed-integer-interval-rejected--555ab99151e707979d6ab22e.md) | 206 | `result-track:555ab99151e707979d6ab22e99a864bdd7d6fd775b27fe67a2f12425d8aa88c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
