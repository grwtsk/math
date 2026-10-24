# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.RoutingStatus.Variant896a9d41bf2b2c9a6f77b3c7481d1d351cbb1d1d08671d1ffa7db8b9aa7e50fa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5fa5903bf5552c6b56431f1db9e387ccd74b2267",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/RoutingStatus/Variant896a9d41bf2b2c9a6f77b3c7481d1d351cbb1d1d08671d1ffa7db8b9aa7e50fa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RoutingStatus/Variant896a9d41bf2b2c9a6f77b3c7481d1d351cbb1d1d08671d1ffa7db8b9aa7e50fa.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RoutingStatus/Variant896a9d41bf2b2c9a6f77b3c7481d1d351cbb1d1d08671d1ffa7db8b9aa7e50fa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5fa5903bf5552c6b56431f1db9e387ccd74b2267`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/RoutingStatus/Variant896a9d41bf2b2c9a6f77b3c7481d1d351cbb1d1d08671d1ffa7db8b9aa7e50fa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/RoutingStatus/Variant896a9d41bf2b2c9a6f77b3c7481d1d351cbb1d1d08671d1ffa7db8b9aa7e50fa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Projection.FormalNeighborhood` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.Core.SemanticIdentity` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [BoundaryStatus](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RoutingStatus/Variant896a9d41bf2b2c9a6f77b3c7481d1d351cbb1d1d08671d1ffa7db8b9aa7e50fa.lean/declarations/boundarystatus--e9fd204c7825cc16ca215332.md) | 24 | `declaration-track:e9fd204c7825cc16ca21533241968f6242181ff017338ae8acbb48f29f66bc1f` |
| 2 | `inductive` | [RoutingObstruction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RoutingStatus/Variant896a9d41bf2b2c9a6f77b3c7481d1d351cbb1d1d08671d1ffa7db8b9aa7e50fa.lean/declarations/routingobstruction--51f66a3e4966e6ab76b44d2f.md) | 30 | `declaration-track:51f66a3e4966e6ab76b44d2fbadac18d192dc8821ab1b4245ecc118af5944980` |
| 3 | `structure` | [RoutingResidue](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RoutingStatus/Variant896a9d41bf2b2c9a6f77b3c7481d1d351cbb1d1d08671d1ffa7db8b9aa7e50fa.lean/declarations/routingresidue--c949e12ed86503c36a9ca1c7.md) | 38 | `declaration-track:c949e12ed86503c36a9ca1c73f59531e72154667d61f4e198ecd5ce647a12e21` |
| 4 | `inductive` | [SeparationStatus](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RoutingStatus/Variant896a9d41bf2b2c9a6f77b3c7481d1d351cbb1d1d08671d1ffa7db8b9aa7e50fa.lean/declarations/separationstatus--d853695602a700c180d4e41c.md) | 47 | `declaration-track:d853695602a700c180d4e41c00b7e2f450293a90ebdc4c80ef0c5c46e50c084e` |
| 5 | `inductive` | [RouteStatus](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RoutingStatus/Variant896a9d41bf2b2c9a6f77b3c7481d1d351cbb1d1d08671d1ffa7db8b9aa7e50fa.lean/declarations/routestatus--f76414db5b133b413d094d53.md) | 54 | `declaration-track:f76414db5b133b413d094d53b93795a420ef96154f89b6e2a61e65112d7b8a32` |
| 6 | `structure` | [IntrinsicPosition](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RoutingStatus/Variant896a9d41bf2b2c9a6f77b3c7481d1d351cbb1d1d08671d1ffa7db8b9aa7e50fa.lean/declarations/intrinsicposition--1980c57cb75363b164d41bf1.md) | 60 | `declaration-track:1980c57cb75363b164d41bf1f2a34da9f2d0521e3429ad9741750dd9777a873f` |
| 7 | `structure` | [IncidenceSingleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RoutingStatus/Variant896a9d41bf2b2c9a6f77b3c7481d1d351cbb1d1d08671d1ffa7db8b9aa7e50fa.lean/declarations/incidencesingleton--88e8977e609076c5a448f2d3.md) | 68 | `declaration-track:88e8977e609076c5a448f2d387d9beebf907cf051d8cbe87fb28d3d7192ce0b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
