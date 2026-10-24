# Verification target: GRWTSK.Algebra.Subsemiring.Variantecc37d7013628d66091e66733ef4986598291465fc4a8f0a37e73cdaad35ae81

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "11ee78d022981fa8a0706239f69b6ea33965d3eb",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Subsemiring/Variantecc37d7013628d66091e66733ef4986598291465fc4a8f0a37e73cdaad35ae81.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Subsemiring/Variantecc37d7013628d66091e66733ef4986598291465fc4a8f0a37e73cdaad35ae81.lean/index.md) · [Full source](../../../../mathematics/Algebra/Subsemiring/Variantecc37d7013628d66091e66733ef4986598291465fc4a8f0a37e73cdaad35ae81.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `11ee78d022981fa8a0706239f69b6ea33965d3eb`.

Source path: `GRWTSK/Algebra/Subsemiring/Variantecc37d7013628d66091e66733ef4986598291465fc4a8f0a37e73cdaad35ae81.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Subsemiring/Variantecc37d7013628d66091e66733ef4986598291465fc4a8f0a37e73cdaad35ae81.lean.json)

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
| 1 | `theorem` | [DirectSum.SetLike.IsHomogeneous.mem_iff](../../../../mathematics/Algebra/Subsemiring/Variantecc37d7013628d66091e66733ef4986598291465fc4a8f0a37e73cdaad35ae81.lean/declarations/directsum-setlike-ishomogeneous-mem-iff--e77315cef0d9d8d2acf63aed.md) | 33 | `result-track:e77315cef0d9d8d2acf63aed6acb178af3eaaf457279646de7f2aa226614038a` |
| 2 | `structure` | [HomogeneousSubsemiring](../../../../mathematics/Algebra/Subsemiring/Variantecc37d7013628d66091e66733ef4986598291465fc4a8f0a37e73cdaad35ae81.lean/declarations/homogeneoussubsemiring--e43393c4941471a3e76e3ebf.md) | 38 | `declaration-track:e43393c4941471a3e76e3ebf2e8c1e407acffdc6913ec29d16a603ac31862b7e` |
| 3 | `theorem` | [toSubsemiring_injective](../../../../mathematics/Algebra/Subsemiring/Variantecc37d7013628d66091e66733ef4986598291465fc4a8f0a37e73cdaad35ae81.lean/declarations/tosubsemiring-injective--42b6c1734d0724db2986b1a1.md) | 45 | `result-track:42b6c1734d0724db2986b1a1fafa9cdcbf00c977639a0e7b80244f464d983fcc` |
| 4 | `instance` | [setLike](../../../../mathematics/Algebra/Subsemiring/Variantecc37d7013628d66091e66733ef4986598291465fc4a8f0a37e73cdaad35ae81.lean/declarations/setlike--d939e07174ab469e98483a0a.md) | 49 | `declaration-track:d939e07174ab469e98483a0aa44d6b781a087fbb8f57d442a5c742ba1184a688` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Subsemiring/Variantecc37d7013628d66091e66733ef4986598291465fc4a8f0a37e73cdaad35ae81.lean/declarations/instance--a8b7e05544eb29e8a0a81aa5.md) | 53 | `declaration-track:a8b7e05544eb29e8a0a81aa54195c247aae9732426034e745da39699771bda98` |
| 6 | `theorem` | [isHomogeneous](../../../../mathematics/Algebra/Subsemiring/Variantecc37d7013628d66091e66733ef4986598291465fc4a8f0a37e73cdaad35ae81.lean/declarations/ishomogeneous--5be75c7887969925d50c8399.md) | 55 | `result-track:5be75c7887969925d50c83999265603c2ab7af357bccd389c523a9e7958477f3` |
| 7 | `instance` | [subsemiringClass](../../../../mathematics/Algebra/Subsemiring/Variantecc37d7013628d66091e66733ef4986598291465fc4a8f0a37e73cdaad35ae81.lean/declarations/subsemiringclass--ab59c61174e063163bf10654.md) | 58 | `declaration-track:ab59c61174e063163bf10654d6f86d93121c80b66f9cae9128b0863343e6c49b` |
| 8 | `theorem` | [ext](../../../../mathematics/Algebra/Subsemiring/Variantecc37d7013628d66091e66733ef4986598291465fc4a8f0a37e73cdaad35ae81.lean/declarations/ext--193439d1ede3a9d0684862a6.md) | 65 | `result-track:193439d1ede3a9d0684862a6cc4927cf9e30c182bd68b8b7dc1fd0bc7db2e066` |
| 9 | `theorem` | [ext'](../../../../mathematics/Algebra/Subsemiring/Variantecc37d7013628d66091e66733ef4986598291465fc4a8f0a37e73cdaad35ae81.lean/declarations/ext--c7ee95d68def16e816ef6455.md) | 69 | `result-track:c7ee95d68def16e816ef645578d31c2e236219f67af01b45d64f992719b14792` |
| 10 | `theorem` | [mem_iff](../../../../mathematics/Algebra/Subsemiring/Variantecc37d7013628d66091e66733ef4986598291465fc4a8f0a37e73cdaad35ae81.lean/declarations/mem-iff--54b64741277e1ee3e3b671ec.md) | 74 | `result-track:54b64741277e1ee3e3b671ec4533f8a1caead3e481d661e9b765b33b5bf52389` |
| 11 | `theorem` | [IsHomogeneous.subsemiringClosure](../../../../mathematics/Algebra/Subsemiring/Variantecc37d7013628d66091e66733ef4986598291465fc4a8f0a37e73cdaad35ae81.lean/declarations/ishomogeneous-subsemiringclosure--9135575beed8d5e6f0653cce.md) | 80 | `result-track:9135575beed8d5e6f0653ccecc6ee717d1fa579a0b20900e7ad706cdf09168c8` |
| 12 | `theorem` | [IsHomogeneous.subsemiringClosure_of_isHomogeneousElem](../../../../mathematics/Algebra/Subsemiring/Variantecc37d7013628d66091e66733ef4986598291465fc4a8f0a37e73cdaad35ae81.lean/declarations/ishomogeneous-subsemiringclosure-of-ishomogeneouselem--97b93c8d1a567c75b64ee6be.md) | 99 | `result-track:97b93c8d1a567c75b64ee6be913b79f1788091cf995a2990a96007fac6d0fe07` |
| 13 | `def` | [Subsemiring.homogeneousCore](../../../../mathematics/Algebra/Subsemiring/Variantecc37d7013628d66091e66733ef4986598291465fc4a8f0a37e73cdaad35ae81.lean/declarations/subsemiring-homogeneouscore--244f890b53d19e375c6f1dca.md) | 115 | `declaration-track:244f890b53d19e375c6f1dcaee12653e014dea3e582f7f4a75169d952c74ad4b` |
| 14 | `theorem` | [Subsemiring.homogeneousCore_mono](../../../../mathematics/Algebra/Subsemiring/Variantecc37d7013628d66091e66733ef4986598291465fc4a8f0a37e73cdaad35ae81.lean/declarations/subsemiring-homogeneouscore-mono--b1e560072ce89e3e44015604.md) | 120 | `result-track:b1e560072ce89e3e4401560434da5ce191dee0b0ea0f1c517c2032637bbc76fc` |
| 15 | `theorem` | [Subsemiring.toSubsemiring_homogeneousCore_le](../../../../mathematics/Algebra/Subsemiring/Variantecc37d7013628d66091e66733ef4986598291465fc4a8f0a37e73cdaad35ae81.lean/declarations/subsemiring-tosubsemiring-homogeneouscore-le--4eeffdb633f7390a483b7cb0.md) | 123 | `result-track:4eeffdb633f7390a483b7cb07c4d48c68be46dcfc759e52067d85aecf4dafc44` |
| 16 | `theorem` | [Subsemiring.isHomogeneous_iff_forall_subset](../../../../mathematics/Algebra/Subsemiring/Variantecc37d7013628d66091e66733ef4986598291465fc4a8f0a37e73cdaad35ae81.lean/declarations/subsemiring-ishomogeneous-iff-forall-subset--3a968ca606143a1f96261583.md) | 130 | `result-track:3a968ca606143a1f962615832e8b54e89f6d37c0b6ceba66658506cba55f8864` |
| 17 | `theorem` | [Subsemiring.isHomogeneous_iff_subset_iInter](../../../../mathematics/Algebra/Subsemiring/Variantecc37d7013628d66091e66733ef4986598291465fc4a8f0a37e73cdaad35ae81.lean/declarations/subsemiring-ishomogeneous-iff-subset-iinter--ae15f89083dc41d796d7a9b3.md) | 134 | `result-track:ae15f89083dc41d796d7a9b3dd4403543a1394e322fd0c40178f72ac4d7a19c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
