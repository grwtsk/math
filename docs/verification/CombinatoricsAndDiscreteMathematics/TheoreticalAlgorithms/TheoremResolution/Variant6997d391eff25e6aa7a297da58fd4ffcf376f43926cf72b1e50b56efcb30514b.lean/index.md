# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TheoremResolution.Variant6997d391eff25e6aa7a297da58fd4ffcf376f43926cf72b1e50b56efcb30514b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "88f24a1c335eee0564fff0431064a2cfeb5bab54",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TheoremResolution/Variant6997d391eff25e6aa7a297da58fd4ffcf376f43926cf72b1e50b56efcb30514b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TheoremResolution/Variant6997d391eff25e6aa7a297da58fd4ffcf376f43926cf72b1e50b56efcb30514b.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TheoremResolution/Variant6997d391eff25e6aa7a297da58fd4ffcf376f43926cf72b1e50b56efcb30514b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `88f24a1c335eee0564fff0431064a2cfeb5bab54`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TheoremResolution/Variant6997d391eff25e6aa7a297da58fd4ffcf376f43926cf72b1e50b56efcb30514b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TheoremResolution/Variant6997d391eff25e6aa7a297da58fd4ffcf376f43926cf72b1e50b56efcb30514b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [CertificateResolutionState](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TheoremResolution/Variant6997d391eff25e6aa7a297da58fd4ffcf376f43926cf72b1e50b56efcb30514b.lean/declarations/certificateresolutionstate--9b22be133a6e960dad5bf48b.md) | 32 | `declaration-track:9b22be133a6e960dad5bf48b906cbb272bd2ea69ef1c8313bb03eee34a9607df` |
| 2 | `def` | [CertificateResolutionState.label](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TheoremResolution/Variant6997d391eff25e6aa7a297da58fd4ffcf376f43926cf72b1e50b56efcb30514b.lean/declarations/certificateresolutionstate-label--5b4cbf8e7f5956e9f45efc56.md) | 43 | `declaration-track:5b4cbf8e7f5956e9f45efc566cbc19392d5cbcae4ed8fd9cf947915022bd1d27` |
| 3 | `structure` | [CertificateResolutionRecord](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TheoremResolution/Variant6997d391eff25e6aa7a297da58fd4ffcf376f43926cf72b1e50b56efcb30514b.lean/declarations/certificateresolutionrecord--01e9d28f2614eb5532c5dd4e.md) | 53 | `declaration-track:01e9d28f2614eb5532c5dd4ec4b86d5850064f765029f8787a28c1652e07ffbf` |
| 4 | `theorem` | [certificate_resolution_state_exhaustive](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TheoremResolution/Variant6997d391eff25e6aa7a297da58fd4ffcf376f43926cf72b1e50b56efcb30514b.lean/declarations/certificate-resolution-state-exhaustive--a6b4e6204c22656e615d3fc0.md) | 65 | `result-track:a6b4e6204c22656e615d3fc05fa8ad5335eb9adaebc1087f16d32043e5804ca0` |
| 5 | `theorem` | [certificate_resolution_record_has_exactly_one_state](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TheoremResolution/Variant6997d391eff25e6aa7a297da58fd4ffcf376f43926cf72b1e50b56efcb30514b.lean/declarations/certificate-resolution-record-has-exactly-one-state--0b4ed2c56d9b46445d9262c3.md) | 79 | `result-track:0b4ed2c56d9b46445d9262c3145b68244376326e7bcf3d7d8de149fc58ebeb3d` |
| 6 | `def` | [CertificateResolutionState.isResolved](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TheoremResolution/Variant6997d391eff25e6aa7a297da58fd4ffcf376f43926cf72b1e50b56efcb30514b.lean/declarations/certificateresolutionstate-isresolved--8aca34dbc21a9c302242c036.md) | 88 | `declaration-track:8aca34dbc21a9c302242c0365fea5fe6d98165220b89ef20b39a1f0881edb678` |
| 7 | `theorem` | [certificate_resolution_requires_explicit_state](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TheoremResolution/Variant6997d391eff25e6aa7a297da58fd4ffcf376f43926cf72b1e50b56efcb30514b.lean/declarations/certificate-resolution-requires-explicit-state--1118084cd6bed0818817fb31.md) | 98 | `result-track:1118084cd6bed0818817fb31bb47b3684cd2b7068c1f3c1569dc2b2afd0aee7e` |
| 8 | `def` | [CertificateResolutionState.isPreciselyResolved](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TheoremResolution/Variant6997d391eff25e6aa7a297da58fd4ffcf376f43926cf72b1e50b56efcb30514b.lean/declarations/certificateresolutionstate-ispreciselyresolved--87f57fe347093ebcdefea365.md) | 111 | `declaration-track:87f57fe347093ebcdefea365a84338587203533046fbc5d985dd28773fa54326` |
| 9 | `theorem` | [certificate_resolution_precisely_resolved_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TheoremResolution/Variant6997d391eff25e6aa7a297da58fd4ffcf376f43926cf72b1e50b56efcb30514b.lean/declarations/certificate-resolution-precisely-resolved-iff--108762be8d65f36c8f9726cc.md) | 121 | `result-track:108762be8d65f36c8f9726cc8a60809b6babc533f78107363466b31efeffcee9` |
| 10 | `theorem` | [finite_certified_not_resolved](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TheoremResolution/Variant6997d391eff25e6aa7a297da58fd4ffcf376f43926cf72b1e50b56efcb30514b.lean/declarations/finite-certified-not-resolved--72c5ab6503427e72c670c364.md) | 132 | `result-track:72c5ab6503427e72c670c364ff7adf790244cf5b2b2b2d084faa72e84893d77c` |
| 11 | `theorem` | [unavailable_authority_not_resolved](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TheoremResolution/Variant6997d391eff25e6aa7a297da58fd4ffcf376f43926cf72b1e50b56efcb30514b.lean/declarations/unavailable-authority-not-resolved--975c2bf54d4abdea7a45ccf8.md) | 138 | `result-track:975c2bf54d4abdea7a45ccf8bc05e4a9083dcc3fed9aad417c6ad10bc6d42de8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
