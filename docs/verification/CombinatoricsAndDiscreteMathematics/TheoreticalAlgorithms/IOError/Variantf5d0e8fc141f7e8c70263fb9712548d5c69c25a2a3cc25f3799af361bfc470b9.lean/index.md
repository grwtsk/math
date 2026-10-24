# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IOError.Variantf5d0e8fc141f7e8c70263fb9712548d5c69c25a2a3cc25f3799af361bfc470b9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf2c26c833cd77a6dd9aa7c9b61369d8088f5964",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IOError/Variantf5d0e8fc141f7e8c70263fb9712548d5c69c25a2a3cc25f3799af361bfc470b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IOError/Variantf5d0e8fc141f7e8c70263fb9712548d5c69c25a2a3cc25f3799af361bfc470b9.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IOError/Variantf5d0e8fc141f7e8c70263fb9712548d5c69c25a2a3cc25f3799af361bfc470b9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf2c26c833cd77a6dd9aa7c9b61369d8088f5964`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IOError/Variantf5d0e8fc141f7e8c70263fb9712548d5c69c25a2a3cc25f3799af361bfc470b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IOError/Variantf5d0e8fc141f7e8c70263fb9712548d5c69c25a2a3cc25f3799af361bfc470b9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.Modify` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [IO.Error](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IOError/Variantf5d0e8fc141f7e8c70263fb9712548d5c69c25a2a3cc25f3799af361bfc470b9.lean/declarations/io-error--5909b17a4e267b15c19e7d3b.md) | 24 | `declaration-track:5909b17a4e267b15c19e7d3b14164d3af2a4fef966c4a5245aad8d2b762cee26` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IOError/Variantf5d0e8fc141f7e8c70263fb9712548d5c69c25a2a3cc25f3799af361bfc470b9.lean/declarations/instance--8c7ca80df1448754124b05de.md) | 142 | `declaration-track:8c7ca80df1448754124b05de083c377691f711519e23d848d6ff731f92febf80` |
| 3 | `def` | [IO.userError](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IOError/Variantf5d0e8fc141f7e8c70263fb9712548d5c69c25a2a3cc25f3799af361bfc470b9.lean/declarations/io-usererror--d04fb13acc01944a8534c32d.md) | 151 | `declaration-track:d04fb13acc01944a8534c32dfa03c4527ebabd32640caef568eb367ff00b7420` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IOError/Variantf5d0e8fc141f7e8c70263fb9712548d5c69c25a2a3cc25f3799af361bfc470b9.lean/declarations/instance--40b8b1f635610c28ce1fa166.md) | 154 | `declaration-track:40b8b1f635610c28ce1fa1666f045a8865aa4557234b77bae5009e8ce048cd61` |
| 5 | `def` | [mkAlreadyExistsFile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IOError/Variantf5d0e8fc141f7e8c70263fb9712548d5c69c25a2a3cc25f3799af361bfc470b9.lean/declarations/mkalreadyexistsfile--9939949dc9573c7b6bf330b2.md) | 159 | `declaration-track:9939949dc9573c7b6bf330b28be62ca7e7296c910da09247da338e48b9ae5380` |
| 6 | `def` | [mkEofError](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IOError/Variantf5d0e8fc141f7e8c70263fb9712548d5c69c25a2a3cc25f3799af361bfc470b9.lean/declarations/mkeoferror--728d1265af06f3017183db7c.md) | 163 | `declaration-track:728d1265af06f3017183db7cb37e878e838ec537fc7595c492fffe99ef08aa48` |
| 7 | `def` | [mkInappropriateTypeFile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IOError/Variantf5d0e8fc141f7e8c70263fb9712548d5c69c25a2a3cc25f3799af361bfc470b9.lean/declarations/mkinappropriatetypefile--20d331748d7154fa84a58b66.md) | 167 | `declaration-track:20d331748d7154fa84a58b661e5a21f0195f5f73ad5c091837a71d66975ca681` |
| 8 | `def` | [mkInterrupted](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IOError/Variantf5d0e8fc141f7e8c70263fb9712548d5c69c25a2a3cc25f3799af361bfc470b9.lean/declarations/mkinterrupted--b370a72ae086fa490c7615d4.md) | 171 | `declaration-track:b370a72ae086fa490c7615d4725c272c6b2e70db17bf9d32947d184cb88be634` |
| 9 | `def` | [mkInvalidArgumentFile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IOError/Variantf5d0e8fc141f7e8c70263fb9712548d5c69c25a2a3cc25f3799af361bfc470b9.lean/declarations/mkinvalidargumentfile--0f13b44d75c29a500bf4c859.md) | 175 | `declaration-track:0f13b44d75c29a500bf4c859b803a7d216ba2f6da978da599d9fb1ea27c1a1f8` |
| 10 | `def` | [mkNoFileOrDirectory](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IOError/Variantf5d0e8fc141f7e8c70263fb9712548d5c69c25a2a3cc25f3799af361bfc470b9.lean/declarations/mknofileordirectory--6109929453d41f3cde5e58b7.md) | 179 | `declaration-track:6109929453d41f3cde5e58b76e9bec42526cf1a8d51317e10bc52959695610f4` |
| 11 | `def` | [mkNoSuchThingFile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IOError/Variantf5d0e8fc141f7e8c70263fb9712548d5c69c25a2a3cc25f3799af361bfc470b9.lean/declarations/mknosuchthingfile--a46c5311f6e7efe82e03f584.md) | 183 | `declaration-track:a46c5311f6e7efe82e03f584a6720b17292cd44fd577b18f659a84d60a6ec358` |
| 12 | `def` | [mkPermissionDeniedFile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IOError/Variantf5d0e8fc141f7e8c70263fb9712548d5c69c25a2a3cc25f3799af361bfc470b9.lean/declarations/mkpermissiondeniedfile--18f43e2a09d69f58ee518bca.md) | 187 | `declaration-track:18f43e2a09d69f58ee518bcad052a90a52a151bae6c6b0e9f4306a4fbaba9a6b` |
| 13 | `def` | [mkResourceExhaustedFile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IOError/Variantf5d0e8fc141f7e8c70263fb9712548d5c69c25a2a3cc25f3799af361bfc470b9.lean/declarations/mkresourceexhaustedfile--8ce64bf2a84bc0a17d362941.md) | 191 | `declaration-track:8ce64bf2a84bc0a17d362941f15275d96138aee63af63382bbeebe145b051d50` |
| 14 | `def` | [mkUnsupportedOperation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IOError/Variantf5d0e8fc141f7e8c70263fb9712548d5c69c25a2a3cc25f3799af361bfc470b9.lean/declarations/mkunsupportedoperation--5b4f7f48056fc8e524b70184.md) | 195 | `declaration-track:5b4f7f48056fc8e524b70184a9428b909fb6e174d62f610efe3bfcdbd33dc861` |
| 15 | `def` | [mkResourceExhausted](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IOError/Variantf5d0e8fc141f7e8c70263fb9712548d5c69c25a2a3cc25f3799af361bfc470b9.lean/declarations/mkresourceexhausted--41006223dcbe1db99ae6c299.md) | 199 | `declaration-track:41006223dcbe1db99ae6c299ccbb2f02e7ae58dccc827e54ad4cd205db03e841` |
| 16 | `def` | [mkAlreadyExists](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IOError/Variantf5d0e8fc141f7e8c70263fb9712548d5c69c25a2a3cc25f3799af361bfc470b9.lean/declarations/mkalreadyexists--ccfdbec566a891efc8546aa2.md) | 203 | `declaration-track:ccfdbec566a891efc8546aa275fa0f966df7a812ef4c354c45ccf747c6dbd28c` |
| 17 | `def` | [mkInappropriateType](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IOError/Variantf5d0e8fc141f7e8c70263fb9712548d5c69c25a2a3cc25f3799af361bfc470b9.lean/declarations/mkinappropriatetype--5d31c1af52f354cb69fac603.md) | 207 | `declaration-track:5d31c1af52f354cb69fac6031fdbb7130c379ec0a04d29ee3b0c9f2c9e537d48` |
| 18 | `def` | [mkNoSuchThing](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IOError/Variantf5d0e8fc141f7e8c70263fb9712548d5c69c25a2a3cc25f3799af361bfc470b9.lean/declarations/mknosuchthing--84479fadab54ae3e8e4a9446.md) | 211 | `declaration-track:84479fadab54ae3e8e4a9446ca9c6031194b9f878d2e4cb561dbb3ef64c6a115` |
| 19 | `def` | [mkResourceVanished](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IOError/Variantf5d0e8fc141f7e8c70263fb9712548d5c69c25a2a3cc25f3799af361bfc470b9.lean/declarations/mkresourcevanished--c85325f6645f97ae252430a1.md) | 215 | `declaration-track:c85325f6645f97ae252430a1212d389557967801fbb8ce63670ca26ca4bc9de6` |
| 20 | `def` | [mkResourceBusy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IOError/Variantf5d0e8fc141f7e8c70263fb9712548d5c69c25a2a3cc25f3799af361bfc470b9.lean/declarations/mkresourcebusy--6e5c10f6b15825a42114eb18.md) | 219 | `declaration-track:6e5c10f6b15825a42114eb187281d8b6d2b3dbd57b6a7c3d3365163c7eb713c9` |
| 21 | `def` | [mkInvalidArgument](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IOError/Variantf5d0e8fc141f7e8c70263fb9712548d5c69c25a2a3cc25f3799af361bfc470b9.lean/declarations/mkinvalidargument--dd7d318de5eb3ab945473943.md) | 223 | `declaration-track:dd7d318de5eb3ab945473943764568259538e39fa98de7a593e37f95b7022e4c` |
| 22 | `def` | [mkOtherError](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IOError/Variantf5d0e8fc141f7e8c70263fb9712548d5c69c25a2a3cc25f3799af361bfc470b9.lean/declarations/mkothererror--532e04393f2c79786255100a.md) | 227 | `declaration-track:532e04393f2c79786255100a3a612302a456efab77203160b658a4fe16d09b86` |
| 23 | `def` | [mkPermissionDenied](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IOError/Variantf5d0e8fc141f7e8c70263fb9712548d5c69c25a2a3cc25f3799af361bfc470b9.lean/declarations/mkpermissiondenied--7552c42f54b256b8342f48aa.md) | 231 | `declaration-track:7552c42f54b256b8342f48aae004648ef49ca1629340d5b34112ced2f44f7062` |
| 24 | `def` | [mkHardwareFault](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IOError/Variantf5d0e8fc141f7e8c70263fb9712548d5c69c25a2a3cc25f3799af361bfc470b9.lean/declarations/mkhardwarefault--b1256201f70fdffdc8f63d51.md) | 235 | `declaration-track:b1256201f70fdffdc8f63d51226592d1410a2883e95c76fb6d85a4a92ac06b7d` |
| 25 | `def` | [mkUnsatisfiedConstraints](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IOError/Variantf5d0e8fc141f7e8c70263fb9712548d5c69c25a2a3cc25f3799af361bfc470b9.lean/declarations/mkunsatisfiedconstraints--7b0e153fa236b0abadc22dac.md) | 239 | `declaration-track:7b0e153fa236b0abadc22dacda74f48dad02a795387a7e7ae59cbc1ac0535eed` |
| 26 | `def` | [mkIllegalOperation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IOError/Variantf5d0e8fc141f7e8c70263fb9712548d5c69c25a2a3cc25f3799af361bfc470b9.lean/declarations/mkillegaloperation--277fe841a02440139c0e3027.md) | 243 | `declaration-track:277fe841a02440139c0e30275cd1a2a5e6517f9f0f1c85d8486db4a033328750` |
| 27 | `def` | [mkProtocolError](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IOError/Variantf5d0e8fc141f7e8c70263fb9712548d5c69c25a2a3cc25f3799af361bfc470b9.lean/declarations/mkprotocolerror--be994f0179f1d357ade3fb83.md) | 247 | `declaration-track:be994f0179f1d357ade3fb83e4d46b1eadb4c4c83c692e9e39fb3faf086bb6b1` |
| 28 | `def` | [mkTimeExpired](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IOError/Variantf5d0e8fc141f7e8c70263fb9712548d5c69c25a2a3cc25f3799af361bfc470b9.lean/declarations/mktimeexpired--5b2b48dece790ff76c51a077.md) | 251 | `declaration-track:5b2b48dece790ff76c51a0776e27602a194885e7830cbf6047038b59b4a47654` |
| 29 | `def` | [downCaseFirst](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IOError/Variantf5d0e8fc141f7e8c70263fb9712548d5c69c25a2a3cc25f3799af361bfc470b9.lean/declarations/downcasefirst--b4266b1c24cefe5388fe9d71.md) | 254 | `declaration-track:b4266b1c24cefe5388fe9d71f3d0c3e92183ae90f8337774370ec4baaa16a352` |
| 30 | `def` | [fopenErrorToString](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IOError/Variantf5d0e8fc141f7e8c70263fb9712548d5c69c25a2a3cc25f3799af361bfc470b9.lean/declarations/fopenerrortostring--582886fc32154fb3f1e27f11.md) | 256 | `declaration-track:582886fc32154fb3f1e27f11571c7047b9a446beb963c15064c09dbf55f05dad` |
| 31 | `def` | [otherErrorToString](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IOError/Variantf5d0e8fc141f7e8c70263fb9712548d5c69c25a2a3cc25f3799af361bfc470b9.lean/declarations/othererrortostring--41c9e2209a4a5cf31da5634c.md) | 260 | `declaration-track:41c9e2209a4a5cf31da5634c82627f41639305f94a52f963fb201d9e8e512987` |
| 32 | `def` | [toString](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IOError/Variantf5d0e8fc141f7e8c70263fb9712548d5c69c25a2a3cc25f3799af361bfc470b9.lean/declarations/tostring--e45c968d1e3b18320fbc1744.md) | 272 | `declaration-track:e45c968d1e3b18320fbc1744962f3f6e451b98e3d48df75d5040227cf53455cd` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IOError/Variantf5d0e8fc141f7e8c70263fb9712548d5c69c25a2a3cc25f3799af361bfc470b9.lean/declarations/instance--75057cef58cb9e974fb67dd4.md) | 299 | `declaration-track:75057cef58cb9e974fb67dd4a1001b3ccc479dce27ff778f54a1f346ae3c47c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
