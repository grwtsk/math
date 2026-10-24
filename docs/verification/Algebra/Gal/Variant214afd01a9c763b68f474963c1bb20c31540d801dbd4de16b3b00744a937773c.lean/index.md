# Verification target: GRWTSK.Algebra.Gal.Variant214afd01a9c763b68f474963c1bb20c31540d801dbd4de16b3b00744a937773c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1f3aebcb5b203e621a7da2cebcac931285e3c2a8",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Gal/Variant214afd01a9c763b68f474963c1bb20c31540d801dbd4de16b3b00744a937773c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Gal/Variant214afd01a9c763b68f474963c1bb20c31540d801dbd4de16b3b00744a937773c.lean/index.md) · [Full source](../../../../mathematics/Algebra/Gal/Variant214afd01a9c763b68f474963c1bb20c31540d801dbd4de16b3b00744a937773c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1f3aebcb5b203e621a7da2cebcac931285e3c2a8`.

Source path: `GRWTSK/Algebra/Gal/Variant214afd01a9c763b68f474963c1bb20c31540d801dbd4de16b3b00744a937773c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Gal/Variant214afd01a9c763b68f474963c1bb20c31540d801dbd4de16b3b00744a937773c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Cyclotomic.PrimitiveRoots` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.PolynomialGaloisGroup` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [autToPow_injective](../../../../mathematics/Algebra/Gal/Variant214afd01a9c763b68f474963c1bb20c31540d801dbd4de16b3b00744a937773c.lean/declarations/auttopow-injective--7e1ee01a6c2ad771e0fec5b3.md) | 63 | `result-track:7e1ee01a6c2ad771e0fec5b36fa176b2d744d90dedfddfc1cdabe726fe46256d` |
| 2 | `def` | [Aut.commGroup](../../../../mathematics/Algebra/Gal/Variant214afd01a9c763b68f474963c1bb20c31540d801dbd4de16b3b00744a937773c.lean/declarations/aut-commgroup--edf75b8487e91f02a62fab0f.md) | 101 | `declaration-track:edf75b8487e91f02a62fab0f50a5586337079be0409a512d6b379a9af5a4de40` |
| 3 | `def` | [autEquivPow](../../../../mathematics/Algebra/Gal/Variant214afd01a9c763b68f474963c1bb20c31540d801dbd4de16b3b00744a937773c.lean/declarations/autequivpow--ce8006196ca1eff7501d0f9e.md) | 111 | `declaration-track:ce8006196ca1eff7501d0f9e191981175b1f0b8018cec1970c73ab2e1be42b33` |
| 4 | `def` | [fromZetaAut](../../../../mathematics/Algebra/Gal/Variant214afd01a9c763b68f474963c1bb20c31540d801dbd4de16b3b00744a937773c.lean/declarations/fromzetaaut--b6a81e041e3d3f5e986f05e1.md) | 156 | `declaration-track:b6a81e041e3d3f5e986f05e1fa343ded11d1898265dc50516ce83cbe46a3fe39` |
| 5 | `theorem` | [fromZetaAut_spec](../../../../mathematics/Algebra/Gal/Variant214afd01a9c763b68f474963c1bb20c31540d801dbd4de16b3b00744a937773c.lean/declarations/fromzetaaut-spec--64935ff5f120f0edf692248e.md) | 163 | `result-track:64935ff5f120f0edf692248e551bfc285aa45219ce5b88986737ca239666984e` |
| 6 | `def` | [galCyclotomicEquivUnitsZMod](../../../../mathematics/Algebra/Gal/Variant214afd01a9c763b68f474963c1bb20c31540d801dbd4de16b3b00744a937773c.lean/declarations/galcyclotomicequivunitszmod--c2fcd6c0a50145b1235a3142.md) | 184 | `declaration-track:c2fcd6c0a50145b1235a31424b8f3dea0d5c70a10539a601abc43dae7f20a91f` |
| 7 | `def` | [galXPowEquivUnitsZMod](../../../../mathematics/Algebra/Gal/Variant214afd01a9c763b68f474963c1bb20c31540d801dbd4de16b3b00744a937773c.lean/declarations/galxpowequivunitszmod--ef9224f467dd247a5a425774.md) | 193 | `declaration-track:ef9224f467dd247a5a42577445043288455247a0a5f3f456668d8e4a6efa02f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
