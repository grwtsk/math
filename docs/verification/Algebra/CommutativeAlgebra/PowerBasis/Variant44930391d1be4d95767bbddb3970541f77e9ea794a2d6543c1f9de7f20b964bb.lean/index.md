# Verification target: GRWTSK.Algebra.CommutativeAlgebra.PowerBasis.Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b63784ec36c83f49f337f05881089cdeab597c4c",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b63784ec36c83f49f337f05881089cdeab597c4c`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Minpoly.Field` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.SModEq` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.BigOperators` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PowerBasis](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean/declarations/powerbasis--e744db7a1c522ef225e826a5.md) | 65 | `declaration-track:e744db7a1c522ef225e826a509d3e544a1c6ca21c008d1595094873324354f48` |
| 2 | `theorem` | [coe_basis](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean/declarations/coe-basis--4a879ef3d50a26aec2d55da7.md) | 78 | `result-track:4a879ef3d50a26aec2d55da7d8cef741fca17193611da9632cc7d67470ec3a43` |
| 3 | `theorem` | [finite](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean/declarations/finite--aa4ea6aa174c7549282d4c4d.md) | 82 | `result-track:aa4ea6aa174c7549282d4c4d39e0c0ebedb51cd1534a63d61380c902764c9408` |
| 4 | `theorem` | [finrank](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean/declarations/finrank--fcf749e4fbc47fd6e4cde5cb.md) | 85 | `result-track:fcf749e4fbc47fd6e4cde5cb57963be358b72a817ef3d11901f692825aec2ad0` |
| 5 | `theorem` | [mem_span_pow'](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean/declarations/mem-span-pow--7f753bd56d0a96c35c24e10d.md) | 89 | `result-track:7f753bd56d0a96c35c24e10d73dcc7889bab858c2c209342083bf91bf11f24ac` |
| 6 | `theorem` | [mem_span_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean/declarations/mem-span-pow--977ffb597e45da348c649586.md) | 104 | `result-track:977ffb597e45da348c649586e317a71bc6f302d7916a33bc9402dea611776053` |
| 7 | `theorem` | [dim_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean/declarations/dim-ne-zero--706638eaca53b82fe1200f1e.md) | 117 | `result-track:706638eaca53b82fe1200f1e044215303aa9dd1538d7833284a54595629e7347` |
| 8 | `theorem` | [dim_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean/declarations/dim-pos--4254dc608ef26a149e10dae7.md) | 120 | `result-track:4254dc608ef26a149e10dae7ec688e25026567340f664c9aadf142e4bc58bd94` |
| 9 | `theorem` | [exists_eq_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean/declarations/exists-eq-aeval--3b7f211bc2d0ce3b391dd14a.md) | 123 | `result-track:3b7f211bc2d0ce3b391dd14a8e1c0bfb76ceb56a82b81ad9a6171511b2e90811` |
| 10 | `theorem` | [exists_eq_aeval'](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean/declarations/exists-eq-aeval--d361060f2bff336fc5df592c.md) | 127 | `result-track:d361060f2bff336fc5df592cc72e8ac99efbaca2b2fe4289625ebcf974922e7c` |
| 11 | `theorem` | [algHom_ext](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean/declarations/alghom-ext--f81b2084d6e7e42654a067dc.md) | 132 | `result-track:f81b2084d6e7e42654a067dc85210dbded1b2264e77a045e986ebe8ac4d6c750` |
| 12 | `theorem` | [exists_smodEq](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean/declarations/exists-smodeq--64a51dd488a72c855bd44247.md) | 139 | `result-track:64a51dd488a72c855bd44247790887f6e38db52d7c86bfbb91eb164a5f76526d` |
| 13 | `theorem` | [exists_gen_dvd_sub](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean/declarations/exists-gen-dvd-sub--18bd445fb9e2fbe4f1165d2a.md) | 158 | `result-track:18bd445fb9e2fbe4f1165d2ae813e15d7f82fd897b286662ae2c277e7c001698` |
| 14 | `def` | [minpolyGen](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean/declarations/minpolygen--c7198e9c8e056016b7d627a4.md) | 166 | `declaration-track:c7198e9c8e056016b7d627a418b8d8290625e710ebc0795de11ea751964ab97c` |
| 15 | `theorem` | [aeval_minpolyGen](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean/declarations/aeval-minpolygen--2074ae1239590771e08a94ac.md) | 169 | `result-track:2074ae1239590771e08a94ac3704e45b48e2bf45621d86db130d3d336eb58c38` |
| 16 | `theorem` | [minpolyGen_monic](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean/declarations/minpolygen-monic--a1246040f20627eb72b283a0.md) | 175 | `result-track:a1246040f20627eb72b283a0cdfc14455a9689164319226bc26681bdb076594a` |
| 17 | `theorem` | [dim_le_natDegree_of_root](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean/declarations/dim-le-natdegree-of-root--5d8e317e9834e3ed4d8cd15d.md) | 181 | `result-track:5d8e317e9834e3ed4d8cd15d185c83c0d72a4ec32fda9cf99b4ae19e71fc6f27` |
| 18 | `theorem` | [dim_le_degree_of_root](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean/declarations/dim-le-degree-of-root--a94869a17367d4a0e40d26d7.md) | 190 | `result-track:a94869a17367d4a0e40d26d74520cf2538a31b6fb3b1f6c5b4a770c4c51faf7e` |
| 19 | `theorem` | [degree_minpolyGen](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean/declarations/degree-minpolygen--35a0531c339b54ad18ee9bef.md) | 195 | `result-track:35a0531c339b54ad18ee9bef0620c5d1312e6a04bf4841d6a9815143393c2dbc` |
| 20 | `theorem` | [natDegree_minpolyGen](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean/declarations/natdegree-minpolygen--da13f24c42fdde32a8883fa4.md) | 201 | `result-track:da13f24c42fdde32a8883fa4c5f381aa647e6b868940bec70afbe9d9a252c50b` |
| 21 | `theorem` | [minpolyGen_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean/declarations/minpolygen-eq--8d6e8905524e716bc0313381.md) | 206 | `result-track:8d6e8905524e716bc03133815bdd1e850102334d68c50bef71570a32e5b61492` |
| 22 | `theorem` | [isIntegral_gen](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean/declarations/isintegral-gen--732fef6c988a412ee31daa98.md) | 212 | `result-track:732fef6c988a412ee31daa98094edd8f86147c55f740fb26b46b816456ae3ef3` |
| 23 | `theorem` | [degree_minpoly](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean/declarations/degree-minpoly--f8ec04292bfd1989b07a4a2e.md) | 216 | `result-track:f8ec04292bfd1989b07a4a2e647e53ce071348bf656b29dad474d1f4b798c068` |
| 24 | `theorem` | [natDegree_minpoly](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean/declarations/natdegree-minpoly--c53d9d02661245f64680ca7f.md) | 220 | `result-track:c53d9d02661245f64680ca7f75f862104afe7d78cf93a42ea01b7acc4651ec3f` |
| 25 | `theorem` | [leftMulMatrix](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean/declarations/leftmulmatrix--b99b6da3bf3f59afd3ac9d20.md) | 223 | `result-track:b99b6da3bf3f59afd3ac9d2011dffbf21fd82682e74296afd057143b18b6ac21` |
| 26 | `theorem` | [constr_pow_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean/declarations/constr-pow-aeval--03eeff263951f7e500f180c3.md) | 248 | `result-track:03eeff263951f7e500f180c3e8fa3d1abb9fb6879943c8f56d186f1477b38a3e` |
| 27 | `theorem` | [constr_pow_gen](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean/declarations/constr-pow-gen--0807f183bc4a0d1b76d82456.md) | 267 | `result-track:0807f183bc4a0d1b76d82456f178bf19efdfd545a9e8238873c60866ad2d5b27` |
| 28 | `theorem` | [constr_pow_algebraMap](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean/declarations/constr-pow-algebramap--8fc3bbc250992997fd828ead.md) | 271 | `result-track:8fc3bbc250992997fd828eadfb31ed1b46cfb3a777e95f4aec39ec54479e0c4b` |
| 29 | `theorem` | [constr_pow_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean/declarations/constr-pow-mul--4ae5c720403e3e162986743f.md) | 275 | `result-track:4ae5c720403e3e162986743f51020766a983fcf4be77f137b505f13135bcadbd` |
| 30 | `def` | [lift](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean/declarations/lift--eb5e67e0b99b80ae4bf99503.md) | 287 | `declaration-track:eb5e67e0b99b80ae4bf99503755d26e2c40cd4da1a1548c1dfd8a7c2a2e612f4` |
| 31 | `theorem` | [lift_gen](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean/declarations/lift-gen--fd30761785f11f397cf42057.md) | 296 | `result-track:fd30761785f11f397cf42057aef75298b511d7a9af41734fc2bf4c848c1f7f74` |
| 32 | `theorem` | [lift_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean/declarations/lift-aeval--8760b0532ae4cef10383cb1b.md) | 301 | `result-track:8760b0532ae4cef10383cb1bb3af88c7ed02095a906f2713bd7c388e2ce4b952` |
| 33 | `def` | [liftEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean/declarations/liftequiv--87ea149869c696c46b244a3e.md) | 313 | `declaration-track:87ea149869c696c46b244a3ebd492fddcdab81b1b4c68199a1d80e2963aec87d` |
| 34 | `def` | [liftEquiv'](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean/declarations/liftequiv--70792c6bcb7afdb702250789.md) | 323 | `declaration-track:70792c6bcb7afdb702250789e8ce907ddbbcd72478e350185353a3117320b8be` |
| 35 | `def` | [AlgHom.fintype](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean/declarations/alghom-fintype--5109e787dedcf0ac38abd809.md) | 332 | `declaration-track:5109e787dedcf0ac38abd8097468cef53a2f65c44dbe92a5a8ef8e19f0f07512` |
| 36 | `def` | [equivOfRoot](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean/declarations/equivofroot--3508b846f0b7cd77078bff06.md) | 343 | `declaration-track:3508b846f0b7cd77078bff06c10bbedb2db35691fbf28b4404b88bd263c324b3` |
| 37 | `theorem` | [equivOfRoot_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean/declarations/equivofroot-aeval--7866a1eb0fa57b53e88dc477.md) | 357 | `result-track:7866a1eb0fa57b53e88dc47761808bf7c99822de836e593203756c5b0d238682` |
| 38 | `theorem` | [equivOfRoot_gen](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean/declarations/equivofroot-gen--c24200a50496d736565d8d41.md) | 363 | `result-track:c24200a50496d736565d8d4107df1b1b4cd419350a438a2b44863696110f6e44` |
| 39 | `theorem` | [equivOfRoot_symm](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean/declarations/equivofroot-symm--b38585af224f65117279051b.md) | 369 | `result-track:b38585af224f65117279051ba224e4222dc253fc47cca87e162fe708d298e104` |
| 40 | `def` | [equivOfMinpoly](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean/declarations/equivofminpoly--9957d5ad7a1f24c8d47628de.md) | 381 | `declaration-track:9957d5ad7a1f24c8d47628decfff95a95e6553b19f1bc8cc6d291c0f23175348` |
| 41 | `theorem` | [equivOfMinpoly_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean/declarations/equivofminpoly-aeval--97d97f454679bc0c8e52dd1f.md) | 386 | `result-track:97d97f454679bc0c8e52dd1f7b356769113a42a2aa457e0af7c1641f95008acc` |
| 42 | `theorem` | [equivOfMinpoly_gen](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean/declarations/equivofminpoly-gen--2f38ed1c8436ec6206c71f54.md) | 392 | `result-track:2f38ed1c8436ec6206c71f54130e310479a3518698135f0ea076a5fa5f9a2edc` |
| 43 | `theorem` | [equivOfMinpoly_symm](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean/declarations/equivofminpoly-symm--af8d624e5480203fea3d0015.md) | 397 | `result-track:af8d624e5480203fea3d001581b0f06218abe57bb448bf6e1b09ebfc4f59a2e9` |
| 44 | `theorem` | [linearIndependent_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean/declarations/linearindependent-pow--fc87482eb90247b3c05aebdd.md) | 410 | `result-track:fc87482eb90247b3c05aebddb23f0b4e92a4b05962edff01954516272c80d714` |
| 45 | `theorem` | [IsIntegral.mem_span_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean/declarations/isintegral-mem-span-pow--e3b4afe6aa6588953978f80a.md) | 425 | `result-track:e3b4afe6aa6588953978f80ad76840b72ffbf1e555d3b2d4cf2bdba946868bb7` |
| 46 | `def` | [map](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean/declarations/map--4dd73bc951b1c1c2507ea71e.md) | 443 | `declaration-track:4dd73bc951b1c1c2507ea71e0c6b72316bc60863c7c9dc12e442b1bf1765ecc5` |
| 47 | `theorem` | [minpolyGen_map](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean/declarations/minpolygen-map--7c3cf132a37b12066342ac70.md) | 451 | `result-track:7c3cf132a37b12066342ac70b76c4ab61fd082462bbf81420a784db658ce651e` |
| 48 | `theorem` | [equivOfRoot_map](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean/declarations/equivofroot-map--d982009e395f7fdb2c8ac1c6.md) | 460 | `result-track:d982009e395f7fdb2c8ac1c644d619365930e505716a77330e23d6f3fd757f67` |
| 49 | `theorem` | [equivOfMinpoly_map](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean/declarations/equivofminpoly-map--5b5acdc9918b724bd59be2ba.md) | 467 | `result-track:5b5acdc9918b724bd59be2ba04cd3a016b934a5817486c9894f77bf762e81afe` |
| 50 | `theorem` | [adjoin_gen_eq_top](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean/declarations/adjoin-gen-eq-top--54cc9c76cc15ebf00ebd077d.md) | 477 | `result-track:54cc9c76cc15ebf00ebd077d46ab5f6196e4d3ce559818def97991c547996218` |
| 51 | `theorem` | [adjoin_eq_top_of_gen_mem_adjoin](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean/declarations/adjoin-eq-top-of-gen-mem-adjoin--45132968652fade0d0d9a9f7.md) | 483 | `result-track:45132968652fade0d0d9a9f7d7815605a684acf79054d7c1293cec68141c3c91` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
