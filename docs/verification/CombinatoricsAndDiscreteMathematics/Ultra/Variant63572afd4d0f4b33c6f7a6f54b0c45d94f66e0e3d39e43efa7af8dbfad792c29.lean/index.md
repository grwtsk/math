# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Ultra.Variant63572afd4d0f4b33c6f7a6f54b0c45d94f66e0e3d39e43efa7af8dbfad792c29

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8273c728c1e68323527ec94438405def08a88bfa",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Ultra/Variant63572afd4d0f4b33c6f7a6f54b0c45d94f66e0e3d39e43efa7af8dbfad792c29.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ultra/Variant63572afd4d0f4b33c6f7a6f54b0c45d94f66e0e3d39e43efa7af8dbfad792c29.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ultra/Variant63572afd4d0f4b33c6f7a6f54b0c45d94f66e0e3d39e43efa7af8dbfad792c29.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8273c728c1e68323527ec94438405def08a88bfa`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Ultra/Variant63572afd4d0f4b33c6f7a6f54b0c45d94f66e0e3d39e43efa7af8dbfad792c29.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Ultra/Variant63572afd4d0f4b33c6f7a6f54b0c45d94f66e0e3d39e43efa7af8dbfad792c29.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isUltrametricDist_of_forall_norm_add_one_le_max_norm_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ultra/Variant63572afd4d0f4b33c6f7a6f54b0c45d94f66e0e3d39e43efa7af8dbfad792c29.lean/declarations/isultrametricdist-of-forall-norm-add-one-le-max-norm-one--51a9bedf9d53c2f23daace7a.md) | 44 | `result-track:51a9bedf9d53c2f23daace7a52eaf46c0a693ed0070bb78ea58e24c2fa273ed4` |
| 2 | `lemma` | [isUltrametricDist_of_forall_norm_add_one_of_norm_le_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ultra/Variant63572afd4d0f4b33c6f7a6f54b0c45d94f66e0e3d39e43efa7af8dbfad792c29.lean/declarations/isultrametricdist-of-forall-norm-add-one-of-norm-le-one--456e383f1b9bc1784138d91b.md) | 53 | `result-track:456e383f1b9bc1784138d91bb65fe5229027289b5a78fdb1d465d4e1c675ef8c` |
| 3 | `lemma` | [isUltrametricDist_of_forall_norm_sub_one_of_norm_le_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ultra/Variant63572afd4d0f4b33c6f7a6f54b0c45d94f66e0e3d39e43efa7af8dbfad792c29.lean/declarations/isultrametricdist-of-forall-norm-sub-one-of-norm-le-one--3c066ecaf2fa5706a12e32e4.md) | 64 | `result-track:3c066ecaf2fa5706a12e32e4dad97ae5e08935f5eb5d6b1984f2ac61093ee92f` |
| 4 | `lemma` | [isUltrametricDist_of_forall_pow_norm_le_nsmul_pow_max_one_norm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ultra/Variant63572afd4d0f4b33c6f7a6f54b0c45d94f66e0e3d39e43efa7af8dbfad792c29.lean/declarations/isultrametricdist-of-forall-pow-norm-le-nsmul-pow-max-one-norm--a2efb6b1dc362df3654cda84.md) | 72 | `result-track:a2efb6b1dc362df3654cda846161c2a41eb2154c1d473570d5902229a6bb40b6` |
| 5 | `lemma` | [isUltrametricDist_of_forall_norm_natCast_le_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ultra/Variant63572afd4d0f4b33c6f7a6f54b0c45d94f66e0e3d39e43efa7af8dbfad792c29.lean/declarations/isultrametricdist-of-forall-norm-natcast-le-one--d10dc743edf41132786f96bd.md) | 102 | `result-track:d10dc743edf41132786f96bdabfddbba76cb815e7f9634fbfbc3b6f15763f19b` |
| 6 | `theorem` | [isUltrametricDist_iff_forall_norm_natCast_le_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ultra/Variant63572afd4d0f4b33c6f7a6f54b0c45d94f66e0e3d39e43efa7af8dbfad792c29.lean/declarations/isultrametricdist-iff-forall-norm-natcast-le-one--3ed89fe2005741d8477115e1.md) | 139 | `result-track:3ed89fe2005741d8477115e11bdfa2c2bc1a741ce479e51d1413d4fe4efd0b46` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
