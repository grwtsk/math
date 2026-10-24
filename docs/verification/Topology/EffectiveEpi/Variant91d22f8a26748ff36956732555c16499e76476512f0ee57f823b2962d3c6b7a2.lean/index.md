# Verification target: GRWTSK.Topology.EffectiveEpi.Variant91d22f8a26748ff36956732555c16499e76476512f0ee57f823b2962d3c6b7a2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ea761c42e0ec29f78f1314217b0b11c9bb234360",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/EffectiveEpi/Variant91d22f8a26748ff36956732555c16499e76476512f0ee57f823b2962d3c6b7a2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/EffectiveEpi/Variant91d22f8a26748ff36956732555c16499e76476512f0ee57f823b2962d3c6b7a2.lean/index.md) · [Full source](../../../../mathematics/Topology/EffectiveEpi/Variant91d22f8a26748ff36956732555c16499e76476512f0ee57f823b2962d3c6b7a2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ea761c42e0ec29f78f1314217b0b11c9bb234360`.

Source path: `GRWTSK/Topology/EffectiveEpi/Variant91d22f8a26748ff36956732555c16499e76476512f0ee57f823b2962d3c6b7a2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/EffectiveEpi/Variant91d22f8a26748ff36956732555c16499e76476512f0ee57f823b2962d3c6b7a2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.Stonean.Limits` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.CompHaus.EffectiveEpi` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [two](../../../../mathematics/Topology/EffectiveEpi/Variant91d22f8a26748ff36956732555c16499e76476512f0ee57f823b2962d3c6b7a2.lean/declarations/two--d98f0a82dcf7205880cd8841.md) | 44 | `declaration-track:d98f0a82dcf7205880cd8841b4f252a85bfd317718fe0268386f460fdb557ed5` |
| 2 | `lemma` | [epi_iff_surjective](../../../../mathematics/Topology/EffectiveEpi/Variant91d22f8a26748ff36956732555c16499e76476512f0ee57f823b2962d3c6b7a2.lean/declarations/epi-iff-surjective--b9c03bfe2df385972e8f7cc2.md) | 52 | `result-track:b9c03bfe2df385972e8f7cc23f8b0e02285abc66266c0d85bc23af1feefe45e9` |
| 3 | `abbrev` | [F](../../../../mathematics/Topology/EffectiveEpi/Variant91d22f8a26748ff36956732555c16499e76476512f0ee57f823b2962d3c6b7a2.lean/declarations/f--ff3a9d82fe4b571a8d23a18e.md) | 107 | `declaration-track:ff3a9d82fe4b571a8d23a18e048fcb3f5bd45fe978007d376be6e268777a240c` |
| 4 | `lemma` | [lift_desc_condition](../../../../mathematics/Topology/EffectiveEpi/Variant91d22f8a26748ff36956732555c16499e76476512f0ee57f823b2962d3c6b7a2.lean/declarations/lift-desc-condition--09cd1488fe242da7f671b95d.md) | 127 | `result-track:09cd1488fe242da7f671b95d635cca91ff37320fb2fa1604217d0e2095460c18` |
| 5 | `def` | [struct](../../../../mathematics/Topology/EffectiveEpi/Variant91d22f8a26748ff36956732555c16499e76476512f0ee57f823b2962d3c6b7a2.lean/declarations/struct--efebd78ef4839e574ac47f45.md) | 148 | `declaration-track:efebd78ef4839e574ac47f454360d7b8d411a67f643f300ea5a4eb7b1bca6aa7` |
| 6 | `theorem` | [effectiveEpiFamily_of_jointly_surjective](../../../../mathematics/Topology/EffectiveEpi/Variant91d22f8a26748ff36956732555c16499e76476512f0ee57f823b2962d3c6b7a2.lean/declarations/effectiveepifamily-of-jointly-surjective--97303f6a36563d81dcf67125.md) | 181 | `result-track:97303f6a36563d81dcf671250733d3b00c3b327d5f24b81ef55eee93a7b65e1f` |
| 7 | `theorem` | [effectiveEpiFamily_tfae](../../../../mathematics/Topology/EffectiveEpi/Variant91d22f8a26748ff36956732555c16499e76476512f0ee57f823b2962d3c6b7a2.lean/declarations/effectiveepifamily-tfae--ad53ddfbc13263de192c28f1.md) | 195 | `result-track:ad53ddfbc13263de192c28f102d86724bb3f952645ad3a3ed991052b906f011f` |
| 8 | `theorem` | [_root_.CategoryTheory.EffectiveEpiFamily.toCompHaus](../../../../mathematics/Topology/EffectiveEpi/Variant91d22f8a26748ff36956732555c16499e76476512f0ee57f823b2962d3c6b7a2.lean/declarations/root-categorytheory-effectiveepifamily-tocomphaus--8dd6125729d6e8829d9ec265.md) | 237 | `result-track:8dd6125729d6e8829d9ec2655884e778d1c6e8ae3f57c05aecabfcb8ffca8e7a` |
| 9 | `instance` | [instPrecoherent](../../../../mathematics/Topology/EffectiveEpi/Variant91d22f8a26748ff36956732555c16499e76476512f0ee57f823b2962d3c6b7a2.lean/declarations/instprecoherent--dc74c1f46540edbaca52405f.md) | 244 | `declaration-track:dc74c1f46540edbaca52405f69a6c5869524d88308187987a7b69e421289a799` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
