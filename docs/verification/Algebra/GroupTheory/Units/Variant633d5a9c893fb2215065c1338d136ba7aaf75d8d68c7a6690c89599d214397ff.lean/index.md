# Verification target: GRWTSK.Algebra.GroupTheory.Units.Variant633d5a9c893fb2215065c1338d136ba7aaf75d8d68c7a6690c89599d214397ff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da51a3e707620cea986de57452d03e35f9537f05",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Units/Variant633d5a9c893fb2215065c1338d136ba7aaf75d8d68c7a6690c89599d214397ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Units/Variant633d5a9c893fb2215065c1338d136ba7aaf75d8d68c7a6690c89599d214397ff.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Units/Variant633d5a9c893fb2215065c1338d136ba7aaf75d8d68c7a6690c89599d214397ff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da51a3e707620cea986de57452d03e35f9537f05`.

Source path: `GRWTSK/Algebra/GroupTheory/Units/Variant633d5a9c893fb2215065c1338d136ba7aaf75d8d68c7a6690c89599d214397ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Units/Variant633d5a9c893fb2215065c1338d136ba7aaf75d8d68c7a6690c89599d214397ff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Faithful` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Units/Variant633d5a9c893fb2215065c1338d136ba7aaf75d8d68c7a6690c89599d214397ff.lean/declarations/instance--e53969ee470fb5104f3c7704.md) | 37 | `declaration-track:e53969ee470fb5104f3c77049887f0811c030f101171dc7ee023ca6b41943ef2` |
| 2 | `lemma` | [smul_def](../../../../../mathematics/Algebra/GroupTheory/Units/Variant633d5a9c893fb2215065c1338d136ba7aaf75d8d68c7a6690c89599d214397ff.lean/declarations/smul-def--6b72d7b2827ca2afd3d52d19.md) | 39 | `result-track:6b72d7b2827ca2afd3d52d19163d774187e6895808da15db78e8d03d7a4771d4` |
| 3 | `lemma` | [smul_mk_apply](../../../../../mathematics/Algebra/GroupTheory/Units/Variant633d5a9c893fb2215065c1338d136ba7aaf75d8d68c7a6690c89599d214397ff.lean/declarations/smul-mk-apply--398750206ec1277a3d7a9b47.md) | 42 | `result-track:398750206ec1277a3d7a9b472e604ac7bb4febf54c587a0c96dbb20dff47c18e` |
| 4 | `lemma` | [smul_isUnit](../../../../../mathematics/Algebra/GroupTheory/Units/Variant633d5a9c893fb2215065c1338d136ba7aaf75d8d68c7a6690c89599d214397ff.lean/declarations/smul-isunit--a4f59891798be7be16304366.md) | 46 | `result-track:a4f59891798be7be163043661718a191fb9de3b577e699f4956499589da0be8a` |
| 5 | `lemma` | [_root_.GRWTSK.Algebra.GroupTheory.SmulMkApply.Variant41b7b6325ffb97ba74a77d51afe5476453e8898eb0b85d48b561866feecaee97.IsUnit.inv_smul](../../../../../mathematics/Algebra/GroupTheory/Units/Variant633d5a9c893fb2215065c1338d136ba7aaf75d8d68c7a6690c89599d214397ff.lean/declarations/root-grwtsk-algebra-grouptheory-smulmkapply-variant41b7b6325ffb97ba74a77--e0f9e595cf514e38f943b91e.md) | 49 | `result-track:e0f9e595cf514e38f943b91ecc052fd5ce731eefc6d1ba2ee0050236ee012edb` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Units/Variant633d5a9c893fb2215065c1338d136ba7aaf75d8d68c7a6690c89599d214397ff.lean/declarations/instance--9862f1de065ccce6fca5124d.md) | 52 | `declaration-track:9862f1de065ccce6fca5124d689dd5115d085f92717c511c281dc29ccf7c4e50` |
| 7 | `instance` | [instMulAction](../../../../../mathematics/Algebra/GroupTheory/Units/Variant633d5a9c893fb2215065c1338d136ba7aaf75d8d68c7a6690c89599d214397ff.lean/declarations/instmulaction--89b5c7bb253263b4adf90581.md) | 56 | `declaration-track:89b5c7bb253263b4adf90581e37ed49fffdaf15a22ff75bf1f56de8c084d5e89` |
| 8 | `instance` | [smulCommClass_left](../../../../../mathematics/Algebra/GroupTheory/Units/Variant633d5a9c893fb2215065c1338d136ba7aaf75d8d68c7a6690c89599d214397ff.lean/declarations/smulcommclass-left--4fbe9f988640c7af5cbc624d.md) | 61 | `declaration-track:4fbe9f988640c7af5cbc624d0b4b9ea35272f1931a306f67fb0bda94592b43aa` |
| 9 | `instance` | [smulCommClass_right](../../../../../mathematics/Algebra/GroupTheory/Units/Variant633d5a9c893fb2215065c1338d136ba7aaf75d8d68c7a6690c89599d214397ff.lean/declarations/smulcommclass-right--f78dc1e299240edb7503b977.md) | 65 | `declaration-track:f78dc1e299240edb7503b977c44117762dcfe02c2cb4d8c576ff8293d9199697` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Units/Variant633d5a9c893fb2215065c1338d136ba7aaf75d8d68c7a6690c89599d214397ff.lean/declarations/instance--8bdb902140374407ddff60f3.md) | 69 | `declaration-track:8bdb902140374407ddff60f38a1c99e20140ab779640601e2c7dc7fd4b5b84f2` |
| 11 | `instance` | [mulAction'](../../../../../mathematics/Algebra/GroupTheory/Units/Variant633d5a9c893fb2215065c1338d136ba7aaf75d8d68c7a6690c89599d214397ff.lean/declarations/mulaction--1e32637d8c7554257ad69f79.md) | 77 | `declaration-track:1e32637d8c7554257ad69f795ab33457c766b8af8926f19e0fbc99dfef75fb60` |
| 12 | `lemma` | [val_smul](../../../../../mathematics/Algebra/GroupTheory/Units/Variant633d5a9c893fb2215065c1338d136ba7aaf75d8d68c7a6690c89599d214397ff.lean/declarations/val-smul--cefcba0dbc23114b89309686.md) | 87 | `result-track:cefcba0dbc23114b89309686460e197d55cbee682b3ea876fafc3f593e6e7b2e` |
| 13 | `lemma` | [smul_inv](../../../../../mathematics/Algebra/GroupTheory/Units/Variant633d5a9c893fb2215065c1338d136ba7aaf75d8d68c7a6690c89599d214397ff.lean/declarations/smul-inv--efb11f51b6a0712fd5ee755b.md) | 92 | `result-track:efb11f51b6a0712fd5ee755b0bb252f3a5dad4c51c02c490cde26b649dc5b6eb` |
| 14 | `instance` | [smulCommClass'](../../../../../mathematics/Algebra/GroupTheory/Units/Variant633d5a9c893fb2215065c1338d136ba7aaf75d8d68c7a6690c89599d214397ff.lean/declarations/smulcommclass--c4ecc4baea747c9e336ba4cf.md) | 97 | `declaration-track:c4ecc4baea747c9e336ba4cfa7e1eee4c37553d247f1476cbd461c4444e7c498` |
| 15 | `instance` | [isScalarTower'](../../../../../mathematics/Algebra/GroupTheory/Units/Variant633d5a9c893fb2215065c1338d136ba7aaf75d8d68c7a6690c89599d214397ff.lean/declarations/isscalartower--ac545ac24ad163b9181a814e.md) | 104 | `declaration-track:ac545ac24ad163b9181a814eba542dfffaa8455b1f280e4d9433dec5c19c4ccb` |
| 16 | `instance` | [isScalarTower'_left](../../../../../mathematics/Algebra/GroupTheory/Units/Variant633d5a9c893fb2215065c1338d136ba7aaf75d8d68c7a6690c89599d214397ff.lean/declarations/isscalartower-left--dd1b7e1b57479a97d287e42a.md) | 111 | `declaration-track:dd1b7e1b57479a97d287e42a44284ee32b7928119099a777df316323e1160c8d` |
| 17 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Units/Variant633d5a9c893fb2215065c1338d136ba7aaf75d8d68c7a6690c89599d214397ff.lean/declarations/example--be56defcfc0b45796a8203e8.md) | 116 | `declaration-track:be56defcfc0b45796a8203e80becf3d67c4c0affea20b2f59d7b46ba73e9b410` |
| 18 | `lemma` | [IsUnit.smul](../../../../../mathematics/Algebra/GroupTheory/Units/Variant633d5a9c893fb2215065c1338d136ba7aaf75d8d68c7a6690c89599d214397ff.lean/declarations/isunit-smul--35cc9f056f5e79439be74589.md) | 122 | `result-track:35cc9f056f5e79439be745897910b6ec709773e7ddd5abb0737223b54f3066bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
