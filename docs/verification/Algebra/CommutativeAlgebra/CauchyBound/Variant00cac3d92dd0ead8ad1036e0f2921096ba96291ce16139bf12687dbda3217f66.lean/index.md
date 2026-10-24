# Verification target: GRWTSK.Algebra.CommutativeAlgebra.CauchyBound.Variant00cac3d92dd0ead8ad1036e0f2921096ba96291ce16139bf12687dbda3217f66

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7e4e07ea670c04a05919f999258655a035e6e4c9",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/CauchyBound/Variant00cac3d92dd0ead8ad1036e0f2921096ba96291ce16139bf12687dbda3217f66.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/CauchyBound/Variant00cac3d92dd0ead8ad1036e0f2921096ba96291ce16139bf12687dbda3217f66.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/CauchyBound/Variant00cac3d92dd0ead8ad1036e0f2921096ba96291ce16139bf12687dbda3217f66.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7e4e07ea670c04a05919f999258655a035e6e4c9`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/CauchyBound/Variant00cac3d92dd0ead8ad1036e0f2921096ba96291ce16139bf12687dbda3217f66.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/CauchyBound/Variant00cac3d92dd0ead8ad1036e0f2921096ba96291ce16139bf12687dbda3217f66.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GeomSum` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Monic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Field.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cauchyBound](../../../../../mathematics/Algebra/CommutativeAlgebra/CauchyBound/Variant00cac3d92dd0ead8ad1036e0f2921096ba96291ce16139bf12687dbda3217f66.lean/declarations/cauchybound--28f919e04a2b5c77b0e89c30.md) | 29 | `declaration-track:28f919e04a2b5c77b0e89c3068ed38613acc934d918768b2c150b5d7793cdc45` |
| 2 | `lemma` | [one_le_cauchyBound](../../../../../mathematics/Algebra/CommutativeAlgebra/CauchyBound/Variant00cac3d92dd0ead8ad1036e0f2921096ba96291ce16139bf12687dbda3217f66.lean/declarations/one-le-cauchybound--9b67bce2fde5f3641bd86bdd.md) | 33 | `result-track:9b67bce2fde5f3641bd86bdd0285f39968cb9a93cf99c3bd89084118d87ad866` |
| 3 | `lemma` | [cauchyBound_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/CauchyBound/Variant00cac3d92dd0ead8ad1036e0f2921096ba96291ce16139bf12687dbda3217f66.lean/declarations/cauchybound-zero--ac0cfa2c8f1a9944a4b040ca.md) | 37 | `result-track:ac0cfa2c8f1a9944a4b040cac840a9365b08b80c7ee86dc7178d6c4a64ff51fa` |
| 4 | `lemma` | [cauchyBound_C](../../../../../mathematics/Algebra/CommutativeAlgebra/CauchyBound/Variant00cac3d92dd0ead8ad1036e0f2921096ba96291ce16139bf12687dbda3217f66.lean/declarations/cauchybound-c--6df2dbe7fb2080d01f609836.md) | 41 | `result-track:6df2dbe7fb2080d01f609836f10ae80f6159df27382e21debd2eb39ad601bf00` |
| 5 | `lemma` | [cauchyBound_one](../../../../../mathematics/Algebra/CommutativeAlgebra/CauchyBound/Variant00cac3d92dd0ead8ad1036e0f2921096ba96291ce16139bf12687dbda3217f66.lean/declarations/cauchybound-one--fb2b74a444303dbe5035a17e.md) | 45 | `result-track:fb2b74a444303dbe5035a17ece14fee8b5da2f32e527d1809b87b121ad5901af` |
| 6 | `lemma` | [cauchyBound_X](../../../../../mathematics/Algebra/CommutativeAlgebra/CauchyBound/Variant00cac3d92dd0ead8ad1036e0f2921096ba96291ce16139bf12687dbda3217f66.lean/declarations/cauchybound-x--5fa01b3b7619098118013e6a.md) | 48 | `result-track:5fa01b3b7619098118013e6a3abd558590d3e5f99e552e8ec80e68f376ae0fdb` |
| 7 | `lemma` | [cauchyBound_X_add_C](../../../../../mathematics/Algebra/CommutativeAlgebra/CauchyBound/Variant00cac3d92dd0ead8ad1036e0f2921096ba96291ce16139bf12687dbda3217f66.lean/declarations/cauchybound-x-add-c--c663625e877c7815e1e136d0.md) | 52 | `result-track:c663625e877c7815e1e136d0742b38c28c809f8d95c6351b5c9d8ccebd89d89a` |
| 8 | `lemma` | [cauchyBound_X_sub_C](../../../../../mathematics/Algebra/CommutativeAlgebra/CauchyBound/Variant00cac3d92dd0ead8ad1036e0f2921096ba96291ce16139bf12687dbda3217f66.lean/declarations/cauchybound-x-sub-c--14e2774ea17c44b8b7f21925.md) | 56 | `result-track:14e2774ea17c44b8b7f219256a6eddebf24ed1507968d79fc81c92133fab890b` |
| 9 | `lemma` | [cauchyBound_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/CauchyBound/Variant00cac3d92dd0ead8ad1036e0f2921096ba96291ce16139bf12687dbda3217f66.lean/declarations/cauchybound-smul--ee3e77b7ce4fa03a347e49ef.md) | 60 | `result-track:ee3e77b7ce4fa03a347e49ef9c03d23434389732ea0d66ad2f9a181f22daaaa8` |
| 10 | `theorem` | [IsRoot.norm_lt_cauchyBound](../../../../../mathematics/Algebra/CommutativeAlgebra/CauchyBound/Variant00cac3d92dd0ead8ad1036e0f2921096ba96291ce16139bf12687dbda3217f66.lean/declarations/isroot-norm-lt-cauchybound--2d77a0557f97887e7b11f39d.md) | 70 | `result-track:2d77a0557f97887e7b11f39d48eea18a0ac649e003d41c9ff0408d4ebcb639f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
