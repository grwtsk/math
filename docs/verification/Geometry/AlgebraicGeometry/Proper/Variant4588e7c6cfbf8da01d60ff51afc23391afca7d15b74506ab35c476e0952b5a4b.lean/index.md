# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Proper.Variant4588e7c6cfbf8da01d60ff51afc23391afca7d15b74506ab35c476e0952b5a4b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac01bd19788e603b7fb877ab2fddeba6bcbb43e1",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Proper/Variant4588e7c6cfbf8da01d60ff51afc23391afca7d15b74506ab35c476e0952b5a4b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Proper/Variant4588e7c6cfbf8da01d60ff51afc23391afca7d15b74506ab35c476e0952b5a4b.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Proper/Variant4588e7c6cfbf8da01d60ff51afc23391afca7d15b74506ab35c476e0952b5a4b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac01bd19788e603b7fb877ab2fddeba6bcbb43e1`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Proper/Variant4588e7c6cfbf8da01d60ff51afc23391afca7d15b74506ab35c476e0952b5a4b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Proper/Variant4588e7c6cfbf8da01d60ff51afc23391afca7d15b74506ab35c476e0952b5a4b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.Separated` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Morphisms.Finite` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsProper](../../../../../mathematics/Geometry/AlgebraicGeometry/Proper/Variant4588e7c6cfbf8da01d60ff51afc23391afca7d15b74506ab35c476e0952b5a4b.lean/declarations/isproper--049289280b6a9484c557c6e4.md) | 38 | `declaration-track:049289280b6a9484c557c6e46b72e11cdadac2b95c48add0a59a66327627901e` |
| 2 | `lemma` | [isProper_eq](../../../../../mathematics/Geometry/AlgebraicGeometry/Proper/Variant4588e7c6cfbf8da01d60ff51afc23391afca7d15b74506ab35c476e0952b5a4b.lean/declarations/isproper-eq--3e19d58d033088cd03ef1d6c.md) | 40 | `result-track:3e19d58d033088cd03ef1d6c6019cf4ac030e979ae85e7bc82d33d09806ebf82` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Proper/Variant4588e7c6cfbf8da01d60ff51afc23391afca7d15b74506ab35c476e0952b5a4b.lean/declarations/instance--d85bec7141d9bad52643015b.md) | 48 | `declaration-track:d85bec7141d9bad52643015bba4dfabffbc41675c503c0746a217c411e1b1c39` |
| 4 | `instance` | [stableUnderComposition](../../../../../mathematics/Geometry/AlgebraicGeometry/Proper/Variant4588e7c6cfbf8da01d60ff51afc23391afca7d15b74506ab35c476e0952b5a4b.lean/declarations/stableundercomposition--3667fe1460cfdb0c3f87c61b.md) | 52 | `declaration-track:3667fe1460cfdb0c3f87c61b9fb721207d9cb13a171ef9066b9f55a03f5dc480` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Proper/Variant4588e7c6cfbf8da01d60ff51afc23391afca7d15b74506ab35c476e0952b5a4b.lean/declarations/instance--de2f99e0afb31a67d1149921.md) | 56 | `declaration-track:de2f99e0afb31a67d1149921083ec383238f881ce44fa277eea7f63fe723b418` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Proper/Variant4588e7c6cfbf8da01d60ff51afc23391afca7d15b74506ab35c476e0952b5a4b.lean/declarations/instance--bdf66441fd1e6001d65dba5e.md) | 60 | `declaration-track:bdf66441fd1e6001d65dba5ebf424c4b4cf925fd15fc730ce6cf8665f7068930` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Proper/Variant4588e7c6cfbf8da01d60ff51afc23391afca7d15b74506ab35c476e0952b5a4b.lean/declarations/instance--f6e18f2152c8b617abee4336.md) | 62 | `declaration-track:f6e18f2152c8b617abee433681258af396aea3a994afbf3d4ef9e852d0b71638` |
| 8 | `instance` | [isStableUnderBaseChange](../../../../../mathematics/Geometry/AlgebraicGeometry/Proper/Variant4588e7c6cfbf8da01d60ff51afc23391afca7d15b74506ab35c476e0952b5a4b.lean/declarations/isstableunderbasechange--916f4c6792ee55e0aa9d7320.md) | 64 | `declaration-track:916f4c6792ee55e0aa9d7320396914ac0182c0ad5e922f5aaf0a2990dbbd84e8` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Proper/Variant4588e7c6cfbf8da01d60ff51afc23391afca7d15b74506ab35c476e0952b5a4b.lean/declarations/instance--c845ac096d66e72d08f1ed7b.md) | 68 | `declaration-track:c845ac096d66e72d08f1ed7be2f0369d44c7f17e1f83aeb842a28148f086e859` |
| 10 | `lemma` | [IsFinite.eq_isProper_inf_isAffineHom](../../../../../mathematics/Geometry/AlgebraicGeometry/Proper/Variant4588e7c6cfbf8da01d60ff51afc23391afca7d15b74506ab35c476e0952b5a4b.lean/declarations/isfinite-eq-isproper-inf-isaffinehom--01877ec53159ea22cd0d4afc.md) | 74 | `result-track:01877ec53159ea22cd0d4afc103511fbf1db4b0ce9c9c70600f46e6023a83c09` |
| 11 | `lemma` | [IsFinite.iff_isProper_and_isAffineHom](../../../../../mathematics/Geometry/AlgebraicGeometry/Proper/Variant4588e7c6cfbf8da01d60ff51afc23391afca7d15b74506ab35c476e0952b5a4b.lean/declarations/isfinite-iff-isproper-and-isaffinehom--7ca7496823ae231aba85c1a4.md) | 82 | `result-track:7ca7496823ae231aba85c1a4fc148edcaccedb0df315634931b7f5854f64e802` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Proper/Variant4588e7c6cfbf8da01d60ff51afc23391afca7d15b74506ab35c476e0952b5a4b.lean/declarations/instance--e3dc5e372106f241a18be711.md) | 87 | `declaration-track:e3dc5e372106f241a18be711a3d418e9192d6927c8b8c7a01b83a050948aab4d` |
| 13 | `lemma` | [UniversallyClosed.of_comp_of_isSeparated](../../../../../mathematics/Geometry/AlgebraicGeometry/Proper/Variant4588e7c6cfbf8da01d60ff51afc23391afca7d15b74506ab35c476e0952b5a4b.lean/declarations/universallyclosed-of-comp-of-isseparated--037cf65506e49d79461767ee.md) | 91 | `result-track:037cf65506e49d79461767eea085152f6970e8cfa2c2017ffb13f7767469d6f0` |
| 14 | `lemma` | [IsProper.of_comp_of_isSeparated](../../../../../mathematics/Geometry/AlgebraicGeometry/Proper/Variant4588e7c6cfbf8da01d60ff51afc23391afca7d15b74506ab35c476e0952b5a4b.lean/declarations/isproper-of-comp-of-isseparated--7d4d2df649224e317ef8803b.md) | 98 | `result-track:7d4d2df649224e317ef8803b5505fdf6b1f7cd11b3a887cbeabc5f5945ac453f` |
| 15 | `theorem` | [isIntegral_appTop_of_universallyClosed](../../../../../mathematics/Geometry/AlgebraicGeometry/Proper/Variant4588e7c6cfbf8da01d60ff51afc23391afca7d15b74506ab35c476e0952b5a4b.lean/declarations/isintegral-apptop-of-universallyclosed--200e18439ed41828579f02c8.md) | 110 | `result-track:200e18439ed41828579f02c8fb701ff103b78d2e1111400e181119bc2d2b63cd` |
| 16 | `theorem` | [isField_of_universallyClosed](../../../../../mathematics/Geometry/AlgebraicGeometry/Proper/Variant4588e7c6cfbf8da01d60ff51afc23391afca7d15b74506ab35c476e0952b5a4b.lean/declarations/isfield-of-universallyclosed--f9d0c3e27c73439778f0ad7d.md) | 122 | `result-track:f9d0c3e27c73439778f0ad7d9488d7013dca48c83bb7e2c1f9a3270fdbecf38b` |
| 17 | `theorem` | [finite_appTop_of_universallyClosed](../../../../../mathematics/Geometry/AlgebraicGeometry/Proper/Variant4588e7c6cfbf8da01d60ff51afc23391afca7d15b74506ab35c476e0952b5a4b.lean/declarations/finite-apptop-of-universallyclosed--4e75258008757da1c19e40fe.md) | 133 | `result-track:4e75258008757da1c19e40fe0ace207f8e341bcf6796d5fc75e7e2e604e9e999` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
