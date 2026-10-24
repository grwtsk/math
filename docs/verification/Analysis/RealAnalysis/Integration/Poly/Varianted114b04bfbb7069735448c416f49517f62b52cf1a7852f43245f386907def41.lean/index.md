# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Poly.Varianted114b04bfbb7069735448c416f49517f62b52cf1a7852f43245f386907def41

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f702f4975646ede439df49e223b8e83266f8dca3",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Poly/Varianted114b04bfbb7069735448c416f49517f62b52cf1a7852f43245f386907def41.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Varianted114b04bfbb7069735448c416f49517f62b52cf1a7852f43245f386907def41.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Varianted114b04bfbb7069735448c416f49517f62b52cf1a7852f43245f386907def41.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f702f4975646ede439df49e223b8e83266f8dca3`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Poly/Varianted114b04bfbb7069735448c416f49517f62b52cf1a7852f43245f386907def41.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Poly/Varianted114b04bfbb7069735448c416f49517f62b52cf1a7852f43245f386907def41.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Certificate.D1` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [polyEval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Varianted114b04bfbb7069735448c416f49517f62b52cf1a7852f43245f386907def41.lean/declarations/polyeval--71214427bde73db73dffeae2.md) | 33 | `declaration-track:71214427bde73db73dffeae299ff82f1072fddbe71611a3db8a4fa6cdba718cd` |
| 2 | `def` | [polyInt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Varianted114b04bfbb7069735448c416f49517f62b52cf1a7852f43245f386907def41.lean/declarations/polyint--c2235b36f2b09d774e4a97f0.md) | 36 | `declaration-track:c2235b36f2b09d774e4a97f08afd303c6a8609af03a61f9a1df34b393922f47d` |
| 3 | `theorem` | [integral_polyEval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Varianted114b04bfbb7069735448c416f49517f62b52cf1a7852f43245f386907def41.lean/declarations/integral-polyeval--bfdc24cec733a924dfcd3c17.md) | 39 | `result-track:bfdc24cec733a924dfcd3c1765e616a78f17d26e98b26d3ae334ca78982cb632` |
| 4 | `def` | [T9](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Varianted114b04bfbb7069735448c416f49517f62b52cf1a7852f43245f386907def41.lean/declarations/t9--6fe5ee8e6068751078b2900c.md) | 51 | `declaration-track:6fe5ee8e6068751078b2900c535fad04e8e8db6e15e6367d9b38a77707bea739` |
| 5 | `theorem` | [D1trunc9_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Varianted114b04bfbb7069735448c416f49517f62b52cf1a7852f43245f386907def41.lean/declarations/d1trunc9-eq--7d241615650b4eaca7c82dd1.md) | 56 | `result-track:7d241615650b4eaca7c82dd1b922f8c4dd92e64641784efba81ddf30d05f49c8` |
| 6 | `theorem` | [vConv_vFlat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Varianted114b04bfbb7069735448c416f49517f62b52cf1a7852f43245f386907def41.lean/declarations/vconv-vflat--2ab5f622af83e70da57c41b9.md) | 64 | `result-track:2ab5f622af83e70da57c41b94dc2e0ca82ec7b272111b6d3f6c5e0ec07c74017` |
| 7 | `theorem` | [integral_vFlat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Varianted114b04bfbb7069735448c416f49517f62b52cf1a7852f43245f386907def41.lean/declarations/integral-vflat--f805b170d377b9ffe7e64e35.md) | 68 | `result-track:f805b170d377b9ffe7e64e357852752ef4ebb90d8a96fd0d542dab4d69550fd2` |
| 8 | `theorem` | [integral_vFlat_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Varianted114b04bfbb7069735448c416f49517f62b52cf1a7852f43245f386907def41.lean/declarations/integral-vflat-sq--0ee19b94f0271c51e3e9ff26.md) | 71 | `result-track:0ee19b94f0271c51e3e9ff26570a68f477dbbfbf373bf3975481b8f589755827` |
| 9 | `def` | [prodFlat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Varianted114b04bfbb7069735448c416f49517f62b52cf1a7852f43245f386907def41.lean/declarations/prodflat--5b4d818dcdf733db4b6d7bfe.md) | 75 | `declaration-track:5b4d818dcdf733db4b6d7bfe8c77820d34b9dc333f2495a0b7bcc8c3ce2a8c70` |
| 10 | `theorem` | [T9_mul_flat_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Varianted114b04bfbb7069735448c416f49517f62b52cf1a7852f43245f386907def41.lean/declarations/t9-mul-flat-eq--fc18d29973a7c4e9d5870b90.md) | 79 | `result-track:fc18d29973a7c4e9d5870b90e4300961b2f2d0747b2c2a1cfa3c21da40c2e9ec` |
| 11 | `theorem` | [integral_T9_flat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Varianted114b04bfbb7069735448c416f49517f62b52cf1a7852f43245f386907def41.lean/declarations/integral-t9-flat--d4ba6f078035729bd5f8b2ad.md) | 85 | `result-track:d4ba6f078035729bd5f8b2ad6e1714a627451236348f136ea10abe3cb2268b60` |
| 12 | `theorem` | [jWin_trunc9_vFlat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Varianted114b04bfbb7069735448c416f49517f62b52cf1a7852f43245f386907def41.lean/declarations/jwin-trunc9-vflat--c7ce94d568236ec390e8b252.md) | 90 | `result-track:c7ce94d568236ec390e8b252bd06d50f44a510768d9fc2cde3bc608f0a2f8eda` |
| 13 | `theorem` | [vQuartic_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Varianted114b04bfbb7069735448c416f49517f62b52cf1a7852f43245f386907def41.lean/declarations/vquartic-eq--d115bc658517f98ccd77366c.md) | 99 | `result-track:d115bc658517f98ccd77366cb4e36dd1c1180f31e7ecadc1b34a13faf7b13ea3` |
| 14 | `theorem` | [integral_vQuartic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Varianted114b04bfbb7069735448c416f49517f62b52cf1a7852f43245f386907def41.lean/declarations/integral-vquartic--abd1ea2309435796e983d108.md) | 102 | `result-track:abd1ea2309435796e983d108c9e14d0c57e3aab5fb7c8f6f687a2706095aba7d` |
| 15 | `theorem` | [integral_vQuartic_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Varianted114b04bfbb7069735448c416f49517f62b52cf1a7852f43245f386907def41.lean/declarations/integral-vquartic-sq--c586fa8d752c6c39dfe74500.md) | 109 | `result-track:c586fa8d752c6c39dfe745001e18d0d36cc686b973790b0c83dad81b029bd739` |
| 16 | `def` | [convQ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Varianted114b04bfbb7069735448c416f49517f62b52cf1a7852f43245f386907def41.lean/declarations/convq--2aead0382e97a9999f3063fc.md) | 118 | `declaration-track:2aead0382e97a9999f3063fc7a09977512e551ef08b73d237b52e1f11ec4f76d` |
| 17 | `def` | [coeffS](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Varianted114b04bfbb7069735448c416f49517f62b52cf1a7852f43245f386907def41.lean/declarations/coeffs--e47c44ef10519c73b234f71d.md) | 123 | `declaration-track:e47c44ef10519c73b234f71d3db01c860835a42b954e583d1c69647f7995ef8d` |
| 18 | `theorem` | [vConv_vQuartic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Varianted114b04bfbb7069735448c416f49517f62b52cf1a7852f43245f386907def41.lean/declarations/vconv-vquartic--52b6d6a292cd9c72572fa24e.md) | 134 | `result-track:52b6d6a292cd9c72572fa24efcad4345ce8d82953e481a57bce1986d4cdf6a2b` |
| 19 | `def` | [prodQuartic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Varianted114b04bfbb7069735448c416f49517f62b52cf1a7852f43245f386907def41.lean/declarations/prodquartic--db7f411dbbefb9f47aae46fc.md) | 143 | `declaration-track:db7f411dbbefb9f47aae46fcfa9a1f97e186f9e792cac0db1ee73596323824c6` |
| 20 | `theorem` | [T9_mul_convQ_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Varianted114b04bfbb7069735448c416f49517f62b52cf1a7852f43245f386907def41.lean/declarations/t9-mul-convq-eq--8e3ef4acade60dcc07682d37.md) | 152 | `result-track:8e3ef4acade60dcc07682d37a24c799714d51b2f98eb81e4a11b3bc65c4fda8f` |
| 21 | `theorem` | [integral_T9_quartic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Varianted114b04bfbb7069735448c416f49517f62b52cf1a7852f43245f386907def41.lean/declarations/integral-t9-quartic--686e966f4dcaae8001c6458f.md) | 158 | `result-track:686e966f4dcaae8001c6458f81a971c44a4b1c5c5cabf7e4adfc4349da11b050` |
| 22 | `theorem` | [jWin_trunc9_vQuartic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Varianted114b04bfbb7069735448c416f49517f62b52cf1a7852f43245f386907def41.lean/declarations/jwin-trunc9-vquartic--15365803c6623dcfa9a69097.md) | 164 | `result-track:15365803c6623dcfa9a6909779afbb7f7d31f8fffdb566a6bc134a9e6c787663` |
| 23 | `theorem` | [vQuartic_le_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Varianted114b04bfbb7069735448c416f49517f62b52cf1a7852f43245f386907def41.lean/declarations/vquartic-le-one--d622ea4541bcd5edc4f9c26d.md) | 174 | `result-track:d622ea4541bcd5edc4f9c26ddf4615d014523c61813715b6e9725218049b5510` |
| 24 | `theorem` | [vQuartic_ge](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Varianted114b04bfbb7069735448c416f49517f62b52cf1a7852f43245f386907def41.lean/declarations/vquartic-ge--d5755d4a6dfe45149df7455d.md) | 178 | `result-track:d5755d4a6dfe45149df7455d3373d096ad12424611fa24064906c27e89ac3bfc` |
| 25 | `theorem` | [vQuartic_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Varianted114b04bfbb7069735448c416f49517f62b52cf1a7852f43245f386907def41.lean/declarations/vquartic-pos--88aad93879c096b44fa6dfc0.md) | 184 | `result-track:88aad93879c096b44fa6dfc053abadf2099f57f0250375eb1b6781c672c00ecf` |
| 26 | `theorem` | [vQuartic_even](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Varianted114b04bfbb7069735448c416f49517f62b52cf1a7852f43245f386907def41.lean/declarations/vquartic-even--43913b366404e0cb2f2dcf6c.md) | 187 | `result-track:43913b366404e0cb2f2dcf6cdea58be6fd8d099103f75e06cd091a421bd9a674` |
| 27 | `theorem` | [continuous_vQuartic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Varianted114b04bfbb7069735448c416f49517f62b52cf1a7852f43245f386907def41.lean/declarations/continuous-vquartic--842dc9dff4742a6de84536d9.md) | 190 | `result-track:842dc9dff4742a6de84536d9c5323e1117ba1cda8c7901664d1e46e3862e5d56` |
| 28 | `theorem` | [vQuartic_nonneg_on](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Varianted114b04bfbb7069735448c416f49517f62b52cf1a7852f43245f386907def41.lean/declarations/vquartic-nonneg-on--84e60cc8dd8a9519bdd78d3c.md) | 192 | `result-track:84e60cc8dd8a9519bdd78d3c5e7558deb2cc7468582810064ff856b326b2de36` |
| 29 | `theorem` | [continuous_vFlat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Varianted114b04bfbb7069735448c416f49517f62b52cf1a7852f43245f386907def41.lean/declarations/continuous-vflat--f853f8b3a3b019ed6ae8a1ff.md) | 195 | `result-track:f853f8b3a3b019ed6ae8a1ff5a0b34eb9475878f42e6793e5be6ad339f8da0c2` |
| 30 | `theorem` | [vFlat_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Varianted114b04bfbb7069735448c416f49517f62b52cf1a7852f43245f386907def41.lean/declarations/vflat-nonneg--cffe926a02cc3de222d21775.md) | 197 | `result-track:cffe926a02cc3de222d2177563ea99557bf0203f7720569ebff5d805483e8d73` |
| 31 | `theorem` | [convQ_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Varianted114b04bfbb7069735448c416f49517f62b52cf1a7852f43245f386907def41.lean/declarations/convq-nonneg--2e6c11e1ceb7fc10ddb86f81.md) | 199 | `result-track:2e6c11e1ceb7fc10ddb86f81f2eebd124c664d43f7330e9791061176c0cd3d10` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
