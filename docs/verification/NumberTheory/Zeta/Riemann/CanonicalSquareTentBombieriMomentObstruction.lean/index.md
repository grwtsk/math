# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentObstruction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e995ace41d3a4074bfb63ddde0eda2d7df4d779",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentObstruction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentObstruction.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentObstruction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e995ace41d3a4074bfb63ddde0eda2d7df4d779`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentObstruction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentObstruction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentWeilTransportObstruction`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentWeilTransportObstruction.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LocallyIntegrable` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bombieriSourcePublication](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentObstruction.lean/declarations/bombierisourcepublication--c5064340f8d34c38bdab1ec7.md) | 44 | `declaration-track:c5064340f8d34c38bdab1ec7a2fedd5424bdfe427a9d92a1a1222d6144435242` |
| 2 | `def` | [bombieriSourceStatement](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentObstruction.lean/declarations/bombierisourcestatement--32a13f7a274293686ac6dd83.md) | 50 | `declaration-track:32a13f7a274293686ac6dd83f4d8433b392d604ddb2c1041c127dd2135bf063f` |
| 3 | `def` | [canonicalTentReal](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentObstruction.lean/declarations/canonicaltentreal--3f687f57f054b2187cea8bc1.md) | 56 | `declaration-track:3f687f57f054b2187cea8bc1562f8d255467a936026a68ff24eb601e2c1bfe19` |
| 4 | `def` | [canonicalTentComplex](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentObstruction.lean/declarations/canonicaltentcomplex--365db90105a7af68605a1a71.md) | 60 | `declaration-track:365db90105a7af68605a1a718b1247930beafdc37e03c4d09bf5dcd389f18748` |
| 5 | `theorem` | [canonicalTentReal_continuous](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentObstruction.lean/declarations/canonicaltentreal-continuous--da1f64a06df90084880cca0a.md) | 64 | `result-track:da1f64a06df90084880cca0a059699ad76a037a13689f5fcb80b90ead5828ce3` |
| 6 | `theorem` | [canonicalTentReal_hasCompactSupport](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentObstruction.lean/declarations/canonicaltentreal-hascompactsupport--a74de686b1140a8da98b5c39.md) | 71 | `result-track:a74de686b1140a8da98b5c39c273d9cad7c7c0b9ec949789521fdc12cdb3e105` |
| 7 | `theorem` | [canonicalTentReal_integrable](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentObstruction.lean/declarations/canonicaltentreal-integrable--285ca439c78c0d56c95e575f.md) | 85 | `result-track:285ca439c78c0d56c95e575f9b045ca09f537ce0f9bab6a020a5229610e8c416` |
| 8 | `theorem` | [canonicalTentReal_ordinaryMoment_pos](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentObstruction.lean/declarations/canonicaltentreal-ordinarymoment-pos--72dda86c025852a3f10e4310.md) | 93 | `result-track:72dda86c025852a3f10e4310c6bfae458e9c61db3010f72af86de98dfe3ba393` |
| 9 | `def` | [bombieriOrdinaryMoment](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentObstruction.lean/declarations/bombieriordinarymoment--5b94b05a77749b633037437b.md) | 125 | `declaration-track:5b94b05a77749b633037437b8a993a65378e8e3cfb41fe15d743b50021e92349` |
| 10 | `structure` | [BombieriZeroMomentConditions](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentObstruction.lean/declarations/bombierizeromomentconditions--79a653c39afd01740303e13d.md) | 131 | `declaration-track:79a653c39afd01740303e13d086e58d9c2afcafe71d6f4b297bf3d9a522be427` |
| 11 | `theorem` | [bombieriOrdinaryMoment_canonicalTent_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentObstruction.lean/declarations/bombieriordinarymoment-canonicaltent-eq--68cb2a22c1e2299a890f80da.md) | 137 | `result-track:68cb2a22c1e2299a890f80da91a2dac98e134434d68fc52238a95fa825da1718` |
| 12 | `theorem` | [bombieriOrdinaryMoment_canonicalTent_ne_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentObstruction.lean/declarations/bombieriordinarymoment-canonicaltent-ne-zero--04a737b8f502dfd1bb6ebee6.md) | 145 | `result-track:04a737b8f502dfd1bb6ebee66398457cdce6d57fcb3041aef1e684821207995a` |
| 13 | `theorem` | [bombieriOrdinaryMoment_scaledCanonicalTent_ne_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentObstruction.lean/declarations/bombieriordinarymoment-scaledcanonicaltent-ne-zero--a53151c2dcad2c0407e4a09c.md) | 152 | `result-track:a53151c2dcad2c0407e4a09cffd85c35cb55c8c1ddbf014194cbb7ab3c075b2b` |
| 14 | `theorem` | [canonicalTent_not_bombieriZeroMomentConditions](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentObstruction.lean/declarations/canonicaltent-not-bombierizeromomentconditions--1daf6a81e5c6203934924e7f.md) | 161 | `result-track:1daf6a81e5c6203934924e7f6fe27b881c0bee6868a3feb3f4ed27861ab87413` |
| 15 | `structure` | [BombieriScaledCanonicalTentRealization](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentObstruction.lean/declarations/bombieriscaledcanonicaltentrealization--943852617338c07835931709.md) | 175 | `declaration-track:943852617338c07835931709e7b22442551a9ea33d44ab98f90a28ba967e5de5` |
| 16 | `theorem` | [no_bombieriScaledCanonicalTentRealization](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentObstruction.lean/declarations/no-bombieriscaledcanonicaltentrealization--48642beca5ec15fe113a4566.md) | 189 | `result-track:48642beca5ec15fe113a4566b289fc3d152282cb5251789cd9341c0e191ac110` |
| 17 | `theorem` | [no_exactTransport_with_directBombieriTentBasis](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentObstruction.lean/declarations/no-exacttransport-with-directbombieritentbasis--c3c5d46920890e18ad33ed59.md) | 204 | `result-track:c3c5d46920890e18ad33ed596f1770b9c2ac929318e9b0c31cf411a0b8acc68d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
