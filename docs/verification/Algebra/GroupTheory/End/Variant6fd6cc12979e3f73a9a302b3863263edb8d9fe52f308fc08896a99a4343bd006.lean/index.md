# Verification target: GRWTSK.Algebra.GroupTheory.End.Variant6fd6cc12979e3f73a9a302b3863263edb8d9fe52f308fc08896a99a4343bd006

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c481ae021e1fe86c8625c022685092912e8d8493",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/End/Variant6fd6cc12979e3f73a9a302b3863263edb8d9fe52f308fc08896a99a4343bd006.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/End/Variant6fd6cc12979e3f73a9a302b3863263edb8d9fe52f308fc08896a99a4343bd006.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/End/Variant6fd6cc12979e3f73a9a302b3863263edb8d9fe52f308fc08896a99a4343bd006.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c481ae021e1fe86c8625c022685092912e8d8493`.

Source path: `GRWTSK/Algebra/GroupTheory/End/Variant6fd6cc12979e3f73a9a302b3863263edb8d9fe52f308fc08896a99a4343bd006.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/End/Variant6fd6cc12979e3f73a9a302b3863263edb8d9fe52f308fc08896a99a4343bd006.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Action.Hom` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.End` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [applyMulAction](../../../../../mathematics/Algebra/GroupTheory/End/Variant6fd6cc12979e3f73a9a302b3863263edb8d9fe52f308fc08896a99a4343bd006.lean/declarations/applymulaction--e268ea598badec2e8a1bb473.md) | 60 | `declaration-track:e268ea598badec2e8a1bb473e0b47a455119dd295253f3f23a4a9f9eb468dd4e` |
| 2 | `instance` | [applyAddAction](../../../../../mathematics/Algebra/GroupTheory/End/Variant6fd6cc12979e3f73a9a302b3863263edb8d9fe52f308fc08896a99a4343bd006.lean/declarations/applyaddaction--67f024812acd97ba1bcb409e.md) | 66 | `declaration-track:67f024812acd97ba1bcb409ec1fbe5b472f3e1242b3a1486d3708d5d431237d7` |
| 3 | `lemma` | [smul_def](../../../../../mathematics/Algebra/GroupTheory/End/Variant6fd6cc12979e3f73a9a302b3863263edb8d9fe52f308fc08896a99a4343bd006.lean/declarations/smul-def--8954d66a673206fad03ee259.md) | 68 | `result-track:8954d66a673206fad03ee259411fb92445aa0668b623f1fa6898beab030e13f2` |
| 4 | `lemma` | [mul_def](../../../../../mathematics/Algebra/GroupTheory/End/Variant6fd6cc12979e3f73a9a302b3863263edb8d9fe52f308fc08896a99a4343bd006.lean/declarations/mul-def--905c28193402821dd0ecbaba.md) | 71 | `result-track:905c28193402821dd0ecbaba4ee27a2aa660283bdaf7efdc1f1c410c50ad8396` |
| 5 | `lemma` | [one_def](../../../../../mathematics/Algebra/GroupTheory/End/Variant6fd6cc12979e3f73a9a302b3863263edb8d9fe52f308fc08896a99a4343bd006.lean/declarations/one-def--c47974e3205e6759224badfa.md) | 74 | `result-track:c47974e3205e6759224badfaf44761a2058d8a3587f5ae5e9b0478320ed1fab1` |
| 6 | `instance` | [apply_FaithfulSMul](../../../../../mathematics/Algebra/GroupTheory/End/Variant6fd6cc12979e3f73a9a302b3863263edb8d9fe52f308fc08896a99a4343bd006.lean/declarations/apply-faithfulsmul--23633746d6fd68ba03a7819a.md) | 77 | `declaration-track:23633746d6fd68ba03a7819a237a3c8920bb252adf3d0d7d9ffd649af92b3e61` |
| 7 | `instance` | [applyMulAction](../../../../../mathematics/Algebra/GroupTheory/End/Variant6fd6cc12979e3f73a9a302b3863263edb8d9fe52f308fc08896a99a4343bd006.lean/declarations/applymulaction--4b4fe67e957c2c0591bdbcea.md) | 88 | `declaration-track:4b4fe67e957c2c0591bdbceabda326ee65614e58c6293dc986661de5722c823b` |
| 8 | `lemma` | [smul_def](../../../../../mathematics/Algebra/GroupTheory/End/Variant6fd6cc12979e3f73a9a302b3863263edb8d9fe52f308fc08896a99a4343bd006.lean/declarations/smul-def--bd06d72759b9680c3edabbf3.md) | 94 | `result-track:bd06d72759b9680c3edabbf3a715961256a5340715a624b97e7f3264259ea985` |
| 9 | `instance` | [applyFaithfulSMul](../../../../../mathematics/Algebra/GroupTheory/End/Variant6fd6cc12979e3f73a9a302b3863263edb8d9fe52f308fc08896a99a4343bd006.lean/declarations/applyfaithfulsmul--383a5bae4a89a1240bf2ac89.md) | 97 | `declaration-track:383a5bae4a89a1240bf2ac89eee490980fa105c0de75aca2649b067489d888c8` |
| 10 | `instance` | [applyMulAction](../../../../../mathematics/Algebra/GroupTheory/End/Variant6fd6cc12979e3f73a9a302b3863263edb8d9fe52f308fc08896a99a4343bd006.lean/declarations/applymulaction--7e64c2013101b3bc49887789.md) | 107 | `declaration-track:7e64c2013101b3bc498877895cc9d2151859ba619a0517032bc44f536e6fa189` |
| 11 | `instance` | [applyMulDistribMulAction](../../../../../mathematics/Algebra/GroupTheory/End/Variant6fd6cc12979e3f73a9a302b3863263edb8d9fe52f308fc08896a99a4343bd006.lean/declarations/applymuldistribmulaction--d9aa40d44e64809f0927b56e.md) | 115 | `declaration-track:d9aa40d44e64809f0927b56e65539315c0a8a598bc0cbfad9dbe636141045440` |
| 12 | `lemma` | [smul_def](../../../../../mathematics/Algebra/GroupTheory/End/Variant6fd6cc12979e3f73a9a302b3863263edb8d9fe52f308fc08896a99a4343bd006.lean/declarations/smul-def--00ed334a7f0a0494ffd77aec.md) | 122 | `result-track:00ed334a7f0a0494ffd77aec9c692cc3a63ba778a472c01dce045f13669700e9` |
| 13 | `instance` | [apply_faithfulSMul](../../../../../mathematics/Algebra/GroupTheory/End/Variant6fd6cc12979e3f73a9a302b3863263edb8d9fe52f308fc08896a99a4343bd006.lean/declarations/apply-faithfulsmul--66603441941d2ac6b9db066b.md) | 125 | `declaration-track:66603441941d2ac6b9db066b57ab13cd3982f0573c5fa812e4aecc5891fc9c7d` |
| 14 | `instance` | [applyMulAction](../../../../../mathematics/Algebra/GroupTheory/End/Variant6fd6cc12979e3f73a9a302b3863263edb8d9fe52f308fc08896a99a4343bd006.lean/declarations/applymulaction--b994beef5e5a5638168801e1.md) | 135 | `declaration-track:b994beef5e5a5638168801e17e8cb4518094b1d9055eac48eab806cd54947a81` |
| 15 | `lemma` | [smul_def](../../../../../mathematics/Algebra/GroupTheory/End/Variant6fd6cc12979e3f73a9a302b3863263edb8d9fe52f308fc08896a99a4343bd006.lean/declarations/smul-def--58640237f20142530d3742e4.md) | 140 | `result-track:58640237f20142530d3742e439f2a74a9efd7dc1594b264d0b3e09a34423136c` |
| 16 | `instance` | [apply_faithfulSMul](../../../../../mathematics/Algebra/GroupTheory/End/Variant6fd6cc12979e3f73a9a302b3863263edb8d9fe52f308fc08896a99a4343bd006.lean/declarations/apply-faithfulsmul--f3eb4e62a47f89935eb0c010.md) | 143 | `declaration-track:f3eb4e62a47f89935eb0c010a5a7aa0a2837df0cb0c3be8ec5d84090ed740a5f` |
| 17 | `def` | [MulAction.toEndHom](../../../../../mathematics/Algebra/GroupTheory/End/Variant6fd6cc12979e3f73a9a302b3863263edb8d9fe52f308fc08896a99a4343bd006.lean/declarations/mulaction-toendhom--266e7319123acbf6536d5f16.md) | 155 | `declaration-track:266e7319123acbf6536d5f16592c0928d273d27b1280bf03ea41f22e438b6134` |
| 18 | `abbrev` | [MulAction.ofEndHom](../../../../../mathematics/Algebra/GroupTheory/End/Variant6fd6cc12979e3f73a9a302b3863263edb8d9fe52f308fc08896a99a4343bd006.lean/declarations/mulaction-ofendhom--f4693fee88de6fbc9d31ffe7.md) | 163 | `declaration-track:f4693fee88de6fbc9d31ffe770b7b806160a8a3bbdd66ac35fd8e8dd7d557195` |
| 19 | `def` | [AddAction.toEndHom](../../../../../mathematics/Algebra/GroupTheory/End/Variant6fd6cc12979e3f73a9a302b3863263edb8d9fe52f308fc08896a99a4343bd006.lean/declarations/addaction-toendhom--81d54dc2615d42b39da3c955.md) | 173 | `declaration-track:81d54dc2615d42b39da3c9559f8006905b822c490a2b435a328f1d244fd1c00b` |
| 20 | `abbrev` | [AddAction.ofEndHom](../../../../../mathematics/Algebra/GroupTheory/End/Variant6fd6cc12979e3f73a9a302b3863263edb8d9fe52f308fc08896a99a4343bd006.lean/declarations/addaction-ofendhom--8a7994dc295ccdf0e726d519.md) | 179 | `declaration-track:8a7994dc295ccdf0e726d51939d097a011a9016528e5c6ec1b48f2693fbfda13` |
| 21 | `def` | [MulAction.toPermHom](../../../../../mathematics/Algebra/GroupTheory/End/Variant6fd6cc12979e3f73a9a302b3863263edb8d9fe52f308fc08896a99a4343bd006.lean/declarations/mulaction-topermhom--0807c03c77539c9dbcdcc4f1.md) | 188 | `declaration-track:0807c03c77539c9dbcdcc4f16147ce5457ed8796170479992c95913a8bcc4ad7` |
| 22 | `def` | [AddAction.toPermHom](../../../../../mathematics/Algebra/GroupTheory/End/Variant6fd6cc12979e3f73a9a302b3863263edb8d9fe52f308fc08896a99a4343bd006.lean/declarations/addaction-topermhom--584d8dfa60b423bfc21133fd.md) | 201 | `declaration-track:584d8dfa60b423bfc21133fd6d63152d16a8ce4f018710abc5dd2632948e6614` |
| 23 | `def` | [MulDistribMulAction.toMulEquiv](../../../../../mathematics/Algebra/GroupTheory/End/Variant6fd6cc12979e3f73a9a302b3863263edb8d9fe52f308fc08896a99a4343bd006.lean/declarations/muldistribmulaction-tomulequiv--c4eade8d805413e953cd4a10.md) | 213 | `declaration-track:c4eade8d805413e953cd4a10ac3bd0c1602ffeab6157cac65f6a6424984f6ce9` |
| 24 | `def` | [MulDistribMulAction.toMulAut](../../../../../mathematics/Algebra/GroupTheory/End/Variant6fd6cc12979e3f73a9a302b3863263edb8d9fe52f308fc08896a99a4343bd006.lean/declarations/muldistribmulaction-tomulaut--9985477688b68214ae2fb1ea.md) | 221 | `declaration-track:9985477688b68214ae2fb1ea6535133fa0df17f24fc8e84b0350764381636f42` |
| 25 | `def` | [mulAutArrow](../../../../../mathematics/Algebra/GroupTheory/End/Variant6fd6cc12979e3f73a9a302b3863263edb8d9fe52f308fc08896a99a4343bd006.lean/declarations/mulautarrow--3e2f7915c421e6ce8a6e37b9.md) | 235 | `declaration-track:3e2f7915c421e6ce8a6e37b99e023d760523d1fce4770e67eb542af4ea94d18e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
