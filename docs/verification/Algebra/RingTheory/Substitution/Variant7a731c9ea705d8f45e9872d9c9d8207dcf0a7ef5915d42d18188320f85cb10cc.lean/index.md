# Verification target: GRWTSK.Algebra.RingTheory.Substitution.Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c9c1ee3571c97a9a25cb8e672dfa90e896aee55d",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/index.md) · [Full source](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c9c1ee3571c97a9a25cb8e672dfa90e896aee55d`.

Source path: `GRWTSK/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.MvPowerSeries.Evaluation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPowerSeries.LinearTopology` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nilpotent.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.DiscreteUniformity` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HasSubst](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/declarations/hassubst--04a6a0add7eb09a1d00a46ef.md) | 73 | `declaration-track:04a6a0add7eb09a1d00a46ef7b808fd2e2f3be7175bdccd09f23fedd2c9af769` |
| 2 | `lemma` | [coeff_zero_iff](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/declarations/coeff-zero-iff--6d440303cc0c9d2900994580.md) | 79 | `result-track:6d440303cc0c9d29009945808fd13fe79250eed3a144b9f3455dde4a0b1c8600` |
| 3 | `lemma` | [hasSubst_iff_hasEval_of_discreteTopology](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/declarations/hassubst-iff-haseval-of-discretetopology--8bd1a34bd770bcc722bb463b.md) | 86 | `result-track:8bd1a34bd770bcc722bb463bf125ed65bf32b64cca9c1f2331919cfde23c9ec9` |
| 4 | `theorem` | [HasSubst.hasEval](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/declarations/hassubst-haseval--9e5028a624dcb03e38fe42be.md) | 91 | `result-track:9e5028a624dcb03e38fe42be9450b319ff3a1bbde022cbf492127d08865811f6` |
| 5 | `theorem` | [HasSubst.zero](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/declarations/hassubst-zero--529fa8cf919bcd5c5a9bab06.md) | 95 | `result-track:529fa8cf919bcd5c5a9bab061132cc9a7aff2e14558bb1d7104e0ea696e82ab7` |
| 6 | `theorem` | [HasSubst.add](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/declarations/hassubst-add--6c9b2884c98e5b67a0ed46e0.md) | 99 | `result-track:6c9b2884c98e5b67a0ed46e09fa4f7363eb7dfbd3d966f7f82cac6d6ed885b58` |
| 7 | `theorem` | [HasSubst.mul_left](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/declarations/hassubst-mul-left--8013a6259295cea3da6f723b.md) | 105 | `result-track:8013a6259295cea3da6f723b31aa1d658f6bbdd472ce158db0d65d9f0777f0d5` |
| 8 | `theorem` | [HasSubst.mul_right](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/declarations/hassubst-mul-right--6b1a9e8a9a20b5f9a15aa582.md) | 112 | `result-track:6b1a9e8a9a20b5f9a15aa582b3b012b9fddc126c65c5141a3d3d003390784785` |
| 9 | `theorem` | [HasSubst.smul](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/declarations/hassubst-smul--92e26a714d83f30a8513488a.md) | 117 | `result-track:92e26a714d83f30a8513488ab33777b3d40a2ddfb7b3a518b3f79989b3d2e84c` |
| 10 | `theorem` | [HasSubst.X](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/declarations/hassubst-x--c62bb0cf6271f0454071170e.md) | 120 | `result-track:c62bb0cf6271f0454071170e5a058f56db23b6dd8c6e3a632384c66c8d2dcd77` |
| 11 | `theorem` | [HasSubst.smul_X](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/declarations/hassubst-smul-x--3824085945df65abff027000.md) | 124 | `result-track:3824085945df65abff02700046e744b3ea77d74002d6d3634823020bea6c0bed` |
| 12 | `def` | [hasSubstIdeal](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/declarations/hassubstideal--2f045d61cee3fd0eedc0e20d.md) | 130 | `declaration-track:2f045d61cee3fd0eedc0e20ddcdfa8448bfaa4a8a9b381f90cdd2489d2b1384e` |
| 13 | `theorem` | [hasSubst_of_constantCoeff_nilpotent](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/declarations/hassubst-of-constantcoeff-nilpotent--5a9ac286cde367139c0bbec9.md) | 137 | `result-track:5a9ac286cde367139c0bbec994de63d5958786531969b90e03e28925e7e07b37` |
| 14 | `theorem` | [hasSubst_of_constantCoeff_zero](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/declarations/hassubst-of-constantcoeff-zero--ba954edb00d6a4404ef2fed8.md) | 144 | `result-track:ba954edb00d6a4404ef2fed85d950d2625ca1f7710d6bc5e3ae687dd34514af1` |
| 15 | `def` | [subst](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/declarations/subst--51c74cc50c5457cb2efe1a1e.md) | 153 | `declaration-track:51c74cc50c5457cb2efe1a1e75c219496ef7094d6ecfad07797745d527ab4245` |
| 16 | `theorem` | [subst_eq_eval₂](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/declarations/subst-eq-eval--70901f701fb3065fd416aacb.md) | 159 | `result-track:70901f701fb3065fd416aacb50161c3181bddc38f6c1c191b417ebaac5d31ec3` |
| 17 | `theorem` | [subst_coe](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/declarations/subst-coe--2e4df00a717c21f8fea3334a.md) | 164 | `result-track:2e4df00a717c21f8fea3334a273ac00d3c77dd24360df609f2a073ffb70c8f86` |
| 18 | `def` | [substAlgHom](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/declarations/substalghom--bb26ac36dbd41e234928ea32.md) | 173 | `declaration-track:bb26ac36dbd41e234928ea32192f40f019a39ec9ee9f3b80eb019ff954a3eb9b` |
| 19 | `theorem` | [substAlgHom_eq_aeval](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/declarations/substalghom-eq-aeval--e88cb9e93e5f721f37afcc67.md) | 183 | `result-track:e88cb9e93e5f721f37afcc67de09e08063ef40bfdf946ad56a0f4a53e4a5c928` |
| 20 | `theorem` | [coe_substAlgHom](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/declarations/coe-substalghom--d7b0be8536ee426bd185c590.md) | 192 | `result-track:d7b0be8536ee426bd185c590fee4942e7e5985fad97ef8b86a9ad68495c50ec4` |
| 21 | `theorem` | [subst_self](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/declarations/subst-self--c8d922399bbb00690982b845.md) | 198 | `result-track:c8d922399bbb00690982b845b7056937a940b3b6b9ad1f6c14a72c2cb69a6ecd` |
| 22 | `theorem` | [substAlgHom_apply](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/declarations/substalghom-apply--39b29a716fcb46dc74d31ab5.md) | 208 | `result-track:39b29a716fcb46dc74d31ab5c5ebe9bbcd8c67a3ea15caad4d7f38afa13d2e14` |
| 23 | `theorem` | [subst_add](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/declarations/subst-add--d4f3ffb7e88f863cfaea4e8f.md) | 212 | `result-track:d4f3ffb7e88f863cfaea4e8fbce11eb0a8889c03b3134be7da1f2bc604144410` |
| 24 | `theorem` | [subst_mul](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/declarations/subst-mul--ab2bdb30b7fb1c1396dd4c42.md) | 216 | `result-track:ab2bdb30b7fb1c1396dd4c42a5a22dcb87edd063f614ef1f01768d3147fc176d` |
| 25 | `theorem` | [subst_pow](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/declarations/subst-pow--d8d29eb08eac896626834f87.md) | 220 | `result-track:d8d29eb08eac896626834f87db271f566e03331558133085a2da15c823f088c1` |
| 26 | `theorem` | [subst_smul](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/declarations/subst-smul--af722b1fe5081fc6d6674d13.md) | 224 | `result-track:af722b1fe5081fc6d6674d13584b3f1354a82fc73bf2b17cf9bd617e86b00bce` |
| 27 | `theorem` | [substAlgHom_coe](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/declarations/substalghom-coe--a6d9e34a45f5a14b2ebd181c.md) | 228 | `result-track:a6d9e34a45f5a14b2ebd181c137c630b457aedd411dbeb6cc98ba2266163730f` |
| 28 | `theorem` | [substAlgHom_X](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/declarations/substalghom-x--d766860a76c31d1e9d385ef8.md) | 232 | `result-track:d766860a76c31d1e9d385ef8b5be019ae3e1321eb5ad590572fe364c779935e1` |
| 29 | `theorem` | [substAlgHom_monomial](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/declarations/substalghom-monomial--18c40e03b94c03748e87f46c.md) | 236 | `result-track:18c40e03b94c03748e87f46c35bd4d416e20ecde406cacbd693a710152633f33` |
| 30 | `theorem` | [subst_X](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/declarations/subst-x--a0b19b4f270e9b7580d9c311.md) | 242 | `result-track:a0b19b4f270e9b7580d9c311e82fbfdecebe8ff29b691194e65b0bfec369caf8` |
| 31 | `theorem` | [subst_monomial](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/declarations/subst-monomial--92fc859ff801fbbe7ac37f62.md) | 246 | `result-track:92fc859ff801fbbe7ac37f6247da35220b6c1bad91a94a51ce33629fb30b584b` |
| 32 | `theorem` | [continuous_subst](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/declarations/continuous-subst--c860ca70c560d52d1acde460.md) | 251 | `result-track:c860ca70c560d52d1acde46082a8654f82e77a6801cc30ba6e29627f223016d1` |
| 33 | `theorem` | [coeff_subst_finite](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/declarations/coeff-subst-finite--9bb9f0a9f60ec46bb32282ed.md) | 257 | `result-track:9bb9f0a9f60ec46bb32282ed432a8692b053581d93dfb92f458f7e2bd5e6701c` |
| 34 | `theorem` | [coeff_subst](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/declarations/coeff-subst--55c4e5ff380045c51b870d6b.md) | 264 | `result-track:55c4e5ff380045c51b870d6bd30425aa6afbd7e7587e8416bc9d10a7f298932b` |
| 35 | `theorem` | [constantCoeff_subst](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/declarations/constantcoeff-subst--51a181f0ef448592ee29b5ac.md) | 273 | `result-track:51a181f0ef448592ee29b5accd26d0689593dc0a2479bd2731771b656a0def37` |
| 36 | `theorem` | [map_algebraMap_eq_subst_X](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/declarations/map-algebramap-eq-subst-x--c88e15f17273c38a1832602d.md) | 278 | `result-track:c88e15f17273c38a1832602d9e68c4a2d2a4523a3a02cf7ae0ac887668c8f168` |
| 37 | `theorem` | [comp_substAlgHom](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/declarations/comp-substalghom--9762898867dfc3a3d7e92c6e.md) | 293 | `result-track:9762898867dfc3a3d7e92c6ef41a2ad5cfcca1a4fa8a23c3c2c0b2f4c2db260d` |
| 38 | `theorem` | [comp_subst](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/declarations/comp-subst--42647b89037b50679c8ed80e.md) | 301 | `result-track:42647b89037b50679c8ed80e3de798c5a648c3c2fdbc94f31710a123a5fbeeff` |
| 39 | `theorem` | [comp_subst_apply](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/declarations/comp-subst-apply--446bc9723817d73f7bbe1da7.md) | 306 | `result-track:446bc9723817d73f7bbe1da7fb81dbcfad56acfbff0475f25b4267afc2eaa46d` |
| 40 | `theorem` | [eval₂_subst](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/declarations/eval-subst--bf4c3bad0a5947af0b88b516.md) | 314 | `result-track:bf4c3bad0a5947af0b88b516dad27e1c53cab27030659d053dd0c89d97626fef` |
| 41 | `theorem` | [IsNilpotent_subst](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/declarations/isnilpotent-subst--bc0e6e2e34ebbab5d9aa3e03.md) | 329 | `result-track:bc0e6e2e34ebbab5d9aa3e034621afb188765001fd7e9f2ae305b8dc8981034b` |
| 42 | `theorem` | [HasSubst.comp](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/declarations/hassubst-comp--49043dfb846ade7a0d8e0d45.md) | 352 | `result-track:49043dfb846ade7a0d8e0d457e048b753e7351812aaf4ac690206c2381f3a489` |
| 43 | `theorem` | [substAlgHom_comp_substAlgHom](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/declarations/substalghom-comp-substalghom--d267ccf2a0f41e8a0062add6.md) | 362 | `result-track:d267ccf2a0f41e8a0062add6df99371482bde27279b2851ba0efffd6d7f8b0c7` |
| 44 | `theorem` | [substAlgHom_comp_substAlgHom_apply](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/declarations/substalghom-comp-substalghom-apply--309fc2f255c73a7c1ba2962f.md) | 370 | `result-track:309fc2f255c73a7c1ba2962f86c6c0f1ce55f9ed84074b8479eb275fa7d91956` |
| 45 | `theorem` | [subst_comp_subst](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/declarations/subst-comp-subst--cb36a12148c9f7c2ac9ee707.md) | 375 | `result-track:cb36a12148c9f7c2ac9ee70766fbffb0804623228bfe9b4c08da3dd6235f5d48` |
| 46 | `theorem` | [subst_comp_subst_apply](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/declarations/subst-comp-subst-apply--8e63774c0fc1cb5d42e301f0.md) | 379 | `result-track:8e63774c0fc1cb5d42e301f0ea31ede2945104ad75977641dc481d178e32b0f8` |
| 47 | `def` | [rescale](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/declarations/rescale--cc36b799d0fc518806f4ec26.md) | 393 | `declaration-track:cc36b799d0fc518806f4ec260b504216c3dd099c49e76eaf58ec7e0cd3f09aa3` |
| 48 | `theorem` | [coeff_rescale](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/declarations/coeff-rescale--1edd2cca1ae59851477cb7e1.md) | 432 | `result-track:1edd2cca1ae59851477cb7e139a0dd6fb9b7b7c0d6dfc573abb45a3be44a2877` |
| 49 | `theorem` | [rescale_zero](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/declarations/rescale-zero--a521695f0cced2419d49c0c3.md) | 437 | `result-track:a521695f0cced2419d49c0c366ffa7b379fa325fe3dec225407490cbbd9c023e` |
| 50 | `theorem` | [rescale_zero_apply](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/declarations/rescale-zero-apply--3a53c2b0987163e0434c25ac.md) | 452 | `result-track:3a53c2b0987163e0434c25ac260aa9fce8298dda3bb23408945f035967589df1` |
| 51 | `theorem` | [rescale_one](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/declarations/rescale-one--46ef968d7ff1660e0bb90e77.md) | 456 | `result-track:46ef968d7ff1660e0bb90e77d5437bb2069834d11047b3d995108a75d48fdde6` |
| 52 | `theorem` | [rescale_rescale](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/declarations/rescale-rescale--b0ac613792a089e0a0acd2b5.md) | 460 | `result-track:b0ac613792a089e0a0acd2b56adb7f08ab4d6cecc130cc6c2353e65dba0936b7` |
| 53 | `theorem` | [rescale_mul](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/declarations/rescale-mul--98a60eaf2b06984e6b97555a.md) | 465 | `result-track:98a60eaf2b06984e6b97555a220ab76bb79467cb6d6279c8468d9572e5e90175` |
| 54 | `lemma` | [rescale_homogeneous_eq_smul](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/declarations/rescale-homogeneous-eq-smul--c5419247920594525b48918c.md) | 470 | `result-track:c5419247920594525b48918ca509f970825264b4b233276bc95045a6159d462c` |
| 55 | `def` | [rescaleMonoidHom](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/declarations/rescalemonoidhom--2230755a46ed4ec09b512c86.md) | 482 | `declaration-track:2230755a46ed4ec09b512c862503a45f1fd1c9f710f2ffaea591e7831dbd849a` |
| 56 | `theorem` | [rescale_eq_subst](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/declarations/rescale-eq-subst--26642595204f3cdbc9285c8e.md) | 492 | `result-track:26642595204f3cdbc9285c8e9b9e9484cb8006df3b0ddff813eb361e7255d838` |
| 57 | `def` | [rescaleAlgHom](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/declarations/rescalealghom--2bbebdd7ff5fa1ac9d4e46ba.md) | 509 | `declaration-track:2bbebdd7ff5fa1ac9d4e46badf61342bc7851190e1dfdc7c623689e7d45f0a40` |
| 58 | `theorem` | [rescaleAlgHom_apply](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/declarations/rescalealghom-apply--87c5b09b95d95bd45cb4cf11.md) | 513 | `result-track:87c5b09b95d95bd45cb4cf1128c47d4eff79d05cb3a6a0ad223daab5e7166d18` |
| 59 | `theorem` | [rescaleAlgHom_mul](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/declarations/rescalealghom-mul--eaceb3536c0910b76924d5c4.md) | 517 | `result-track:eaceb3536c0910b76924d5c45d05e34c66bbd5b4c6fc08e4177a2b65767b6b41` |
| 60 | `theorem` | [rescaleAlgHom_one](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/declarations/rescalealghom-one--b97ec3ff5b328deda8fc7300.md) | 522 | `result-track:b97ec3ff5b328deda8fc73005e0369298a2f2685562a69a95481c58f4f97ed1b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
