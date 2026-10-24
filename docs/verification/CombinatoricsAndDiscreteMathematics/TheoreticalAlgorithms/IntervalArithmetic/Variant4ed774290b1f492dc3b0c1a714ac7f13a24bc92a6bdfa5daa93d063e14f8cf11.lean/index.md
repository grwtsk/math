# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IntervalArithmetic.Variant4ed774290b1f492dc3b0c1a714ac7f13a24bc92a6bdfa5daa93d063e14f8cf11

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b1bc66a0566cb3450a30a1d021aa2ce4017ff8e",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variant4ed774290b1f492dc3b0c1a714ac7f13a24bc92a6bdfa5daa93d063e14f8cf11.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variant4ed774290b1f492dc3b0c1a714ac7f13a24bc92a6bdfa5daa93d063e14f8cf11.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variant4ed774290b1f492dc3b0c1a714ac7f13a24bc92a6bdfa5daa93d063e14f8cf11.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b1bc66a0566cb3450a30a1d021aa2ce4017ff8e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variant4ed774290b1f492dc3b0c1a714ac7f13a24bc92a6bdfa5daa93d063e14f8cf11.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variant4ed774290b1f492dc3b0c1a714ac7f13a24bc92a6bdfa5daa93d063e14f8cf11.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `AnalyticNumber.Mathlib.Certificate` — import line 6; external provider; requires a separately pinned dependency.
- `AnalyticNumber.VerifiedNumericalEstimate` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RationalIntervalCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variant4ed774290b1f492dc3b0c1a714ac7f13a24bc92a6bdfa5daa93d063e14f8cf11.lean/declarations/rationalintervalcertificate--d6a270410438438e1cd5cb30.md) | 35 | `declaration-track:d6a270410438438e1cd5cb30fd4f705e9dca0bcabc12a91654572548da32bcb3` |
| 2 | `def` | [RationalIntervalCertificate.contains](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variant4ed774290b1f492dc3b0c1a714ac7f13a24bc92a6bdfa5daa93d063e14f8cf11.lean/declarations/rationalintervalcertificate-contains--c2b761ca6546b57b977c4d3c.md) | 44 | `declaration-track:c2b761ca6546b57b977c4d3c0e674e42f684e10a6e71dd86bd7430a573f14594` |
| 3 | `theorem` | [rational_interval_certificate_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variant4ed774290b1f492dc3b0c1a714ac7f13a24bc92a6bdfa5daa93d063e14f8cf11.lean/declarations/rational-interval-certificate-sound--ab51642a31cf9268bddf9b07.md) | 48 | `result-track:ab51642a31cf9268bddf9b07719b229945d834c0d0b9c255dce85b5781b424e1` |
| 4 | `theorem` | [sqrt_two_lower_bound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variant4ed774290b1f492dc3b0c1a714ac7f13a24bc92a6bdfa5daa93d063e14f8cf11.lean/declarations/sqrt-two-lower-bound--af4baa53de9f52d3c82a8642.md) | 55 | `result-track:af4baa53de9f52d3c82a864270708000fece0c947668534ed064d6011071efa0` |
| 5 | `theorem` | [sqrt_two_upper_bound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variant4ed774290b1f492dc3b0c1a714ac7f13a24bc92a6bdfa5daa93d063e14f8cf11.lean/declarations/sqrt-two-upper-bound--8093d867b7e77d158dd961cb.md) | 61 | `result-track:8093d867b7e77d158dd961cbf0e8a89255ad408b261576af294374715ee768f2` |
| 6 | `theorem` | [sqrt_two_interval_enclosure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variant4ed774290b1f492dc3b0c1a714ac7f13a24bc92a6bdfa5daa93d063e14f8cf11.lean/declarations/sqrt-two-interval-enclosure--25e4932817ca0515cb97c772.md) | 66 | `result-track:25e4932817ca0515cb97c772c2c18764d1ca5684d34b69290a60fb7b778ba1a8` |
| 7 | `def` | [sqrtTwoRationalIntervalCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variant4ed774290b1f492dc3b0c1a714ac7f13a24bc92a6bdfa5daa93d063e14f8cf11.lean/declarations/sqrttworationalintervalcertificate--5d168305786dc3313759afcc.md) | 73 | `declaration-track:5d168305786dc3313759afcc60ecd0627dcd66397e9d2d7ddb7f4e1cb313bb7f` |
| 8 | `def` | [sqrtTwoEndpointLower](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variant4ed774290b1f492dc3b0c1a714ac7f13a24bc92a6bdfa5daa93d063e14f8cf11.lean/declarations/sqrttwoendpointlower--db80d5ed9271bb49f1ec1d43.md) | 90 | `declaration-track:db80d5ed9271bb49f1ec1d432d35255bfd114143736cef216631d9e5f61e6ec6` |
| 9 | `def` | [sqrtTwoEndpointUpper](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variant4ed774290b1f492dc3b0c1a714ac7f13a24bc92a6bdfa5daa93d063e14f8cf11.lean/declarations/sqrttwoendpointupper--2521cd567083c02d3318ed0d.md) | 96 | `declaration-track:2521cd567083c02d3318ed0d603b4252f8217a61fd8857a816b5d35677193c56` |
| 10 | `def` | [sqrtTwoFiniteInterval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variant4ed774290b1f492dc3b0c1a714ac7f13a24bc92a6bdfa5daa93d063e14f8cf11.lean/declarations/sqrttwofiniteinterval--9a41fb982297353f74c8c265.md) | 102 | `declaration-track:9a41fb982297353f74c8c2655a44283f20f176767d935901f6f4f8a5914f77e3` |
| 11 | `def` | [sqrtTwoFiniteDomain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variant4ed774290b1f492dc3b0c1a714ac7f13a24bc92a6bdfa5daa93d063e14f8cf11.lean/declarations/sqrttwofinitedomain--5540a33e16b3e7a5d6c4b5f7.md) | 110 | `declaration-track:5540a33e16b3e7a5d6c4b5f7bc9c188539ea4fb3bb9beaa471175f0ad1728b37` |
| 12 | `def` | [sqrtTwoPrecision](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variant4ed774290b1f492dc3b0c1a714ac7f13a24bc92a6bdfa5daa93d063e14f8cf11.lean/declarations/sqrttwoprecision--3909a8950bb8425cd2e26ddf.md) | 118 | `declaration-track:3909a8950bb8425cd2e26ddfce5bcb7c1ecaf9581145408f433ccdde8b6663a9` |
| 13 | `def` | [sqrtTwoAlgorithm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variant4ed774290b1f492dc3b0c1a714ac7f13a24bc92a6bdfa5daa93d063e14f8cf11.lean/declarations/sqrttwoalgorithm--12f23e3dfe4812747d59e406.md) | 128 | `declaration-track:12f23e3dfe4812747d59e406d6da731cd789f22ad570c2da6b5ed5eaa1fe74ef` |
| 14 | `def` | [sqrtTwoErrorModel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variant4ed774290b1f492dc3b0c1a714ac7f13a24bc92a6bdfa5daa93d063e14f8cf11.lean/declarations/sqrttwoerrormodel--b319406ce6415cdb54a3ec2f.md) | 137 | `declaration-track:b319406ce6415cdb54a3ec2f24618eb8b26b67b2b9f1e26e30701cb1b07dd963` |
| 15 | `def` | [sqrtTwoFinitePayload](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variant4ed774290b1f492dc3b0c1a714ac7f13a24bc92a6bdfa5daa93d063e14f8cf11.lean/declarations/sqrttwofinitepayload--3d6df0edd2d17d81b678a64d.md) | 149 | `declaration-track:3d6df0edd2d17d81b678a64d4bc6369d94a76d92c3d700e317ac0f06fe721a94` |
| 16 | `def` | [sqrtTwoEstimateSymbol](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variant4ed774290b1f492dc3b0c1a714ac7f13a24bc92a6bdfa5daa93d063e14f8cf11.lean/declarations/sqrttwoestimatesymbol--4458d9bcbf371f637a9d9aa8.md) | 176 | `declaration-track:4458d9bcbf371f637a9d9aa83fabb8026daa2e0b423fdd3495d045efa099121b` |
| 17 | `def` | [sqrtTwoDomainSymbol](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variant4ed774290b1f492dc3b0c1a714ac7f13a24bc92a6bdfa5daa93d063e14f8cf11.lean/declarations/sqrttwodomainsymbol--aef445916e8fbdcb0a9724a4.md) | 182 | `declaration-track:aef445916e8fbdcb0a9724a461cfc2bfb1f27d265e14c617ca2795a7bad666fc` |
| 18 | `def` | [sqrtTwoPrecisionSymbol](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variant4ed774290b1f492dc3b0c1a714ac7f13a24bc92a6bdfa5daa93d063e14f8cf11.lean/declarations/sqrttwoprecisionsymbol--088fb6ae0a618bb85e6d8463.md) | 187 | `declaration-track:088fb6ae0a618bb85e6d84632b3afec10b14d41c893cc102d1f8ec9041a1c209` |
| 19 | `def` | [sqrtTwoAlgorithmSymbol](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variant4ed774290b1f492dc3b0c1a714ac7f13a24bc92a6bdfa5daa93d063e14f8cf11.lean/declarations/sqrttwoalgorithmsymbol--16c60bc7b5df2d21df1dece0.md) | 192 | `declaration-track:16c60bc7b5df2d21df1dece095bcc22ca032a5ddece60d1f2d5db167f78dfad7` |
| 20 | `def` | [sqrtTwoErrorModelSymbol](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variant4ed774290b1f492dc3b0c1a714ac7f13a24bc92a6bdfa5daa93d063e14f8cf11.lean/declarations/sqrttwoerrormodelsymbol--4d8bcc28f5c6596fd2b2a9db.md) | 197 | `declaration-track:4d8bcc28f5c6596fd2b2a9dbe385f271850cc54f76e280aedbd984decc98fb08` |
| 21 | `def` | [sqrtTwoNumericalSchema](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variant4ed774290b1f492dc3b0c1a714ac7f13a24bc92a6bdfa5daa93d063e14f8cf11.lean/declarations/sqrttwonumericalschema--c4a6b2cb5a7ccb2fd88c6254.md) | 203 | `declaration-track:c4a6b2cb5a7ccb2fd88c625448c3dc60825f90f6eae096efcf2b91b9c1ebc67f` |
| 22 | `def` | [sqrtTwoIntervalArithmeticAuthority](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variant4ed774290b1f492dc3b0c1a714ac7f13a24bc92a6bdfa5daa93d063e14f8cf11.lean/declarations/sqrttwointervalarithmeticauthority--702354be6d185d49ba978a82.md) | 221 | `declaration-track:702354be6d185d49ba978a824987c86d65e6d116703d95c1f7261e354d410758` |
| 23 | `def` | [sqrtTwoIntervalCertificateAsAnalyticCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variant4ed774290b1f492dc3b0c1a714ac7f13a24bc92a6bdfa5daa93d063e14f8cf11.lean/declarations/sqrttwointervalcertificateasanalyticcertificate--f1e4671b5100b3834cbbd86f.md) | 231 | `declaration-track:f1e4671b5100b3834cbbd86f55f70bccbc361fb08340fc790f08e3419a6f217e` |
| 24 | `def` | [sqrtTwoIntervalContext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variant4ed774290b1f492dc3b0c1a714ac7f13a24bc92a6bdfa5daa93d063e14f8cf11.lean/declarations/sqrttwointervalcontext--21c88f77cbdd48c25e798d73.md) | 238 | `declaration-track:21c88f77cbdd48c25e798d734160f7ffa7b0c41afb7d4df5a0e4bbd3a8ef33f2` |
| 25 | `def` | [sqrtTwoIntervalClaim](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variant4ed774290b1f492dc3b0c1a714ac7f13a24bc92a6bdfa5daa93d063e14f8cf11.lean/declarations/sqrttwointervalclaim--fb3d939983a4187a781ae3a8.md) | 243 | `declaration-track:fb3d939983a4187a781ae3a846ece8a05e0c8a640b511db8f580928ac98d5241` |
| 26 | `def` | [sqrtTwoMathlibProofCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variant4ed774290b1f492dc3b0c1a714ac7f13a24bc92a6bdfa5daa93d063e14f8cf11.lean/declarations/sqrttwomathlibproofcertificate--c7aefcd83d279e7ba85a78ee.md) | 252 | `declaration-track:c7aefcd83d279e7ba85a78ee97d91b277618e2398ead838933cea46b6b5fe1d0` |
| 27 | `theorem` | [sqrt_two_interval_through_boundary_calculus](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArithmetic/Variant4ed774290b1f492dc3b0c1a714ac7f13a24bc92a6bdfa5daa93d063e14f8cf11.lean/declarations/sqrt-two-interval-through-boundary-calculus--84c425f7688b570548b3eb32.md) | 263 | `result-track:84c425f7688b570548b3eb321871309e8ccc87cf83ccf71842f14ae12bd3e87c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
