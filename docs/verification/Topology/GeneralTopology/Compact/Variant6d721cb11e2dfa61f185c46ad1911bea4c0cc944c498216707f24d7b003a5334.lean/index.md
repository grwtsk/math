# Verification target: GRWTSK.Topology.GeneralTopology.Compact.Variant6d721cb11e2dfa61f185c46ad1911bea4c0cc944c498216707f24d7b003a5334

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7123b75a3a79c640d4719460355b3bdad15c3345",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Compact/Variant6d721cb11e2dfa61f185c46ad1911bea4c0cc944c498216707f24d7b003a5334.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant6d721cb11e2dfa61f185c46ad1911bea4c0cc944c498216707f24d7b003a5334.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant6d721cb11e2dfa61f185c46ad1911bea4c0cc944c498216707f24d7b003a5334.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7123b75a3a79c640d4719460355b3bdad15c3345`.

Source path: `GRWTSK/Topology/GeneralTopology/Compact/Variant6d721cb11e2dfa61f185c46ad1911bea4c0cc944c498216707f24d7b003a5334.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Compact/Variant6d721cb11e2dfa61f185c46ad1911bea4c0cc944c498216707f24d7b003a5334.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.DedekindDomain.Factorization` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DiscreteValuationRing.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.HopkinsLevitzki` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IntegralDomain` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.Quotient` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Group.ClosedSubgroup` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Field` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.Basic` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.Compact` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.OpenSubgroup` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Ring.Ideal` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant6d721cb11e2dfa61f185c46ad1911bea4c0cc944c498216707f24d7b003a5334.lean/declarations/instance--fd55406368107a6ba8dc4626.md) | 54 | `declaration-track:fd55406368107a6ba8dc4626cc757adaf7b3978d4e66f577830869831c124491` |
| 2 | `lemma` | [Ideal.isOpen_of_isMaximal](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant6d721cb11e2dfa61f185c46ad1911bea4c0cc944c498216707f24d7b003a5334.lean/declarations/ideal-isopen-of-ismaximal--b0c4429c62d1ce6644a6f4d8.md) | 75 | `result-track:b0c4429c62d1ce6644a6f4d8b1e8a124c84a57742f51b34a9f526fbd05b3b17b` |
| 3 | `lemma` | [Ideal.isOpen_pow_of_isMaximal](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant6d721cb11e2dfa61f185c46ad1911bea4c0cc944c498216707f24d7b003a5334.lean/declarations/ideal-isopen-pow-of-ismaximal--18393f0376f361647e5b1d82.md) | 81 | `result-track:18393f0376f361647e5b1d8296bf8d6a44044c5b0d18ba0f31916c284724347d` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant6d721cb11e2dfa61f185c46ad1911bea4c0cc944c498216707f24d7b003a5334.lean/declarations/instance--78fa4cb02abe7d51748ab80c.md) | 90 | `declaration-track:78fa4cb02abe7d51748ab80c5ce9d31a1acd7beda63dcc72446f98c3a23e6f51` |
| 5 | `lemma` | [isOpen_maximalIdeal_pow](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant6d721cb11e2dfa61f185c46ad1911bea4c0cc944c498216707f24d7b003a5334.lean/declarations/isopen-maximalideal-pow--c16ecc285c62feceebce91fa.md) | 99 | `result-track:c16ecc285c62feceebce91fafb9c70e9b2d6b4d4b3b44fd4eaaa144bedbbc9ed` |
| 6 | `lemma` | [isOpen_maximalIdeal](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant6d721cb11e2dfa61f185c46ad1911bea4c0cc944c498216707f24d7b003a5334.lean/declarations/isopen-maximalideal--750fd8b11de28d29493902e6.md) | 104 | `result-track:750fd8b11de28d29493902e6e308784791cffa65d36b828aa23fed4153782704` |
| 7 | `instance` | [finite_residueField_of_compactSpace](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant6d721cb11e2dfa61f185c46ad1911bea4c0cc944c498216707f24d7b003a5334.lean/declarations/finite-residuefield-of-compactspace--920cfcfdd2e7679b77b67d03.md) | 107 | `declaration-track:920cfcfdd2e7679b77b67d03eed3ede1813357c421ce07eb74b742815f1b6044` |
| 8 | `lemma` | [isOpen_iff_finite_quotient](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant6d721cb11e2dfa61f185c46ad1911bea4c0cc944c498216707f24d7b003a5334.lean/declarations/isopen-iff-finite-quotient--191c38dcc21a92b5667358d4.md) | 110 | `result-track:191c38dcc21a92b5667358d480d85022bbe93e472af2b55e1b03016a4fbed5ac` |
| 9 | `lemma` | [IsDedekindDomain.isOpen_of_ne_bot](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant6d721cb11e2dfa61f185c46ad1911bea4c0cc944c498216707f24d7b003a5334.lean/declarations/isdedekinddomain-isopen-of-ne-bot--4af05c065fd5f7581c45b354.md) | 121 | `result-track:4af05c065fd5f7581c45b35474cabb50be70aaa3280e041616d29b4d28d5347d` |
| 10 | `lemma` | [IsDedekindDomain.isOpen_iff](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant6d721cb11e2dfa61f185c46ad1911bea4c0cc944c498216707f24d7b003a5334.lean/declarations/isdedekinddomain-isopen-iff--3031f97cdd37aa44d48c942a.md) | 133 | `result-track:3031f97cdd37aa44d48c942a13d9fffba03b0d1c5a953b851b16b9d5477bcfc3` |
| 11 | `lemma` | [IsDiscreteValuationRing.isOpen_iff](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant6d721cb11e2dfa61f185c46ad1911bea4c0cc944c498216707f24d7b003a5334.lean/declarations/isdiscretevaluationring-isopen-iff--01e6f2b3dc7f4fee65cb6d73.md) | 141 | `result-track:01e6f2b3dc7f4fee65cb6d730e8727cbaa092a497d94e3f260217c38cee554af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
