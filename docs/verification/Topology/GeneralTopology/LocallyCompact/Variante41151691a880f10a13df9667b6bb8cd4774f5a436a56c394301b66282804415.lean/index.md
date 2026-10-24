# Verification target: GRWTSK.Topology.GeneralTopology.LocallyCompact.Variante41151691a880f10a13df9667b6bb8cd4774f5a436a56c394301b66282804415

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1a30d89f13331687b218c27f3fa5d6f773087fd9",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LocallyCompact/Variante41151691a880f10a13df9667b6bb8cd4774f5a436a56c394301b66282804415.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variante41151691a880f10a13df9667b6bb8cd4774f5a436a56c394301b66282804415.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variante41151691a880f10a13df9667b6bb8cd4774f5a436a56c394301b66282804415.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1a30d89f13331687b218c27f3fa5d6f773087fd9`.

Source path: `GRWTSK/Topology/GeneralTopology/LocallyCompact/Variante41151691a880f10a13df9667b6bb8cd4774f5a436a56c394301b66282804415.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LocallyCompact/Variante41151691a880f10a13df9667b6bb8cd4774f5a436a56c394301b66282804415.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Field.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Field.ProperSpace` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DiscreteValuationRing.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.IsPrincipalPowQuotient` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Valuation.Archimedean` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Valued.NormedValued` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Valued.ValuedField` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [NormedField.v_eq_valuation](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variante41151691a880f10a13df9667b6bb8cd4774f5a436a56c394301b66282804415.lean/declarations/normedfield-v-eq-valuation--b44273dbc98c93aa51031b8d.md) | 41 | `result-track:b44273dbc98c93aa51031b8d57c02f202ce0c5bdefb917d26258172b8eed092c` |
| 2 | `lemma` | [mem_iff](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variante41151691a880f10a13df9667b6bb8cd4774f5a436a56c394301b66282804415.lean/declarations/mem-iff--f7096ab6f1ba3af63c75ce4b.md) | 49 | `result-track:f7096ab6f1ba3af63c75ce4b6ebac8b1d0456382bd62add214dee4a01ac5bd97` |
| 3 | `lemma` | [norm_le_one](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variante41151691a880f10a13df9667b6bb8cd4774f5a436a56c394301b66282804415.lean/declarations/norm-le-one--72669108548f79d537cfe930.md) | 52 | `result-track:72669108548f79d537cfe93025f1ef99c73fc15ea8c70398367dab1654b5b7a1` |
| 4 | `lemma` | [norm_coe_unit](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variante41151691a880f10a13df9667b6bb8cd4774f5a436a56c394301b66282804415.lean/declarations/norm-coe-unit--cc292696fe8af81c05bad512.md) | 55 | `result-track:cc292696fe8af81c05bad5126502417f31116dffd033eb301ad85859f064f120` |
| 5 | `lemma` | [norm_unit](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variante41151691a880f10a13df9667b6bb8cd4774f5a436a56c394301b66282804415.lean/declarations/norm-unit--655634913147d00d9c7d3796.md) | 59 | `result-track:655634913147d00d9c7d3796e23406efc3872c8fce1d968e9b399e40ed6a34f8` |
| 6 | `lemma` | [isUnit_iff_norm_eq_one](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variante41151691a880f10a13df9667b6bb8cd4774f5a436a56c394301b66282804415.lean/declarations/isunit-iff-norm-eq-one--9801210ac2e4f83cf6cfceb8.md) | 62 | `result-track:9801210ac2e4f83cf6cfceb8556164c4cb231f1ab4126c226ec6be081e933fa4` |
| 7 | `lemma` | [norm_irreducible_lt_one](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variante41151691a880f10a13df9667b6bb8cd4774f5a436a56c394301b66282804415.lean/declarations/norm-irreducible-lt-one--1ff2f51a0a30853573fac7de.md) | 66 | `result-track:1ff2f51a0a30853573fac7deb715b7cecfe640e7fe6141354437b25f41fff2bf` |
| 8 | `lemma` | [norm_irreducible_pos](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variante41151691a880f10a13df9667b6bb8cd4774f5a436a56c394301b66282804415.lean/declarations/norm-irreducible-pos--c5eb6349cef865518f3ad39c.md) | 69 | `result-track:c5eb6349cef865518f3ad39c545255245615157ed7b6d47afd177c86b32c25a4` |
| 9 | `lemma` | [coe_span_singleton_eq_closedBall](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variante41151691a880f10a13df9667b6bb8cd4774f5a436a56c394301b66282804415.lean/declarations/coe-span-singleton-eq-closedball--bf5ec440ec47700b1009b38d.md) | 72 | `result-track:bf5ec440ec47700b1009b38db564e4cdde1099d0cbf2a6b326842e7712b3bd7a` |
| 10 | `lemma` | [_root_.GRWTSK.Topology.GeneralTopology.NormedFieldVEqValuation.Variant2f5156db72f830f4b0a58a52ad17141fa7541ae13d2c8bb435e0a7b1fe61331c.Irreducible.maximalIdeal_eq_closedBall](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variante41151691a880f10a13df9667b6bb8cd4774f5a436a56c394301b66282804415.lean/declarations/root-grwtsk-topology-generaltopology-normedfieldveqvaluation-variant2f51--2d9abd668a3fdd275b4a4ede.md) | 87 | `result-track:2d9abd668a3fdd275b4a4ede9891abddaa82ee49f42919b383fe99c752a89f83` |
| 11 | `lemma` | [_root_.GRWTSK.Topology.GeneralTopology.NormedFieldVEqValuation.Variant2f5156db72f830f4b0a58a52ad17141fa7541ae13d2c8bb435e0a7b1fe61331c.Irreducible.maximalIdeal_pow_eq_closedBall_pow](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variante41151691a880f10a13df9667b6bb8cd4774f5a436a56c394301b66282804415.lean/declarations/root-grwtsk-topology-generaltopology-normedfieldveqvaluation-variant2f51--1026fd60eaef0c1687523c1d.md) | 92 | `result-track:1026fd60eaef0c1687523c1d6bdba563e5c25be7b5d9201536f48f34cbc98815` |
| 12 | `lemma` | [finite_quotient_maximalIdeal_pow_of_finite_residueField](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variante41151691a880f10a13df9667b6bb8cd4774f5a436a56c394301b66282804415.lean/declarations/finite-quotient-maximalideal-pow-of-finite-residuefield--53c2d4e5df07189731d0fe6f.md) | 104 | `result-track:53c2d4e5df07189731d0fe6ffff2e338d9e33105abbb10e535ee8268b419f6c5` |
| 13 | `lemma` | [totallyBounded_iff_finite_residueField](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variante41151691a880f10a13df9667b6bb8cd4774f5a436a56c394301b66282804415.lean/declarations/totallybounded-iff-finite-residuefield--ec216e4f5c9b91807fca85de.md) | 122 | `result-track:ec216e4f5c9b91807fca85de0a9624b3583d707d486445aab2f7d53e3453204f` |
| 14 | `lemma` | [exists_norm_coe_lt_one](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variante41151691a880f10a13df9667b6bb8cd4774f5a436a56c394301b66282804415.lean/declarations/exists-norm-coe-lt-one--978cc300b1f1d69c6003ff73.md) | 167 | `result-track:978cc300b1f1d69c6003ff7367d446d366ed2f5405806d2ef565b5e4c1fffc10` |
| 15 | `lemma` | [exists_norm_lt_one](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variante41151691a880f10a13df9667b6bb8cd4774f5a436a56c394301b66282804415.lean/declarations/exists-norm-lt-one--6ea71d4a0fc449079f50edf9.md) | 173 | `result-track:6ea71d4a0fc449079f50edf9f195ede9c4db0cbe1c2bb14484ee84e75a428553` |
| 16 | `lemma` | [exists_nnnorm_lt_one](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variante41151691a880f10a13df9667b6bb8cd4774f5a436a56c394301b66282804415.lean/declarations/exists-nnnorm-lt-one--a77acc09b106cbbefd1c4a0b.md) | 177 | `result-track:a77acc09b106cbbefd1c4a0bf1741186038c50a84aac62e8e82998f54b107add` |
| 17 | `lemma` | [isPrincipalIdealRing_of_compactSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variante41151691a880f10a13df9667b6bb8cd4774f5a436a56c394301b66282804415.lean/declarations/isprincipalidealring-of-compactspace--ead68776e3205b555882371c.md) | 180 | `result-track:ead68776e3205b555882371cb1f0ed01081860cb2611d5570ddbc93a5150eefb` |
| 18 | `lemma` | [isDiscreteValuationRing_of_compactSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variante41151691a880f10a13df9667b6bb8cd4774f5a436a56c394301b66282804415.lean/declarations/isdiscretevaluationring-of-compactspace--53bffa73081587e699ae5ba6.md) | 286 | `result-track:53bffa73081587e699ae5ba635c099369dff900076ec6fe8a70c0fc1bd20e4df` |
| 19 | `lemma` | [compactSpace_iff_completeSpace_and_isDiscreteValuationRing_and_finite_residueField](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variante41151691a880f10a13df9667b6bb8cd4774f5a436a56c394301b66282804415.lean/declarations/compactspace-iff-completespace-and-isdiscretevaluationring-and-finite-re--a34e60860a277afc081e68d8.md) | 312 | `result-track:a34e60860a277afc081e68d8050a55933f69dfc3011cdcdeccd5542e77a58220` |
| 20 | `lemma` | [properSpace_iff_compactSpace_integer](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variante41151691a880f10a13df9667b6bb8cd4774f5a436a56c394301b66282804415.lean/declarations/properspace-iff-compactspace-integer--3e6b39d89c358e63e2c19b4b.md) | 324 | `result-track:3e6b39d89c358e63e2c19b4b765a856245bc036398ab1d5c47ad331584535bd2` |
| 21 | `lemma` | [properSpace_iff_completeSpace_and_isDiscreteValuationRing_integer_and_finite_residueField](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variante41151691a880f10a13df9667b6bb8cd4774f5a436a56c394301b66282804415.lean/declarations/properspace-iff-completespace-and-isdiscretevaluationring-integer-and-fi--d6e738ed67484cc98085f702.md) | 334 | `result-track:d6e738ed67484cc98085f702f1f211334ac6de3025ab2f5ddac780db02f6d51a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
