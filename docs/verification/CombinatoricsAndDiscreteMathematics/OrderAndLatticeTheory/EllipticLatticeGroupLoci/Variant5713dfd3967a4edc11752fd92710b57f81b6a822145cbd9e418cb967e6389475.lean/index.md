# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.EllipticLatticeGroupLoci.Variant5713dfd3967a4edc11752fd92710b57f81b6a822145cbd9e418cb967e6389475

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b3cdb486cbed8476943cc68ad967269c36980e9",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EllipticLatticeGroupLoci/Variant5713dfd3967a4edc11752fd92710b57f81b6a822145cbd9e418cb967e6389475.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EllipticLatticeGroupLoci/Variant5713dfd3967a4edc11752fd92710b57f81b6a822145cbd9e418cb967e6389475.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EllipticLatticeGroupLoci/Variant5713dfd3967a4edc11752fd92710b57f81b6a822145cbd9e418cb967e6389475.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b3cdb486cbed8476943cc68ad967269c36980e9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EllipticLatticeGroupLoci/Variant5713dfd3967a4edc11752fd92710b57f81b6a822145cbd9e418cb967e6389475.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EllipticLatticeGroupLoci/Variant5713dfd3967a4edc11752fd92710b57f81b6a822145cbd9e418cb967e6389475.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Arithmetic.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Think.SourceTree.Legacy.Arithmetic.EllipticGroupLaw` — import line 7; external provider; requires a separately pinned dependency.
- `Think.SourceTree.Legacy.Arithmetic.BSDRankIdentity` — import line 8; external provider; requires a separately pinned dependency.
- `Think.SourceTree.Legacy.Compression.Lookup` — import line 9; external provider; requires a separately pinned dependency.
- `Think.SourceTree.Legacy.Compression.Rewrite` — import line 10; external provider; requires a separately pinned dependency.
- `Think.SourceTree.Legacy.Compression.NormalForm` — import line 11; external provider; requires a separately pinned dependency.
- `Think.SourceTree.Legacy.Compression.LatticeGroupLoci` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [EllipticLocusAssignment](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EllipticLatticeGroupLoci/Variant5713dfd3967a4edc11752fd92710b57f81b6a822145cbd9e418cb967e6389475.lean/declarations/ellipticlocusassignment--b50af421a4da883bdf1718af.md) | 28 | `declaration-track:b50af421a4da883bdf1718afac746bc533b5f85f7c74a6b6683c996092abe9ab` |
| 2 | `inductive` | [EllipticLatticeGroupLocusMoveClass](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EllipticLatticeGroupLoci/Variant5713dfd3967a4edc11752fd92710b57f81b6a822145cbd9e418cb967e6389475.lean/declarations/ellipticlatticegrouplocusmoveclass--b5c7188e6932d9ff6b018e1f.md) | 41 | `declaration-track:b5c7188e6932d9ff6b018e1f1c3abb586f73096013eec2d9671ea2796688f1ba` |
| 3 | `structure` | [PreservesEllipticLatticeGroupLoci](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EllipticLatticeGroupLoci/Variant5713dfd3967a4edc11752fd92710b57f81b6a822145cbd9e418cb967e6389475.lean/declarations/preservesellipticlatticegrouploci--ccc24116e2d34442dcf8233f.md) | 48 | `declaration-track:ccc24116e2d34442dcf8233fe73d69d9dcf2f1346d514eae171d5f66fe9ca901` |
| 4 | `def` | [sampleCompressedString](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EllipticLatticeGroupLoci/Variant5713dfd3967a4edc11752fd92710b57f81b6a822145cbd9e418cb967e6389475.lean/declarations/samplecompressedstring--a1e7980abe848d60ea879d0d.md) | 72 | `declaration-track:a1e7980abe848d60ea879d0d02dc1a77c1fb689bd0e02a1d3a0dd88304ea8bf9` |
| 5 | `def` | [sampleSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EllipticLatticeGroupLoci/Variant5713dfd3967a4edc11752fd92710b57f81b6a822145cbd9e418cb967e6389475.lean/declarations/sampleslice--41cdbb213f3397d9c0a31b9e.md) | 76 | `declaration-track:41cdbb213f3397d9c0a31b9e2eb4b500acf127288e74d39cdd87210ee6d59bec` |
| 6 | `def` | [sampleResidueAtoms](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EllipticLatticeGroupLoci/Variant5713dfd3967a4edc11752fd92710b57f81b6a822145cbd9e418cb967e6389475.lean/declarations/sampleresidueatoms--79d6aa115e9b4a09e7c5f46b.md) | 89 | `declaration-track:79d6aa115e9b4a09e7c5f46b92451af737a28da35eb752075759cfec4306c1fc` |
| 7 | `def` | [sampleEllipticAssignment](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EllipticLatticeGroupLoci/Variant5713dfd3967a4edc11752fd92710b57f81b6a822145cbd9e418cb967e6389475.lean/declarations/sampleellipticassignment--e11a7cd17ae403859e6f9346.md) | 96 | `declaration-track:e11a7cd17ae403859e6f934611854af8f39d6580f8d802590a7d543aa977c564` |
| 8 | `theorem` | [sample_assignment_curve_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EllipticLatticeGroupLoci/Variant5713dfd3967a4edc11752fd92710b57f81b6a822145cbd9e418cb967e6389475.lean/declarations/sample-assignment-curve-id--f8d28ce7de2405274021dadc.md) | 106 | `result-track:f8d28ce7de2405274021dadcb1e1a03195a4d0ae8d645f5a176a150da2d35c10` |
| 9 | `theorem` | [sample_assignment_identity_label](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EllipticLatticeGroupLoci/Variant5713dfd3967a4edc11752fd92710b57f81b6a822145cbd9e418cb967e6389475.lean/declarations/sample-assignment-identity-label--b5eeefa2996b61ca188bd5c9.md) | 110 | `result-track:b5eeefa2996b61ca188bd5c9f09ad36faa260bfe59026b9af2369ca2bf644350` |
| 10 | `theorem` | [sample_assignment_group_law_atom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EllipticLatticeGroupLoci/Variant5713dfd3967a4edc11752fd92710b57f81b6a822145cbd9e418cb967e6389475.lean/declarations/sample-assignment-group-law-atom--ae5a470fcf238d1440756f3e.md) | 115 | `result-track:ae5a470fcf238d1440756f3e6f4bc5cc9e9ac924d4013cfce47cf068b9583c18` |
| 11 | `theorem` | [elliptic_lattice_group_loci_refl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EllipticLatticeGroupLoci/Variant5713dfd3967a4edc11752fd92710b57f81b6a822145cbd9e418cb967e6389475.lean/declarations/elliptic-lattice-group-loci-refl--629fdb7c50fabfd162830b58.md) | 120 | `result-track:629fdb7c50fabfd162830b584123a8e3d78c9d7ff58f01a16b3aa8ba83a3574b` |
| 12 | `theorem` | [elliptic_lattice_group_loci_preserves_residue](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EllipticLatticeGroupLoci/Variant5713dfd3967a4edc11752fd92710b57f81b6a822145cbd9e418cb967e6389475.lean/declarations/elliptic-lattice-group-loci-preserves-residue--f6a4fa758a8b45baa87304c0.md) | 134 | `result-track:f6a4fa758a8b45baa87304c0fd4cc59b83124627d8cdf95ee4297a63c89d79d8` |
| 13 | `def` | [sampleHasseWeilSurface](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EllipticLatticeGroupLoci/Variant5713dfd3967a4edc11752fd92710b57f81b6a822145cbd9e418cb967e6389475.lean/declarations/samplehasseweilsurface--39450bd83386d6d094ed66a1.md) | 145 | `declaration-track:39450bd83386d6d094ed66a1de70fd50254b56cd781a4ef38f0d55c4d9dd1a0c` |
| 14 | `def` | [sampleBSDRankSurface](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EllipticLatticeGroupLoci/Variant5713dfd3967a4edc11752fd92710b57f81b6a822145cbd9e418cb967e6389475.lean/declarations/samplebsdranksurface--65c7059ad35f70f8727beb8e.md) | 153 | `declaration-track:65c7059ad35f70f8727beb8e6d9ed90a47e4a32b376ac6911f2d4fa70056c8ea` |
| 15 | `theorem` | [mordell_totality_still_residue](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EllipticLatticeGroupLoci/Variant5713dfd3967a4edc11752fd92710b57f81b6a822145cbd9e418cb967e6389475.lean/declarations/mordell-totality-still-residue--4a2f09bd489e1c082ed931a9.md) | 161 | `result-track:4a2f09bd489e1c082ed931a973b361b01e42f4f2d0e5e4a0f6224a744f0599cc` |
| 16 | `theorem` | [bsd_rank_identity_still_residue](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EllipticLatticeGroupLoci/Variant5713dfd3967a4edc11752fd92710b57f81b6a822145cbd9e418cb967e6389475.lean/declarations/bsd-rank-identity-still-residue--3b2993857e7b913c05f713b9.md) | 166 | `result-track:3b2993857e7b913c05f713b9cf1b98843664646deeebb30196269b9fb84d6d84` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
