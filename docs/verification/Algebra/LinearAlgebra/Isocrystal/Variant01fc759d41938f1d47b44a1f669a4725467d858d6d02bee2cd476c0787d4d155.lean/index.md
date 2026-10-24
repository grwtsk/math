# Verification target: GRWTSK.Algebra.LinearAlgebra.Isocrystal.Variant01fc759d41938f1d47b44a1f669a4725467d858d6d02bee2cd476c0787d4d155

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c7da4e51559fe33b1a28cf30d1d25bb8b1f312c3",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Isocrystal/Variant01fc759d41938f1d47b44a1f669a4725467d858d6d02bee2cd476c0787d4d155.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variant01fc759d41938f1d47b44a1f669a4725467d858d6d02bee2cd476c0787d4d155.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variant01fc759d41938f1d47b44a1f669a4725467d858d6d02bee2cd476c0787d4d155.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c7da4e51559fe33b1a28cf30d1d25bb8b1f312c3`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Isocrystal/Variant01fc759d41938f1d47b44a1f669a4725467d858d6d02bee2cd476c0787d4d155.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Isocrystal/Variant01fc759d41938f1d47b44a1f669a4725467d858d6d02bee2cd476c0787d4d155.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.WittVector.FrobeniusFractionField` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FractionRing.frobenius](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variant01fc759d41938f1d47b44a1f669a4725467d858d6d02bee2cd476c0787d4d155.lean/declarations/fractionring-frobenius--dc67922ade4928a74431d7ed.md) | 75 | `declaration-track:dc67922ade4928a74431d7edefe2ab14104f1dd4658a2816bb060b4d02ba771c` |
| 2 | `def` | [FractionRing.frobeniusRingHom](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variant01fc759d41938f1d47b44a1f669a4725467d858d6d02bee2cd476c0787d4d155.lean/declarations/fractionring-frobeniusringhom--e3979b31ae51bbe35a833182.md) | 80 | `declaration-track:e3979b31ae51bbe35a833182f8b91158dabfdf60cd209dec370f994ac288c0ea` |
| 3 | `instance` | [inv_pair₁](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variant01fc759d41938f1d47b44a1f669a4725467d858d6d02bee2cd476c0787d4d155.lean/declarations/inv-pair--e4e6277604228299e6f7b4b8.md) | 86 | `declaration-track:e4e6277604228299e6f7b4b8bbba9816afed07d92a19c0efddf57ca35c36ded0` |
| 4 | `instance` | [inv_pair₂](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variant01fc759d41938f1d47b44a1f669a4725467d858d6d02bee2cd476c0787d4d155.lean/declarations/inv-pair--0865ec2447b3439434516be6.md) | 89 | `declaration-track:0865ec2447b3439434516be6cff1ef2fc80844a28e087202f808bd43830f0f49` |
| 5 | `class` | [Isocrystal](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variant01fc759d41938f1d47b44a1f669a4725467d858d6d02bee2cd476c0787d4d155.lean/declarations/isocrystal--362cc821a59b33b568bbd97b.md) | 109 | `declaration-track:362cc821a59b33b568bbd97b999fd5a8f8e2ecb635820274224ab4f4db71a556` |
| 6 | `def` | [Isocrystal.frobenius](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variant01fc759d41938f1d47b44a1f669a4725467d858d6d02bee2cd476c0787d4d155.lean/declarations/isocrystal-frobenius--3a40d8e93e7f8077ef5a45a4.md) | 121 | `declaration-track:3a40d8e93e7f8077ef5a45a47b38dafbac0c70afcc83942c957d984738011408` |
| 7 | `structure` | [IsocrystalHom](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variant01fc759d41938f1d47b44a1f669a4725467d858d6d02bee2cd476c0787d4d155.lean/declarations/isocrystalhom--976ce5a9dcfdf60bcd3f6235.md) | 128 | `declaration-track:976ce5a9dcfdf60bcd3f623587a18f98533fa28c84bf7131d936f0244f760de8` |
| 8 | `structure` | [IsocrystalEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variant01fc759d41938f1d47b44a1f669a4725467d858d6d02bee2cd476c0787d4d155.lean/declarations/isocrystalequiv--ef58cd97adb45a0e0b6f6c9d.md) | 134 | `declaration-track:ef58cd97adb45a0e0b6f6c9d9beeb7887c7f9f897f823db10b1eceae8b372204` |
| 9 | `def` | [StandardOneDimIsocrystal](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variant01fc759d41938f1d47b44a1f669a4725467d858d6d02bee2cd476c0787d4d155.lean/declarations/standardonedimisocrystal--359be8da3216859e9ac73d20.md) | 153 | `declaration-track:359be8da3216859e9ac73d2004db9d10537d24d430c80cc7787500c134bc7b5b` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variant01fc759d41938f1d47b44a1f669a4725467d858d6d02bee2cd476c0787d4d155.lean/declarations/instance--8810708b965142579dcc04c2.md) | 160 | `declaration-track:8810708b965142579dcc04c244f8457ba87970d4eb7586055dde406d67ee92d9` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variant01fc759d41938f1d47b44a1f669a4725467d858d6d02bee2cd476c0787d4d155.lean/declarations/instance--fe92bf20d13712a4fbdfaa01.md) | 162 | `declaration-track:fe92bf20d13712a4fbdfaa01e4b47562faa2d1154e540791add5920bb3ae0e12` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variant01fc759d41938f1d47b44a1f669a4725467d858d6d02bee2cd476c0787d4d155.lean/declarations/instance--9bf9498d6cce6a61084bcbfc.md) | 172 | `declaration-track:9bf9498d6cce6a61084bcbfc154aa86f26a93646253d6966cc56419f703ece4e` |
| 13 | `theorem` | [StandardOneDimIsocrystal.frobenius_apply](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variant01fc759d41938f1d47b44a1f669a4725467d858d6d02bee2cd476c0787d4d155.lean/declarations/standardonedimisocrystal-frobenius-apply--c5c1e1937254e4169bbedf2e.md) | 178 | `result-track:c5c1e1937254e4169bbedf2ed7bbe9b2dda7e9198eb1fb3e435cece76ab9b3b9` |
| 14 | `theorem` | [isocrystal_classification](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variant01fc759d41938f1d47b44a1f669a4725467d858d6d02bee2cd476c0787d4d155.lean/declarations/isocrystal-classification--8f053ea9a5a05ee7d13698b9.md) | 185 | `result-track:8f053ea9a5a05ee7d13698b9a365a246348f4528b09c795ab921192245ffb08b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
