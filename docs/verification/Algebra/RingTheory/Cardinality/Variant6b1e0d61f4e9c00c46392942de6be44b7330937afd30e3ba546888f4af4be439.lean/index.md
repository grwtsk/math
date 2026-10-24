# Verification target: GRWTSK.Algebra.RingTheory.Cardinality.Variant6b1e0d61f4e9c00c46392942de6be44b7330937afd30e3ba546888f4af4be439

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "420c380062e40450bd2d305bf509b584756790ea",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/Cardinality/Variant6b1e0d61f4e9c00c46392942de6be44b7330937afd30e3ba546888f4af4be439.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/RingTheory/Cardinality/Variant6b1e0d61f4e9c00c46392942de6be44b7330937afd30e3ba546888f4af4be439.lean/index.md) · [Full source](../../../../../mathematics/Algebra/RingTheory/Cardinality/Variant6b1e0d61f4e9c00c46392942de6be44b7330937afd30e3ba546888f4af4be439.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `420c380062e40450bd2d305bf509b584756790ea`.

Source path: `GRWTSK/Algebra/RingTheory/Cardinality/Variant6b1e0d61f4e9c00c46392942de6be44b7330937afd30e3ba546888f4af4be439.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/Cardinality/Variant6b1e0d61f4e9c00c46392942de6be44b7330937afd30e3ba546888f4af4be439.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Localization.FractionRing` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.MonoidLocalization.Cardinality` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.OreLocalization.Cardinality` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lift_cardinalMk_le](../../../../../mathematics/Algebra/RingTheory/Cardinality/Variant6b1e0d61f4e9c00c46392942de6be44b7330937afd30e3ba546888f4af4be439.lean/declarations/lift-cardinalmk-le--92a8cf0e43d61d559bd03af4.md) | 37 | `result-track:92a8cf0e43d61d559bd03af4e24eaefb2a49ee12bb1a931d03e763cca1d518e7` |
| 2 | `theorem` | [cardinalMk_le](../../../../../mathematics/Algebra/RingTheory/Cardinality/Variant6b1e0d61f4e9c00c46392942de6be44b7330937afd30e3ba546888f4af4be439.lean/declarations/cardinalmk-le--64111793b89087a5f67fc432.md) | 43 | `result-track:64111793b89087a5f67fc4328ea03a18e1e889f25ab3a4aeeb94b553528572d9` |
| 3 | `theorem` | [cardinalMk](../../../../../mathematics/Algebra/RingTheory/Cardinality/Variant6b1e0d61f4e9c00c46392942de6be44b7330937afd30e3ba546888f4af4be439.lean/declarations/cardinalmk--043e53ecee70b5ca84655b8b.md) | 59 | `result-track:043e53ecee70b5ca84655b8b0da19aa8dfb0ee9bafb1d3049902fddfa586249d` |
| 4 | `theorem` | [lift_cardinalMk](../../../../../mathematics/Algebra/RingTheory/Cardinality/Variant6b1e0d61f4e9c00c46392942de6be44b7330937afd30e3ba546888f4af4be439.lean/declarations/lift-cardinalmk--d333d750fe57a6f2c20aff31.md) | 73 | `result-track:d333d750fe57a6f2c20aff319371a57b5b3f9e723dd5549e81128f4cca3e8f39` |
| 5 | `theorem` | [cardinalMk](../../../../../mathematics/Algebra/RingTheory/Cardinality/Variant6b1e0d61f4e9c00c46392942de6be44b7330937afd30e3ba546888f4af4be439.lean/declarations/cardinalmk--df659174347717a333b0082e.md) | 79 | `result-track:df659174347717a333b0082e2971a5cb6a6623ab4217a6634e569bbc5154b618` |
| 6 | `theorem` | [Cardinal.mk_fractionRing](../../../../../mathematics/Algebra/RingTheory/Cardinality/Variant6b1e0d61f4e9c00c46392942de6be44b7330937afd30e3ba546888f4af4be439.lean/declarations/cardinal-mk-fractionring--ddecb568abbc6609fed5b810.md) | 88 | `result-track:ddecb568abbc6609fed5b8107ed634ec1fe1c5a391a4781a4c2b1f0223812d81` |
| 7 | `theorem` | [lift_cardinalMk](../../../../../mathematics/Algebra/RingTheory/Cardinality/Variant6b1e0d61f4e9c00c46392942de6be44b7330937afd30e3ba546888f4af4be439.lean/declarations/lift-cardinalmk--0b22fd10a5dbcbd056c68fa7.md) | 97 | `result-track:0b22fd10a5dbcbd056c68fa7288b726de3b3526ccf8e375353b5c785301d1241` |
| 8 | `theorem` | [cardinalMk](../../../../../mathematics/Algebra/RingTheory/Cardinality/Variant6b1e0d61f4e9c00c46392942de6be44b7330937afd30e3ba546888f4af4be439.lean/declarations/cardinalmk--620a8a6c3ef20b43640a73bf.md) | 100 | `result-track:620a8a6c3ef20b43640a73bf10256a14ffe54528e416b3764fb20e219e0d9291` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
