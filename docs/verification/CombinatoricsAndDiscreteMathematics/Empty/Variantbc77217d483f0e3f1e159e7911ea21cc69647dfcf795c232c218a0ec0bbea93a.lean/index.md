# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Empty.Variantbc77217d483f0e3f1e159e7911ea21cc69647dfcf795c232c218a0ec0bbea93a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f9ab453c3339994ada780f6fcb663206b6acb5bb",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Empty/Variantbc77217d483f0e3f1e159e7911ea21cc69647dfcf795c232c218a0ec0bbea93a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantbc77217d483f0e3f1e159e7911ea21cc69647dfcf795c232c218a0ec0bbea93a.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantbc77217d483f0e3f1e159e7911ea21cc69647dfcf795c232c218a0ec0bbea93a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f9ab453c3339994ada780f6fcb663206b6acb5bb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Empty/Variantbc77217d483f0e3f1e159e7911ea21cc69647dfcf795c232c218a0ec0bbea93a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Empty/Variantbc77217d483f0e3f1e159e7911ea21cc69647dfcf795c232c218a0ec0bbea93a.lean.json)

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
| 1 | `def` | [Nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantbc77217d483f0e3f1e159e7911ea21cc69647dfcf795c232c218a0ec0bbea93a.lean/declarations/nonempty--917ae13c2a0426dbb2bb6fc5.md) | 47 | `declaration-track:917ae13c2a0426dbb2bb6fc5f07dadad7fb8015fe560d1c742af6ccc6add6486` |
| 2 | `theorem` | [nonempty_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantbc77217d483f0e3f1e159e7911ea21cc69647dfcf795c232c218a0ec0bbea93a.lean/declarations/nonempty-def--535158d4e3fb68bd19979553.md) | 50 | `result-track:535158d4e3fb68bd19979553cfd2b814e816e3c80733e3d7e2ff9eeef9a2f1a3` |
| 3 | `instance` | [decidableNonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantbc77217d483f0e3f1e159e7911ea21cc69647dfcf795c232c218a0ec0bbea93a.lean/declarations/decidablenonempty--ad687ecd267a53088a651f43.md) | 52 | `declaration-track:ad687ecd267a53088a651f43f80fb9c7a54d3ca99561c8a494e0dd9906b2695e` |
| 4 | `theorem` | [coe_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantbc77217d483f0e3f1e159e7911ea21cc69647dfcf795c232c218a0ec0bbea93a.lean/declarations/coe-nonempty--7d4517708a211aa6cfd39fa1.md) | 56 | `result-track:7d4517708a211aa6cfd39fa123904e5f6edf1083e488330f78398112ea2ac0a8` |
| 5 | `theorem` | [nonempty_coe_sort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantbc77217d483f0e3f1e159e7911ea21cc69647dfcf795c232c218a0ec0bbea93a.lean/declarations/nonempty-coe-sort--558214df01966b33d1f5efd4.md) | 60 | `result-track:558214df01966b33d1f5efd4ccf9c06dab2b469d4f287545f7502b2c48624a15` |
| 6 | `theorem` | [Nonempty.exists_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantbc77217d483f0e3f1e159e7911ea21cc69647dfcf795c232c218a0ec0bbea93a.lean/declarations/nonempty-exists-mem--19e172ca8c5390acecc30ef0.md) | 67 | `result-track:19e172ca8c5390acecc30ef0056bf7bd7578cab1669086dd04f3bb70e31fd65d` |
| 7 | `theorem` | [Nonempty.mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantbc77217d483f0e3f1e159e7911ea21cc69647dfcf795c232c218a0ec0bbea93a.lean/declarations/nonempty-mono--9572434ec2614fcb74bad82c.md) | 70 | `result-track:9572434ec2614fcb74bad82cb4e4c0546b5d305c8fdd0c68c09e61c9b28db156` |
| 8 | `theorem` | [Nonempty.forall_const](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantbc77217d483f0e3f1e159e7911ea21cc69647dfcf795c232c218a0ec0bbea93a.lean/declarations/nonempty-forall-const--ccab5016b86ba5ea82c4c3b0.md) | 73 | `result-track:ccab5016b86ba5ea82c4c3b06c0b4b0693d1a09d2fb9503934d227cfab9d06d6` |
| 9 | `theorem` | [forall_mem_const](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantbc77217d483f0e3f1e159e7911ea21cc69647dfcf795c232c218a0ec0bbea93a.lean/declarations/forall-mem-const--180d0a6e9e2ed52e093694ff.md) | 78 | `result-track:180d0a6e9e2ed52e093694ff461f6a63153296433062a9370632cc8d784da4df` |
| 10 | `theorem` | [Nonempty.to_subtype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantbc77217d483f0e3f1e159e7911ea21cc69647dfcf795c232c218a0ec0bbea93a.lean/declarations/nonempty-to-subtype--bf4dbd4ad25907986b91e1fa.md) | 81 | `result-track:bf4dbd4ad25907986b91e1facfdff3b7f517f44a0548b51cb04407c7514b99bc` |
| 11 | `theorem` | [Nonempty.to_type](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantbc77217d483f0e3f1e159e7911ea21cc69647dfcf795c232c218a0ec0bbea93a.lean/declarations/nonempty-to-type--7e90e7e247cb4c010e6e44df.md) | 84 | `result-track:7e90e7e247cb4c010e6e44dfabbaffa0270e63382c2c574ac19e7395ae5100ab` |
| 12 | `def` | [empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantbc77217d483f0e3f1e159e7911ea21cc69647dfcf795c232c218a0ec0bbea93a.lean/declarations/empty--1e1b3c636b56c83627fb21ba.md) | 94 | `declaration-track:1e1b3c636b56c83627fb21ba36671710c880fcc60e3bb34311efa16973fcf196` |
| 13 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantbc77217d483f0e3f1e159e7911ea21cc69647dfcf795c232c218a0ec0bbea93a.lean/declarations/instance--dcdbe8532a67bef22f03e0ae.md) | 97 | `declaration-track:dcdbe8532a67bef22f03e0aee682c86ea52a56438a6b6610dc5c559cbfd2efda` |
| 14 | `instance` | [inhabitedFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantbc77217d483f0e3f1e159e7911ea21cc69647dfcf795c232c218a0ec0bbea93a.lean/declarations/inhabitedfinset--8c2449b30587a4486f6edf3b.md) | 100 | `declaration-track:8c2449b30587a4486f6edf3b0118148387c0220e7ac09594de097fc0bff1d01f` |
| 15 | `theorem` | [empty_val](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantbc77217d483f0e3f1e159e7911ea21cc69647dfcf795c232c218a0ec0bbea93a.lean/declarations/empty-val--de83baf3754f45d6cb5ca399.md) | 104 | `result-track:de83baf3754f45d6cb5ca3994755bcb24efbe1625c22db3c78d58d478d9ebcfc` |
| 16 | `theorem` | [notMem_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantbc77217d483f0e3f1e159e7911ea21cc69647dfcf795c232c218a0ec0bbea93a.lean/declarations/notmem-empty--bd88419bf430dedcd0f84640.md) | 108 | `result-track:bd88419bf430dedcd0f84640e734fd9f80eb08ce9601144b906b702acca3c132` |
| 17 | `theorem` | [not_nonempty_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantbc77217d483f0e3f1e159e7911ea21cc69647dfcf795c232c218a0ec0bbea93a.lean/declarations/not-nonempty-empty--16dd18dedfd152d37d6cdf83.md) | 112 | `result-track:16dd18dedfd152d37d6cdf837586bf1b1b44b8043408d69f0274bf0ed78f6b7b` |
| 18 | `theorem` | [mk_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantbc77217d483f0e3f1e159e7911ea21cc69647dfcf795c232c218a0ec0bbea93a.lean/declarations/mk-zero--2aa38364e5222676c77eed9d.md) | 115 | `result-track:2aa38364e5222676c77eed9dcbadb4d87e73829acf967b6d9be2f380784bf932` |
| 19 | `theorem` | [ne_empty_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantbc77217d483f0e3f1e159e7911ea21cc69647dfcf795c232c218a0ec0bbea93a.lean/declarations/ne-empty-of-mem--719d679014b1b998b845abf7.md) | 118 | `result-track:719d679014b1b998b845abf730b5c315d2452caf837489443d216c271d85e5f0` |
| 20 | `theorem` | [Nonempty.ne_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantbc77217d483f0e3f1e159e7911ea21cc69647dfcf795c232c218a0ec0bbea93a.lean/declarations/nonempty-ne-empty--87172904f8eb161024972fe9.md) | 121 | `result-track:87172904f8eb161024972fe909c041a42859c49185fdd43b7fb4615cbae0ef0a` |
| 21 | `theorem` | [empty_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantbc77217d483f0e3f1e159e7911ea21cc69647dfcf795c232c218a0ec0bbea93a.lean/declarations/empty-subset--a7af79e28d310528a5ed7e43.md) | 125 | `result-track:a7af79e28d310528a5ed7e43cc9fe629998a53c5f95ccdbbd94ddb8166b9b539` |
| 22 | `theorem` | [eq_empty_of_forall_notMem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantbc77217d483f0e3f1e159e7911ea21cc69647dfcf795c232c218a0ec0bbea93a.lean/declarations/eq-empty-of-forall-notmem--14bd5599c85431605d186aa4.md) | 128 | `result-track:14bd5599c85431605d186aa47ca8fdcb4ef29a5779ba746058226addf6beed57` |
| 23 | `theorem` | [eq_empty_iff_forall_notMem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantbc77217d483f0e3f1e159e7911ea21cc69647dfcf795c232c218a0ec0bbea93a.lean/declarations/eq-empty-iff-forall-notmem--0ac32bc52c7d034639544ce2.md) | 131 | `result-track:0ac32bc52c7d034639544ce220651b5ba506d4c75405513e2c0c802d751f9bc8` |
| 24 | `theorem` | [val_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantbc77217d483f0e3f1e159e7911ea21cc69647dfcf795c232c218a0ec0bbea93a.lean/declarations/val-eq-zero--7e4b273ef461fc7cee835e4c.md) | 134 | `result-track:7e4b273ef461fc7cee835e4ce7081581366edc4ccf1eb82fe98f8035bfe71bc4` |
| 25 | `lemma` | [subset_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantbc77217d483f0e3f1e159e7911ea21cc69647dfcf795c232c218a0ec0bbea93a.lean/declarations/subset-empty--5a9c058001efb00da6664843.md) | 137 | `result-track:5a9c058001efb00da66648436eb9245e463c626ee9bd657e6a8482c4ed5962ba` |
| 26 | `theorem` | [not_ssubset_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantbc77217d483f0e3f1e159e7911ea21cc69647dfcf795c232c218a0ec0bbea93a.lean/declarations/not-ssubset-empty--4c95aa9735a4a7bf82c00430.md) | 140 | `result-track:4c95aa9735a4a7bf82c0043050257df72603ad83ffbcad73c4a692645e4b840c` |
| 27 | `theorem` | [nonempty_of_ne_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantbc77217d483f0e3f1e159e7911ea21cc69647dfcf795c232c218a0ec0bbea93a.lean/declarations/nonempty-of-ne-empty--2325b6e44264269853039897.md) | 142 | `result-track:2325b6e442642698530398976cc637bf90bec49af940e9bb2e2d545d4eeea80d` |
| 28 | `theorem` | [nonempty_iff_ne_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantbc77217d483f0e3f1e159e7911ea21cc69647dfcf795c232c218a0ec0bbea93a.lean/declarations/nonempty-iff-ne-empty--92b8daadad6fcee39a6dc0c6.md) | 146 | `result-track:92b8daadad6fcee39a6dc0c624b971edec0d710086954902b83afeabae6527c7` |
| 29 | `theorem` | [not_nonempty_iff_eq_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantbc77217d483f0e3f1e159e7911ea21cc69647dfcf795c232c218a0ec0bbea93a.lean/declarations/not-nonempty-iff-eq-empty--7c72be869d35b7ec4d1288d8.md) | 150 | `result-track:7c72be869d35b7ec4d1288d82029960382d37d652bc4a5584ce7515913d5e7f8` |
| 30 | `theorem` | [eq_empty_or_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantbc77217d483f0e3f1e159e7911ea21cc69647dfcf795c232c218a0ec0bbea93a.lean/declarations/eq-empty-or-nonempty--19c02037e9d23d93d53e2a82.md) | 153 | `result-track:19c02037e9d23d93d53e2a82c33725c93176d1526e1df328a6bd582ffd81ee12` |
| 31 | `theorem` | [coe_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantbc77217d483f0e3f1e159e7911ea21cc69647dfcf795c232c218a0ec0bbea93a.lean/declarations/coe-empty--639af09e8bc37516885a13d9.md) | 157 | `result-track:639af09e8bc37516885a13d975552de9644dbcf207c0e19bb9e62a641812cc88` |
| 32 | `theorem` | [coe_eq_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantbc77217d483f0e3f1e159e7911ea21cc69647dfcf795c232c218a0ec0bbea93a.lean/declarations/coe-eq-empty--6dd9a5e372f685596c97382c.md) | 160 | `result-track:6dd9a5e372f685596c97382c0ebddc9d32aecdcddadf63c466d50c1a066e735b` |
| 33 | `theorem` | [isEmpty_coe_sort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantbc77217d483f0e3f1e159e7911ea21cc69647dfcf795c232c218a0ec0bbea93a.lean/declarations/isempty-coe-sort--6b45f25a45a09b675226a59c.md) | 163 | `result-track:6b45f25a45a09b675226a59c5f13ad8abfe377b0e5349120e7bea9fd716354ef` |
| 34 | `instance` | [instIsEmpty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantbc77217d483f0e3f1e159e7911ea21cc69647dfcf795c232c218a0ec0bbea93a.lean/declarations/instisempty--7a40262e0ddb7f151eb24bc3.md) | 166 | `declaration-track:7a40262e0ddb7f151eb24bc3663b8fbefc95b2459361d57fccf54057db0fb40f` |
| 35 | `theorem` | [eq_empty_of_isEmpty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantbc77217d483f0e3f1e159e7911ea21cc69647dfcf795c232c218a0ec0bbea93a.lean/declarations/eq-empty-of-isempty--c364486b32ffd0e06f3565b5.md) | 170 | `result-track:c364486b32ffd0e06f3565b5638a9912e72f975ee926e7982be174b9e5ad865b` |
| 36 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantbc77217d483f0e3f1e159e7911ea21cc69647dfcf795c232c218a0ec0bbea93a.lean/declarations/instance--7ab4804fffb96b87dfeea287.md) | 173 | `declaration-track:7ab4804fffb96b87dfeea2870e4fa68c914a855219b72b16d76ed091a6e8658e` |
| 37 | `theorem` | [bot_eq_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantbc77217d483f0e3f1e159e7911ea21cc69647dfcf795c232c218a0ec0bbea93a.lean/declarations/bot-eq-empty--24e73f977abf726c0decdae0.md) | 178 | `result-track:24e73f977abf726c0decdae06c113351d0aa96a1b873235e296cdb41c6aa32a4` |
| 38 | `theorem` | [empty_ssubset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantbc77217d483f0e3f1e159e7911ea21cc69647dfcf795c232c218a0ec0bbea93a.lean/declarations/empty-ssubset--bb4abeb63c42110610e4155c.md) | 182 | `result-track:bb4abeb63c42110610e4155c144a699b9055072a9204eb8685825cff28fbcaa9` |
| 39 | `theorem` | [exists_mem_empty_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantbc77217d483f0e3f1e159e7911ea21cc69647dfcf795c232c218a0ec0bbea93a.lean/declarations/exists-mem-empty-iff--b81dc5a3554b54649c7eb364.md) | 188 | `result-track:b81dc5a3554b54649c7eb3645f2471a68228096e98585f675647338002ef7913` |
| 40 | `theorem` | [forall_mem_empty_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantbc77217d483f0e3f1e159e7911ea21cc69647dfcf795c232c218a0ec0bbea93a.lean/declarations/forall-mem-empty-iff--64bc99208eabde40b27f7458.md) | 191 | `result-track:64bc99208eabde40b27f74587b96a0e54a6a7ff5f0c830144e6e2fce4aa41412` |
| 41 | `def` | [proveFinsetNonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Empty/Variantbc77217d483f0e3f1e159e7911ea21cc69647dfcf795c232c218a0ec0bbea93a.lean/declarations/provefinsetnonempty--dda39a20cffb09cd97b53800.md) | 209 | `declaration-track:dda39a20cffb09cd97b538000657e4ec2b1884b91494909a2c51d1537c87ea58` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
