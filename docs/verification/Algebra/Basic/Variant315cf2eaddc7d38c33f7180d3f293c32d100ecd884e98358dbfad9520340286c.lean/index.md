# Verification target: GRWTSK.Algebra.Basic.Variant315cf2eaddc7d38c33f7180d3f293c32d100ecd884e98358dbfad9520340286c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "402585f02e6b591a81e9f1b62194b2d2e40cc699",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant315cf2eaddc7d38c33f7180d3f293c32d100ecd884e98358dbfad9520340286c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant315cf2eaddc7d38c33f7180d3f293c32d100ecd884e98358dbfad9520340286c.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant315cf2eaddc7d38c33f7180d3f293c32d100ecd884e98358dbfad9520340286c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `402585f02e6b591a81e9f1b62194b2d2e40cc699`.

Source path: `GRWTSK/Algebra/Basic/Variant315cf2eaddc7d38c33f7180d3f293c32d100ecd884e98358dbfad9520340286c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant315cf2eaddc7d38c33f7180d3f293c32d100ecd884e98358dbfad9520340286c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Coalgebra.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Bialgebra](../../../../mathematics/Algebra/Basic/Variant315cf2eaddc7d38c33f7180d3f293c32d100ecd884e98358dbfad9520340286c.lean/declarations/bialgebra--539b3d11c95880abc2d7ad7e.md) | 63 | `declaration-track:539b3d11c95880abc2d7ad7ec8c9f2bb6159d2b79e00c4b0258dab9b58735e9c` |
| 2 | `lemma` | [counit_mul](../../../../mathematics/Algebra/Basic/Variant315cf2eaddc7d38c33f7180d3f293c32d100ecd884e98358dbfad9520340286c.lean/declarations/counit-mul--8116edee623de809bae44ab3.md) | 99 | `result-track:8116edee623de809bae44ab3f4cca8113f83221a6ca34f72df275830f106f864` |
| 3 | `lemma` | [comul_mul](../../../../mathematics/Algebra/Basic/Variant315cf2eaddc7d38c33f7180d3f293c32d100ecd884e98358dbfad9520340286c.lean/declarations/comul-mul--eb46fd94153b493677bfbb87.md) | 102 | `result-track:eb46fd94153b493677bfbb8702b43866696cce6e3b3aca95ac17b36c3deb5cda` |
| 4 | `def` | [mk'](../../../../mathematics/Algebra/Basic/Variant315cf2eaddc7d38c33f7180d3f293c32d100ecd884e98358dbfad9520340286c.lean/declarations/mk--ecf60981cf1bd79e34dfdaf7.md) | 112 | `declaration-track:ecf60981cf1bd79e34dfdaf7b8e482da6ba31f026c3edb4e5c6549ffab8c8744` |
| 5 | `def` | [counitAlgHom](../../../../mathematics/Algebra/Basic/Variant315cf2eaddc7d38c33f7180d3f293c32d100ecd884e98358dbfad9520340286c.lean/declarations/counitalghom--2c9bfe8bc7493a1bef91dea3.md) | 127 | `declaration-track:2c9bfe8bc7493a1bef91dea3e2dfbdee8332d5cff5e42a72782ae45bf39111e0` |
| 6 | `def` | [comulAlgHom](../../../../mathematics/Algebra/Basic/Variant315cf2eaddc7d38c33f7180d3f293c32d100ecd884e98358dbfad9520340286c.lean/declarations/comulalghom--68066eb1a632293bbc584dce.md) | 132 | `declaration-track:68066eb1a632293bbc584dce7bd89b8a93b633ccf9aad8d75c21815bc76a2378` |
| 7 | `lemma` | [counit_algebraMap](../../../../mathematics/Algebra/Basic/Variant315cf2eaddc7d38c33f7180d3f293c32d100ecd884e98358dbfad9520340286c.lean/declarations/counit-algebramap--b36cca8d5edad6647797e131.md) | 137 | `result-track:b36cca8d5edad6647797e131a16de987a9586ad554a04d17024a5b58eea6132f` |
| 8 | `lemma` | [comul_algebraMap](../../../../mathematics/Algebra/Basic/Variant315cf2eaddc7d38c33f7180d3f293c32d100ecd884e98358dbfad9520340286c.lean/declarations/comul-algebramap--94327dbe1cb40814e1659db4.md) | 140 | `result-track:94327dbe1cb40814e1659db4e31c7132c65da77e45ac73e9034993d8974aa456` |
| 9 | `lemma` | [counit_natCast](../../../../mathematics/Algebra/Basic/Variant315cf2eaddc7d38c33f7180d3f293c32d100ecd884e98358dbfad9520340286c.lean/declarations/counit-natcast--12a0fff51811f9984ecfc071.md) | 144 | `result-track:12a0fff51811f9984ecfc07189f9b214dbc54e04d9c616979b1e6eea07f0442f` |
| 10 | `lemma` | [comul_natCast](../../../../mathematics/Algebra/Basic/Variant315cf2eaddc7d38c33f7180d3f293c32d100ecd884e98358dbfad9520340286c.lean/declarations/comul-natcast--a2143e599c6e2b0338334263.md) | 147 | `result-track:a2143e599c6e2b0338334263c78cf6cb22dc49490029bbbc210f6786bac40f70` |
| 11 | `lemma` | [counit_pow](../../../../mathematics/Algebra/Basic/Variant315cf2eaddc7d38c33f7180d3f293c32d100ecd884e98358dbfad9520340286c.lean/declarations/counit-pow--8086b7eefad1613ef93b8ecf.md) | 150 | `result-track:8086b7eefad1613ef93b8ecf59bcf4faf31063d6c9f6f4a5fcd6815a11412214` |
| 12 | `lemma` | [comul_pow](../../../../mathematics/Algebra/Basic/Variant315cf2eaddc7d38c33f7180d3f293c32d100ecd884e98358dbfad9520340286c.lean/declarations/comul-pow--d93cf1e7d44cd26111339156.md) | 153 | `result-track:d93cf1e7d44cd261113391563e5b63ac0818a77fa46d6e2440ded48b9ef9ed9b` |
| 13 | `instance` | [toBialgebra](../../../../mathematics/Algebra/Basic/Variant315cf2eaddc7d38c33f7180d3f293c32d100ecd884e98358dbfad9520340286c.lean/declarations/tobialgebra--0cbc77b7d70825ff088ad1f8.md) | 165 | `declaration-track:0cbc77b7d70825ff088ad1f8229dfa8bd960e875d7882fc832e970871b811713` |
| 14 | `abbrev` | [ofAlgHom](../../../../mathematics/Algebra/Basic/Variant315cf2eaddc7d38c33f7180d3f293c32d100ecd884e98358dbfad9520340286c.lean/declarations/ofalghom--a8a8edd25868777b10bd6fd3.md) | 182 | `declaration-track:a8a8edd25868777b10bd6fd35320942854b2d43176f0ecfed4b2e4d87db87ec9` |
| 15 | `lemma` | [algebraMap_injective](../../../../mathematics/Algebra/Basic/Variant315cf2eaddc7d38c33f7180d3f293c32d100ecd884e98358dbfad9520340286c.lean/declarations/algebramap-injective--1fd47b021739166c6a4f56ef.md) | 206 | `result-track:1fd47b021739166c6a4f56ef11ec65d4d5d0eac25bb60f83d894d2ff7e8487ab` |
| 16 | `lemma` | [counit_surjective](../../../../mathematics/Algebra/Basic/Variant315cf2eaddc7d38c33f7180d3f293c32d100ecd884e98358dbfad9520340286c.lean/declarations/counit-surjective--233d94984796548f19369ca6.md) | 208 | `result-track:233d94984796548f19369ca6f33191873cf8df87860348c5520a34254f22d6ae` |
| 17 | `lemma` | [nontrivial](../../../../mathematics/Algebra/Basic/Variant315cf2eaddc7d38c33f7180d3f293c32d100ecd884e98358dbfad9520340286c.lean/declarations/nontrivial--7d5aba848f226ed3592784e5.md) | 214 | `result-track:7d5aba848f226ed3592784e5a025ef22c736bb05b8fa9e4ca31ccf59beaa87ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
