# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ConductorThreePartialSummation.Variant3ed71754a5a27f924c012e22dea9f8582e46469764abcbc345291db8b7607851

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a8a8d625eff525d6585c85b29c7deca3ef045f3",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Variant3ed71754a5a27f924c012e22dea9f8582e46469764abcbc345291db8b7607851.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Variant3ed71754a5a27f924c012e22dea9f8582e46469764abcbc345291db8b7607851.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Variant3ed71754a5a27f924c012e22dea9f8582e46469764abcbc345291db8b7607851.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a8a8d625eff525d6585c85b29c7deca3ef045f3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Variant3ed71754a5a27f924c012e22dea9f8582e46469764abcbc345291db8b7607851.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Variant3ed71754a5a27f924c012e22dea9f8582e46469764abcbc345291db8b7607851.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Core.ConductorThreePrimePowerRemoval` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeCharacterCoefficient](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Variant3ed71754a5a27f924c012e22dea9f8582e46469764abcbc345291db8b7607851.lean/declarations/primecharactercoefficient--87735b2a548d1367182099c2.md) | 14 | `declaration-track:87735b2a548d1367182099c2696e1d4c50e1254b5eab73d62aba67c6562f4e3c` |
| 2 | `def` | [primeCharacterPartialSum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Variant3ed71754a5a27f924c012e22dea9f8582e46469764abcbc345291db8b7607851.lean/declarations/primecharacterpartialsum--d809b86dd51b2b22c5764e57.md) | 18 | `declaration-track:d809b86dd51b2b22c5764e5728017b801f7c7a874e8a8d0a7f8e1d3e4e14c6db` |
| 3 | `theorem` | [primeCharacterPartialSum_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Variant3ed71754a5a27f924c012e22dea9f8582e46469764abcbc345291db8b7607851.lean/declarations/primecharacterpartialsum-succ--f5f99c8a1dd6be45f470aab8.md) | 21 | `result-track:f5f99c8a1dd6be45f470aab87d91137523dc2b19db319e37e6c4e3cfc5105a88` |
| 4 | `theorem` | [conductorThreeTheta_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Variant3ed71754a5a27f924c012e22dea9f8582e46469764abcbc345291db8b7607851.lean/declarations/conductorthreetheta-succ--b48794e4f2ab4101617dc878.md) | 31 | `result-track:b48794e4f2ab4101617dc87882b34bd22fefeea1ca2d5ae85ff4a799592eecdb` |
| 5 | `theorem` | [conductorThreeTheta_eq_abel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Variant3ed71754a5a27f924c012e22dea9f8582e46469764abcbc345291db8b7607851.lean/declarations/conductorthreetheta-eq-abel--6c1eb95700c0a4a2ec3bb27d.md) | 44 | `result-track:6c1eb95700c0a4a2ec3bb27db9b53a78fc478ff620bdcf9dd984a2396c15ad4e` |
| 6 | `theorem` | [conductorThreeTheta_eq_primeCharacterSum_abel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Variant3ed71754a5a27f924c012e22dea9f8582e46469764abcbc345291db8b7607851.lean/declarations/conductorthreetheta-eq-primecharactersum-abel--e043147c2f6b2e22ee0f4490.md) | 61 | `result-track:e043147c2f6b2e22ee0f4490512ce2cee3f9a826a746e2b725dea795f4946391` |
| 7 | `def` | [reciprocalLog](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Variant3ed71754a5a27f924c012e22dea9f8582e46469764abcbc345291db8b7607851.lean/declarations/reciprocallog--03945bb69006096165b3c413.md) | 71 | `declaration-track:03945bb69006096165b3c4135a27902c826501f1afcee0bf6c13a93282cdea28` |
| 8 | `theorem` | [primeCharacterCoefficient_eq_theta_increment_div_log](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Variant3ed71754a5a27f924c012e22dea9f8582e46469764abcbc345291db8b7607851.lean/declarations/primecharactercoefficient-eq-theta-increment-div-log--cbf0d9469c73e14406651f3a.md) | 73 | `result-track:cbf0d9469c73e14406651f3a48e42bd48c252d6ec2d12250d727d3372e528f32` |
| 9 | `theorem` | [primeCharacterPartialSum_eq_inverseAbel_add_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Variant3ed71754a5a27f924c012e22dea9f8582e46469764abcbc345291db8b7607851.lean/declarations/primecharacterpartialsum-eq-inverseabel-add-two--223937be18ecd7ad42463cd9.md) | 97 | `result-track:223937be18ecd7ad42463cd9103f4ae30489bfeceb6ae0f0456440d833d91eb5` |
| 10 | `theorem` | [primeCharacterPartialSum_eq_inverseAbel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Variant3ed71754a5a27f924c012e22dea9f8582e46469764abcbc345291db8b7607851.lean/declarations/primecharacterpartialsum-eq-inverseabel--dee8e36c22f028a6395593bf.md) | 135 | `result-track:dee8e36c22f028a6395593bf1f04dcff024aa8f2b3dda7567dc631db03aa9bb1` |
| 11 | `theorem` | [conductorThreePrimeCharacterSum_eq_inverseAbel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Variant3ed71754a5a27f924c012e22dea9f8582e46469764abcbc345291db8b7607851.lean/declarations/conductorthreeprimecharactersum-eq-inverseabel--b30ecfc42e27e472349d5906.md) | 147 | `result-track:b30ecfc42e27e472349d5906026f98ac5490ef3bd29e6fbdb0ab98ae03c9f985` |
| 12 | `def` | [primeCharacterStep](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Variant3ed71754a5a27f924c012e22dea9f8582e46469764abcbc345291db8b7607851.lean/declarations/primecharacterstep--15d1ad1779b4ed596c84fd5b.md) | 159 | `declaration-track:15d1ad1779b4ed596c84fd5b2fb99dd65aefa8b05e0c404138be73457e6275c2` |
| 13 | `def` | [conductorThreeThetaStep](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Variant3ed71754a5a27f924c012e22dea9f8582e46469764abcbc345291db8b7607851.lean/declarations/conductorthreethetastep--fcadfe4ea47e00d73c28a8cc.md) | 163 | `declaration-track:fcadfe4ea47e00d73c28a8cc0896d8fe9f3d461f3a4e3a99fb44cf4da4182e51` |
| 14 | `theorem` | [primeCharacterStep_natCast](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Variant3ed71754a5a27f924c012e22dea9f8582e46469764abcbc345291db8b7607851.lean/declarations/primecharacterstep-natcast--1a1cefba3354da209896443f.md) | 166 | `result-track:1a1cefba3354da209896443fb4e82ed68ad1f5e31847b4165ec51df749b76fc4` |
| 15 | `theorem` | [conductorThreeThetaStep_natCast](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Variant3ed71754a5a27f924c012e22dea9f8582e46469764abcbc345291db8b7607851.lean/declarations/conductorthreethetastep-natcast--5a9fea0d41502855cd0ab9e4.md) | 170 | `result-track:5a9fea0d41502855cd0ab9e40fa6b4f21c94cefe61960bac55557c9faa0fa07d` |
| 16 | `theorem` | [conductorThreeThetaStep_eq_abel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Variant3ed71754a5a27f924c012e22dea9f8582e46469764abcbc345291db8b7607851.lean/declarations/conductorthreethetastep-eq-abel--ec9ff62616c6c61f828c0027.md) | 175 | `result-track:ec9ff62616c6c61f828c0027f2720b4c5139aedbf0e6dc94e17423031f327e9c` |
| 17 | `theorem` | [primeCharacterStep_eq_inverseAbel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Variant3ed71754a5a27f924c012e22dea9f8582e46469764abcbc345291db8b7607851.lean/declarations/primecharacterstep-eq-inverseabel--237d370a2f935ee9d5ce5f4c.md) | 185 | `result-track:237d370a2f935ee9d5ce5f4ce1b532ab3beb908ed7430272980d0e880211356a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
