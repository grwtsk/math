# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LegacyForward.Variant005015bc4afc633756cdb2957880f8e9b6671fc0a7167e89924317d79e8666a5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "32e9c06aa885643708d6b4a448033fad1389d64f",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant005015bc4afc633756cdb2957880f8e9b6671fc0a7167e89924317d79e8666a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant005015bc4afc633756cdb2957880f8e9b6671fc0a7167e89924317d79e8666a5.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant005015bc4afc633756cdb2957880f8e9b6671fc0a7167e89924317d79e8666a5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `32e9c06aa885643708d6b4a448033fad1389d64f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant005015bc4afc633756cdb2957880f8e9b6671fc0a7167e89924317d79e8666a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant005015bc4afc633756cdb2957880f8e9b6671fc0a7167e89924317d79e8666a5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Aesop` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant005015bc4afc633756cdb2957880f8e9b6671fc0a7167e89924317d79e8666a5.lean/declarations/syntax--d7b9815174987deca4d88211.md) | 20 | `declaration-track:d7b9815174987deca4d88211f35c4f326de58c7c4f1364a543ac0782a61b95ce` |
| 2 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant005015bc4afc633756cdb2957880f8e9b6671fc0a7167e89924317d79e8666a5.lean/declarations/syntax--894173b1fa6845a33b6c9a06.md) | 21 | `declaration-track:894173b1fa6845a33b6c9a06988a8b8c774c2431366edca3e658d35841bfc051` |
| 3 | `def` | [forwardTac](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant005015bc4afc633756cdb2957880f8e9b6671fc0a7167e89924317d79e8666a5.lean/declarations/forwardtac--8ab6b417715975deb1c6f37a.md) | 23 | `declaration-track:8ab6b417715975deb1c6f37aaa334dee8e7af82c76b7e592a6d53415eb5ef933` |
| 4 | `def` | [evalForward](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant005015bc4afc633756cdb2957880f8e9b6671fc0a7167e89924317d79e8666a5.lean/declarations/evalforward--d6dd353a3171466c9bca9088.md) | 35 | `declaration-track:d6dd353a3171466c9bca9088466078c3eb9ec6c2da0c85107aaac0b09bb71c47` |
| 5 | `def` | [evalElim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant005015bc4afc633756cdb2957880f8e9b6671fc0a7167e89924317d79e8666a5.lean/declarations/evalelim--83df0d000bddcb8bbad2d078.md) | 41 | `declaration-track:83df0d000bddcb8bbad2d078de9808c8bf080885bf2d9df9907207de931b1e09` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant005015bc4afc633756cdb2957880f8e9b6671fc0a7167e89924317d79e8666a5.lean/declarations/example--ca2cfd6e13456fb7d299deab.md) | 46 | `declaration-track:ca2cfd6e13456fb7d299deabd074ec767fd7d0d98bcc7e0288a3eba7ac9fc7fc` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant005015bc4afc633756cdb2957880f8e9b6671fc0a7167e89924317d79e8666a5.lean/declarations/example--e1fbae34f1fadac05f0ba721.md) | 50 | `declaration-track:e1fbae34f1fadac05f0ba721b5d787f6d2e4b72069b6ae8230d2a69bd07ff4d3` |
| 8 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant005015bc4afc633756cdb2957880f8e9b6671fc0a7167e89924317d79e8666a5.lean/declarations/example--18b2d3c69f0e5db3c12f68cf.md) | 55 | `declaration-track:18b2d3c69f0e5db3c12f68cf54ce1834665b84ecf3791ac142892868cd79f823` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant005015bc4afc633756cdb2957880f8e9b6671fc0a7167e89924317d79e8666a5.lean/declarations/example--da7e0d6c9dd35173ace0cb7d.md) | 60 | `declaration-track:da7e0d6c9dd35173ace0cb7da41b229e7cfd53a6699130cc980e7f14e5259981` |
| 10 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant005015bc4afc633756cdb2957880f8e9b6671fc0a7167e89924317d79e8666a5.lean/declarations/example--3d12a5a221e7d43322a76193.md) | 65 | `declaration-track:3d12a5a221e7d43322a7619342cbe21ea43f3b95b00e614178d4286bc7f3d1dc` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant005015bc4afc633756cdb2957880f8e9b6671fc0a7167e89924317d79e8666a5.lean/declarations/example--c97945060d0a0a42ced33f5f.md) | 77 | `declaration-track:c97945060d0a0a42ced33f5f8751f7913eda3eea756e0be99556c938aed2fe99` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant005015bc4afc633756cdb2957880f8e9b6671fc0a7167e89924317d79e8666a5.lean/declarations/example--3c97f49599a33ee6c0fe80c7.md) | 89 | `declaration-track:3c97f49599a33ee6c0fe80c7a6b461517af2fc3af5462fd46c19a37b591cb3c1` |
| 13 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant005015bc4afc633756cdb2957880f8e9b6671fc0a7167e89924317d79e8666a5.lean/declarations/example--b5c0c88d0df8c87ef695d6c3.md) | 103 | `declaration-track:b5c0c88d0df8c87ef695d6c317e17750fb06e44269d30793f46d2da0ac51efe0` |
| 14 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant005015bc4afc633756cdb2957880f8e9b6671fc0a7167e89924317d79e8666a5.lean/declarations/example--d31379dd3911e3acb2984a5c.md) | 123 | `declaration-track:d31379dd3911e3acb2984a5c776866c2515549509a81dcc87b64f1b159035807` |
| 15 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant005015bc4afc633756cdb2957880f8e9b6671fc0a7167e89924317d79e8666a5.lean/declarations/example--7586a03073e68c20fc747e81.md) | 140 | `declaration-track:7586a03073e68c20fc747e81a6a5e34ce204cae69eacdd6a7a1a95bfd568b1de` |
| 16 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant005015bc4afc633756cdb2957880f8e9b6671fc0a7167e89924317d79e8666a5.lean/declarations/example--606b306fa554ba0b7d2c8eb1.md) | 160 | `declaration-track:606b306fa554ba0b7d2c8eb1e8a3d966584032adbc74805930b994cf7f4bf65a` |
| 17 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant005015bc4afc633756cdb2957880f8e9b6671fc0a7167e89924317d79e8666a5.lean/declarations/example--809d3c13c6d8fd6a9ffede4f.md) | 180 | `declaration-track:809d3c13c6d8fd6a9ffede4fc13d3bf5af17588437f293f89a004cf6f70b56d2` |
| 18 | `axiom` | [A](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant005015bc4afc633756cdb2957880f8e9b6671fc0a7167e89924317d79e8666a5.lean/declarations/a--21dd373bbadb209168b16845.md) | 183 | `declaration-track:21dd373bbadb209168b16845b9531e0e2c9eac08925843b61658b9527dfbfaba` |
| 19 | `axiom` | [B](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant005015bc4afc633756cdb2957880f8e9b6671fc0a7167e89924317d79e8666a5.lean/declarations/b--9f65ebf93c3fb8664205af91.md) | 184 | `declaration-track:9f65ebf93c3fb8664205af9148150fd516ce50b7299546830de57286261e66a5` |
| 20 | `axiom` | [C](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant005015bc4afc633756cdb2957880f8e9b6671fc0a7167e89924317d79e8666a5.lean/declarations/c--4d6194b85e51b27a4807d557.md) | 185 | `declaration-track:4d6194b85e51b27a4807d55706ef79521f5c826846d975a3f333a9746b21a5d8` |
| 21 | `axiom` | [ab](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant005015bc4afc633756cdb2957880f8e9b6671fc0a7167e89924317d79e8666a5.lean/declarations/ab--edfb5d461215a2e850ac8d59.md) | 188 | `declaration-track:edfb5d461215a2e850ac8d59e06be3d4cdfee29f8fd7feab78738366ffba642c` |
| 22 | `axiom` | [bc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant005015bc4afc633756cdb2957880f8e9b6671fc0a7167e89924317d79e8666a5.lean/declarations/bc--79b9fd83495782d4d8a30255.md) | 191 | `declaration-track:79b9fd83495782d4d8a30255674d090cbb90a9bf23e8b3c945b4917106ecd25a` |
| 23 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant005015bc4afc633756cdb2957880f8e9b6671fc0a7167e89924317d79e8666a5.lean/declarations/example--98748929bef843cfcfeb0925.md) | 200 | `declaration-track:98748929bef843cfcfeb092558ecd7ed65b67293065ccd07d60b85ec5ab4c165` |
| 24 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant005015bc4afc633756cdb2957880f8e9b6671fc0a7167e89924317d79e8666a5.lean/declarations/example--a9ef64d0b2ac86cda9c5e1a9.md) | 209 | `declaration-track:a9ef64d0b2ac86cda9c5e1a9dfa73cf91907a88f17d65985b8d3e1da366769c9` |
| 25 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant005015bc4afc633756cdb2957880f8e9b6671fc0a7167e89924317d79e8666a5.lean/declarations/example--ba6e6098b0f4858b13f41dc5.md) | 223 | `declaration-track:ba6e6098b0f4858b13f41dc57794e7e53115d7be44dc597a434808709807eb5f` |
| 26 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant005015bc4afc633756cdb2957880f8e9b6671fc0a7167e89924317d79e8666a5.lean/declarations/example--c55b7187eeb36f774ede2923.md) | 229 | `declaration-track:c55b7187eeb36f774ede29237a5fbaa508c7cd8a7c37e4e2a513b6c7989f2806` |
| 27 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant005015bc4afc633756cdb2957880f8e9b6671fc0a7167e89924317d79e8666a5.lean/declarations/example--62d820497cd5a0e5754ceeee.md) | 238 | `declaration-track:62d820497cd5a0e5754ceeee36442ebedd3d83a638254bffc212a86f4f6e55fe` |
| 28 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LegacyForward/Variant005015bc4afc633756cdb2957880f8e9b6671fc0a7167e89924317d79e8666a5.lean/declarations/example--a1c8552fb7000d77820e7342.md) | 243 | `declaration-track:a1c8552fb7000d77820e734295577cd52ee7f1602cf082de75f0ac8251fbca20` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
