# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SurfaceRefactorProtocolMain.Variant8aad4875139cecc88ab19f134945b7e53f462d7d066568cbf1c2f232067c3254

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd66827287f55c62dbef43667a32a9ad08cdee85",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant8aad4875139cecc88ab19f134945b7e53f462d7d066568cbf1c2f232067c3254.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant8aad4875139cecc88ab19f134945b7e53f462d7d066568cbf1c2f232067c3254.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant8aad4875139cecc88ab19f134945b7e53f462d7d066568cbf1c2f232067c3254.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd66827287f55c62dbef43667a32a9ad08cdee85`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant8aad4875139cecc88ab19f134945b7e53f462d7d066568cbf1c2f232067c3254.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant8aad4875139cecc88ab19f134945b7e53f462d7d066568cbf1c2f232067c3254.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 6; external provider; requires a separately pinned dependency.
- `Lean.Util.CollectAxioms` — import line 7; external provider; requires a separately pinned dependency.
- `Lean.Util.FoldConsts` — import line 8; external provider; requires a separately pinned dependency.
- `Surface` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [requestSchema](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant8aad4875139cecc88ab19f134945b7e53f462d7d066568cbf1c2f232067c3254.lean/declarations/requestschema--fc695161e426e79f6e890a46.md) | 28 | `declaration-track:fc695161e426e79f6e890a4621c475a55be3a23cf4599fda5913d56d4d3bd2e8` |
| 2 | `def` | [responseSchema](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant8aad4875139cecc88ab19f134945b7e53f462d7d066568cbf1c2f232067c3254.lean/declarations/responseschema--768bd655fa7b45586acd6a0a.md) | 30 | `declaration-track:768bd655fa7b45586acd6a0a581f20ce7f062394f8b4dcedf3d9a7236ddcf2de` |
| 3 | `def` | [protocolVersion](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant8aad4875139cecc88ab19f134945b7e53f462d7d066568cbf1c2f232067c3254.lean/declarations/protocolversion--f549531979fd010526cd0cb6.md) | 32 | `declaration-track:f549531979fd010526cd0cb6bd1c05a78ef53417214197ca18d079c21d432009` |
| 4 | `structure` | [Request](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant8aad4875139cecc88ab19f134945b7e53f462d7d066568cbf1c2f232067c3254.lean/declarations/request--31cb99ce087071ffa21bafc9.md) | 34 | `declaration-track:31cb99ce087071ffa21bafc9b5525759d850e5d68f780cc977bf71d77338cb32` |
| 5 | `structure` | [ProtocolError](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant8aad4875139cecc88ab19f134945b7e53f462d7d066568cbf1c2f232067c3254.lean/declarations/protocolerror--e4f437d022fb933516474d94.md) | 43 | `declaration-track:e4f437d022fb933516474d9459e5f3ac907cc1be25b42a90ff82a4787d6e481c` |
| 6 | `abbrev` | [ProtocolM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant8aad4875139cecc88ab19f134945b7e53f462d7d066568cbf1c2f232067c3254.lean/declarations/protocolm--e98963b45d9012407f4bc680.md) | 48 | `declaration-track:e98963b45d9012407f4bc680102800ddf49dacc6525d92f89c44924ec1761ba3` |
| 7 | `def` | [requestFieldOrEmpty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant8aad4875139cecc88ab19f134945b7e53f462d7d066568cbf1c2f232067c3254.lean/declarations/requestfieldorempty--badc151460bf3d8ae78607ee.md) | 50 | `declaration-track:badc151460bf3d8ae78607ee3d9ab3413d2f79e9099be8182657cd0360189cf9` |
| 8 | `def` | [nameFromDottedString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant8aad4875139cecc88ab19f134945b7e53f462d7d066568cbf1c2f232067c3254.lean/declarations/namefromdottedstring--174835611670809b1f2eae05.md) | 55 | `declaration-track:174835611670809b1f2eae05f9898586ccd2037ed537202cc4404c7776f76140` |
| 9 | `def` | [declarationModule](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant8aad4875139cecc88ab19f134945b7e53f462d7d066568cbf1c2f232067c3254.lean/declarations/declarationmodule--4dd6b9dfafd2127482bf07a7.md) | 58 | `declaration-track:4dd6b9dfafd2127482bf07a7496c6edb52ff39faac02950184101f1f926f0b80` |
| 10 | `def` | [environmentFingerprint](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant8aad4875139cecc88ab19f134945b7e53f462d7d066568cbf1c2f232067c3254.lean/declarations/environmentfingerprint--79e0444aee6e5524f8c6b69f.md) | 63 | `declaration-track:79e0444aee6e5524f8c6b69f712ec2b46c4cf3cb3f259ad402d98ce4ef61f2d7` |
| 11 | `def` | [constantKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant8aad4875139cecc88ab19f134945b7e53f462d7d066568cbf1c2f232067c3254.lean/declarations/constantkind--d9ff6b3c9dbcfd09f8828aeb.md) | 67 | `declaration-track:d9ff6b3c9dbcfd09f8828aebea5d9aee8ca947bf1270061edbdfad30fd126b60` |
| 12 | `def` | [classificationTags](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant8aad4875139cecc88ab19f134945b7e53f462d7d066568cbf1c2f232067c3254.lean/declarations/classificationtags--3c65fca31ab69542d51d2bad.md) | 77 | `declaration-track:3c65fca31ab69542d51d2bad9c72711db92a2cdba009908cf2f99e322d3aca32` |
| 13 | `def` | [positionJson](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant8aad4875139cecc88ab19f134945b7e53f462d7d066568cbf1c2f232067c3254.lean/declarations/positionjson--210b1fc1f3406b68b05de92b.md) | 84 | `declaration-track:210b1fc1f3406b68b05de92b2d338ae93c319ee45f7803ee0c790c9b7e26392e` |
| 14 | `def` | [rangesJson](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant8aad4875139cecc88ab19f134945b7e53f462d7d066568cbf1c2f232067c3254.lean/declarations/rangesjson--a085599cf13d1f61c73636f8.md) | 87 | `declaration-track:a085599cf13d1f61c73636f85d99104560b3e42903dba546f4877d34c0328ae9` |
| 15 | `def` | [errorJson](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant8aad4875139cecc88ab19f134945b7e53f462d7d066568cbf1c2f232067c3254.lean/declarations/errorjson--56e0d81ef6e1f68b705ef654.md) | 96 | `declaration-track:56e0d81ef6e1f68b705ef65481b8fbfd6baf4520079803b46cd536bc6b621c0b` |
| 16 | `def` | [responseBase](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant8aad4875139cecc88ab19f134945b7e53f462d7d066568cbf1c2f232067c3254.lean/declarations/responsebase--3dc782c56797cc120227bd5a.md) | 103 | `declaration-track:3dc782c56797cc120227bd5a97d19cac346cc150743a233335dc51baac51ba4b` |
| 17 | `def` | [success](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant8aad4875139cecc88ab19f134945b7e53f462d7d066568cbf1c2f232067c3254.lean/declarations/success--5e80251e43c90f20eb16a6f6.md) | 118 | `declaration-track:5e80251e43c90f20eb16a6f652881141c766aa918ffe8e419ff15b275d5e8c7b` |
| 18 | `def` | [failure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant8aad4875139cecc88ab19f134945b7e53f462d7d066568cbf1c2f232067c3254.lean/declarations/failure--2581d63cf05f514ff0fbbac8.md) | 124 | `declaration-track:2581d63cf05f514ff0fbbac8354606b06cf49fea5282c239a0f9c03a7610cfe6` |
| 19 | `def` | [payload](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant8aad4875139cecc88ab19f134945b7e53f462d7d066568cbf1c2f232067c3254.lean/declarations/payload--7e7ca9555bd2d34873ca1c41.md) | 131 | `declaration-track:7e7ca9555bd2d34873ca1c41a69ab76414bbe0162b2a4097da4d652fb091ecbf` |
| 20 | `def` | [requirePayloadString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant8aad4875139cecc88ab19f134945b7e53f462d7d066568cbf1c2f232067c3254.lean/declarations/requirepayloadstring--c94d28cc43f4502b3337c25c.md) | 134 | `declaration-track:c94d28cc43f4502b3337c25c654c571cbb42d1a3f4b748861592735239e383b1` |
| 21 | `def` | [requireDeclaration](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant8aad4875139cecc88ab19f134945b7e53f462d7d066568cbf1c2f232067c3254.lean/declarations/requiredeclaration--7e03fe905bf2f26257da7a41.md) | 144 | `declaration-track:7e03fe905bf2f26257da7a41d8847c5f70530f84afd81059ee6ed021cbba6413` |
| 22 | `def` | [inspectCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant8aad4875139cecc88ab19f134945b7e53f462d7d066568cbf1c2f232067c3254.lean/declarations/inspectcore--34de6c093682f609c476786a.md) | 156 | `declaration-track:34de6c093682f609c476786a6d587ecd5587aac7f1592b898b19b78609f7c58c` |
| 23 | `def` | [declarationDescription](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant8aad4875139cecc88ab19f134945b7e53f462d7d066568cbf1c2f232067c3254.lean/declarations/declarationdescription--5d903b263e828fc56f180fb4.md) | 169 | `declaration-track:5d903b263e828fc56f180fb4b1ef1aa7e6663e7e78b15b5d2edd9aee217e2605` |
| 24 | `def` | [canonicalDeclarations](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant8aad4875139cecc88ab19f134945b7e53f462d7d066568cbf1c2f232067c3254.lean/declarations/canonicaldeclarations--cce12460a674ffee547d152b.md) | 189 | `declaration-track:cce12460a674ffee547d152b0ea792a5d77c9c1c1d366ea15be74d85a206e0ed` |
| 25 | `def` | [projectDescription](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant8aad4875139cecc88ab19f134945b7e53f462d7d066568cbf1c2f232067c3254.lean/declarations/projectdescription--5613a878bcccde92dcfbd859.md) | 196 | `declaration-track:5613a878bcccde92dcfbd8596f184ea74abbd0eee22218e0e6a82625368f6cc7` |
| 26 | `def` | [projectIndex](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant8aad4875139cecc88ab19f134945b7e53f462d7d066568cbf1c2f232067c3254.lean/declarations/projectindex--5d32d5400583c2e9c0762338.md) | 207 | `declaration-track:5d32d5400583c2e9c0762338d0b4f8a4eae497d5f48e571bd7c23ff5f0201e19` |
| 27 | `def` | [publicApiSnapshot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant8aad4875139cecc88ab19f134945b7e53f462d7d066568cbf1c2f232067c3254.lean/declarations/publicapisnapshot--8b2bc913662c0abb25671237.md) | 222 | `declaration-track:8b2bc913662c0abb25671237e40a167504ca2c070743a7874d32443e1e5aed61` |
| 28 | `def` | [patchEnvelopeValidation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant8aad4875139cecc88ab19f134945b7e53f462d7d066568cbf1c2f232067c3254.lean/declarations/patchenvelopevalidation--6639fc2efec2a4f6781932cd.md) | 236 | `declaration-track:6639fc2efec2a4f6781932cd94c082431c4c94d6d91928e0e37605dc0fb08ee2` |
| 29 | `def` | [dispatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant8aad4875139cecc88ab19f134945b7e53f462d7d066568cbf1c2f232067c3254.lean/declarations/dispatch--75e4c07926ed89659137a525.md) | 261 | `declaration-track:75e4c07926ed89659137a525a8917699002444843b410ca62e7f9e9f8bc629e4` |
| 30 | `def` | [processLine](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant8aad4875139cecc88ab19f134945b7e53f462d7d066568cbf1c2f232067c3254.lean/declarations/processline--df0c5ff8052f437f2005a970.md) | 364 | `declaration-track:df0c5ff8052f437f2005a970d48494811d3fd78edc952bfea2227d4272f45ab4` |
| 31 | `def` | [serve](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant8aad4875139cecc88ab19f134945b7e53f462d7d066568cbf1c2f232067c3254.lean/declarations/serve--d1290509b8dfa321f5007358.md) | 395 | `declaration-track:d1290509b8dfa321f5007358a3854fbe8189c332b17a58f74471bdb34e06dd86` |
| 32 | `def` | [main](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant8aad4875139cecc88ab19f134945b7e53f462d7d066568cbf1c2f232067c3254.lean/declarations/main--91fc4ef9dc545685bc803612.md) | 404 | `declaration-track:91fc4ef9dc545685bc803612884f489fb2dfd51c27b10f7e2ce02848380e08a6` |
| 33 | `def` | [main](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant8aad4875139cecc88ab19f134945b7e53f462d7d066568cbf1c2f232067c3254.lean/declarations/main--7a95778ba97c889c710d1be8.md) | 419 | `declaration-track:7a95778ba97c889c710d1be8fc26c8e6cf35f532240f51016fe1bdd4755c86cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
