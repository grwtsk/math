# Verification target: GRWTSK.Algebra.Ideal.Variant0586ac85ec6b8562f2e22d68b2622b7b0cf2a5a09f5b269a78e32c277497ca98

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "59633ac08fded8d9f21b5ad2e9bd8e918b876c26",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Ideal/Variant0586ac85ec6b8562f2e22d68b2622b7b0cf2a5a09f5b269a78e32c277497ca98.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Ideal/Variant0586ac85ec6b8562f2e22d68b2622b7b0cf2a5a09f5b269a78e32c277497ca98.lean/index.md) · [Full source](../../../../mathematics/Algebra/Ideal/Variant0586ac85ec6b8562f2e22d68b2622b7b0cf2a5a09f5b269a78e32c277497ca98.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `59633ac08fded8d9f21b5ad2e9bd8e918b876c26`.

Source path: `GRWTSK/Algebra/Ideal/Variant0586ac85ec6b8562f2e22d68b2622b7b0cf2a5a09f5b269a78e32c277497ca98.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Ideal/Variant0586ac85ec6b8562f2e22d68b2622b7b0cf2a5a09f5b269a78e32c277497ca98.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Ring.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Group.Quotient` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Ideal.closure](../../../../mathematics/Algebra/Ideal/Variant0586ac85ec6b8562f2e22d68b2622b7b0cf2a5a09f5b269a78e32c277497ca98.lean/declarations/ideal-closure--167be74c5c2e65c8f24f6f6d.md) | 25 | `declaration-track:167be74c5c2e65c8f24f6f6d9361dc655b91f2c67871b6a40b4eaf947387889f` |
| 2 | `theorem` | [Ideal.coe_closure](../../../../mathematics/Algebra/Ideal/Variant0586ac85ec6b8562f2e22d68b2622b7b0cf2a5a09f5b269a78e32c277497ca98.lean/declarations/ideal-coe-closure--94b0835e78dfce66ca75a70c.md) | 33 | `result-track:94b0835e78dfce66ca75a70cd71dc946701e53e7505bd8451c0b5a5d3bb83261` |
| 3 | `theorem` | [Ideal.closure_eq_of_isClosed](../../../../mathematics/Algebra/Ideal/Variant0586ac85ec6b8562f2e22d68b2622b7b0cf2a5a09f5b269a78e32c277497ca98.lean/declarations/ideal-closure-eq-of-isclosed--c61ce472bb0192d463b5bdbf.md) | 39 | `result-track:c61ce472bb0192d463b5bdbf54b34ea911ab095ea19872096b13f34b3f42a4a0` |
| 4 | `instance` | [topologicalRingQuotientTopology](../../../../mathematics/Algebra/Ideal/Variant0586ac85ec6b8562f2e22d68b2622b7b0cf2a5a09f5b269a78e32c277497ca98.lean/declarations/topologicalringquotienttopology--3554d6505176a50088dbe5ef.md) | 50 | `declaration-track:3554d6505176a50088dbe5ef1f7d82594028272b2cdbc5c29d0e8bd9edafb315` |
| 5 | `theorem` | [QuotientRing.isOpenMap_coe](../../../../mathematics/Algebra/Ideal/Variant0586ac85ec6b8562f2e22d68b2622b7b0cf2a5a09f5b269a78e32c277497ca98.lean/declarations/quotientring-isopenmap-coe--9bd0b555fa6019272ce77905.md) | 56 | `result-track:9bd0b555fa6019272ce77905fb4a962ac6f45627ba5c21fafc40f2ae28123384` |
| 6 | `theorem` | [QuotientRing.isOpenQuotientMap_mk](../../../../mathematics/Algebra/Ideal/Variant0586ac85ec6b8562f2e22d68b2622b7b0cf2a5a09f5b269a78e32c277497ca98.lean/declarations/quotientring-isopenquotientmap-mk--7a010bf29014907195212be9.md) | 59 | `result-track:7a010bf29014907195212be9a26368d42324ea2a4099e7163c500ef7bbcb39aa` |
| 7 | `theorem` | [QuotientRing.isQuotientMap_coe_coe](../../../../mathematics/Algebra/Ideal/Variant0586ac85ec6b8562f2e22d68b2622b7b0cf2a5a09f5b269a78e32c277497ca98.lean/declarations/quotientring-isquotientmap-coe-coe--d7ca8e66c701612a11106cd0.md) | 62 | `result-track:d7ca8e66c701612a11106cd0bd7cabdc9766fb32d83c165a6b8cfdb0e55beb32` |
| 8 | `instance` | [topologicalRing_quotient](../../../../mathematics/Algebra/Ideal/Variant0586ac85ec6b8562f2e22d68b2622b7b0cf2a5a09f5b269a78e32c277497ca98.lean/declarations/topologicalring-quotient--84d78f7f6ba41e4a070253b1.md) | 68 | `declaration-track:84d78f7f6ba41e4a070253b1db4dcc8999dda9641f2db53132a352823782aa94` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Ideal/Variant0586ac85ec6b8562f2e22d68b2622b7b0cf2a5a09f5b269a78e32c277497ca98.lean/declarations/instance--3ca7db372267b2cd858839f6.md) | 73 | `declaration-track:3ca7db372267b2cd858839f68a0f788b8ed05ad429afc6a301a53107b0de3220` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
