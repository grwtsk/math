# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Defs.Variant1d136811d35f2678824706a60053e1ab4ec3c5aa775b45e2a242ac7b97b600ef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "549aa56f19e3854fd5e5ff6a42a7279dc7851dee",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant1d136811d35f2678824706a60053e1ab4ec3c5aa775b45e2a242ac7b97b600ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant1d136811d35f2678824706a60053e1ab4ec3c5aa775b45e2a242ac7b97b600ef.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant1d136811d35f2678824706a60053e1ab4ec3c5aa775b45e2a242ac7b97b600ef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `549aa56f19e3854fd5e5ff6a42a7279dc7851dee`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant1d136811d35f2678824706a60053e1ab4ec3c5aa775b45e2a242ac7b97b600ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant1d136811d35f2678824706a60053e1ab4ec3c5aa775b45e2a242ac7b97b600ef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Architect` — import line 6; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.Fourier` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Chebyshev` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [nth_prime](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant1d136811d35f2678824706a60053e1ab4ec3c5aa775b45e2a242ac7b97b600ef.lean/declarations/nth-prime--8657817b2ba911557bde9a93.md) | 21 | `declaration-track:8657817b2ba911557bde9a937d456f1c4a11b04210d9f5ad7ecccb0a3a8b6dd5` |
| 2 | `abbrev` | [nth_prime'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant1d136811d35f2678824706a60053e1ab4ec3c5aa775b45e2a242ac7b97b600ef.lean/declarations/nth-prime--0ffac870b12084b82a9e9ef1.md) | 24 | `declaration-track:0ffac870b12084b82a9e9ef187d642b0e545f703c385c5d3533f2ac6de231cbd` |
| 3 | `abbrev` | [Psi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant1d136811d35f2678824706a60053e1ab4ec3c5aa775b45e2a242ac7b97b600ef.lean/declarations/psi--72911b17adae8b5396777d15.md) | 27 | `declaration-track:72911b17adae8b5396777d15187c34c9eece6cbc3e39a67986aef57bef0c5ce5` |
| 4 | `def` | [M](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant1d136811d35f2678824706a60053e1ab4ec3c5aa775b45e2a242ac7b97b600ef.lean/declarations/m--bac0496beb0f4d2c0a1948e2.md) | 29 | `declaration-track:bac0496beb0f4d2c0a1948e227e2fbfeb6b4bfb861e0f55fa89b5cd5b9062556` |
| 5 | `abbrev` | [nth_prime_gap](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant1d136811d35f2678824706a60053e1ab4ec3c5aa775b45e2a242ac7b97b600ef.lean/declarations/nth-prime-gap--fa0b9be50c308f63a6a22325.md) | 32 | `declaration-track:fa0b9be50c308f63a6a2232502b08a14c6b604202116afbe0773e838725febbe` |
| 6 | `def` | [prime_gap_record](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant1d136811d35f2678824706a60053e1ab4ec3c5aa775b45e2a242ac7b97b600ef.lean/declarations/prime-gap-record--a2495135d8f7a1ec713dc3ce.md) | 35 | `declaration-track:a2495135d8f7a1ec713dc3ce6cd23ae407992214ef43de1e60caad6e63b98d71` |
| 7 | `def` | [first_gap](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant1d136811d35f2678824706a60053e1ab4ec3c5aa775b45e2a242ac7b97b600ef.lean/declarations/first-gap--19a7ab4f0f6eeba79f74865d.md) | 47 | `declaration-track:19a7ab4f0f6eeba79f74865d5b8bfdd4af9bb62b291abd683c4027af79d9cc2c` |
| 8 | `def` | [first_gap_record](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant1d136811d35f2678824706a60053e1ab4ec3c5aa775b45e2a242ac7b97b600ef.lean/declarations/first-gap-record--007865f45b004313a714378f.md) | 52 | `declaration-track:007865f45b004313a714378fc6f51b9a482d64b10c52fcaf3d799ed9d5400a78` |
| 9 | `def` | [HasPrimeInInterval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant1d136811d35f2678824706a60053e1ab4ec3c5aa775b45e2a242ac7b97b600ef.lean/declarations/hasprimeininterval--0dad8708afc4757ca119f27e.md) | 57 | `declaration-track:0dad8708afc4757ca119f27ea32d66ff20a6fe0a2d3cd49682c32f9aad9b3bd8` |
| 10 | `def` | [HasPrimeInInterval.log_thm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant1d136811d35f2678824706a60053e1ab4ec3c5aa775b45e2a242ac7b97b600ef.lean/declarations/hasprimeininterval-log-thm--7238e7ebe84333f764b9f6c3.md) | 60 | `declaration-track:7238e7ebe84333f764b9f6c36952d7a1ade86ec031d100384837d322222f435c` |
| 11 | `def` | [pi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant1d136811d35f2678824706a60053e1ab4ec3c5aa775b45e2a242ac7b97b600ef.lean/declarations/pi--c2fb83d2e142ad2fed1ede05.md) | 69 | `declaration-track:c2fb83d2e142ad2fed1ede052cacb9d1fcab757f1cec285f6b1672687ef685db` |
| 12 | `def` | [pi_star](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant1d136811d35f2678824706a60053e1ab4ec3c5aa775b45e2a242ac7b97b600ef.lean/declarations/pi-star--2c531e9ea3bbbed1cac2dfe6.md) | 78 | `declaration-track:2c531e9ea3bbbed1cac2dfe6ce9cff9c6291f7776242656d2b1c7b27f9b6959f` |
| 13 | `def` | [li](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant1d136811d35f2678824706a60053e1ab4ec3c5aa775b45e2a242ac7b97b600ef.lean/declarations/li--deb66cacf3111c8d30551014.md) | 88 | `declaration-track:deb66cacf3111c8d3055101491901d24658a541bbaec60d6f4a6a3b1dd5355ac` |
| 14 | `def` | [Li](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant1d136811d35f2678824706a60053e1ab4ec3c5aa775b45e2a242ac7b97b600ef.lean/declarations/li--992348f842494bbe23a1872f.md) | 94 | `declaration-track:992348f842494bbe23a1872f216d1830b13d3968724471ef323f2906ce6cfff9` |
| 15 | `def` | [Eψ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant1d136811d35f2678824706a60053e1ab4ec3c5aa775b45e2a242ac7b97b600ef.lean/declarations/e--d988824e2203c43c7dabfc56.md) | 100 | `declaration-track:d988824e2203c43c7dabfc567e3cc72e779543d42f03ae0d067b412bdf37875d` |
| 16 | `def` | [admissible_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant1d136811d35f2678824706a60053e1ab4ec3c5aa775b45e2a242ac7b97b600ef.lean/declarations/admissible-bound--c92ee3915c646c50e109f43f.md) | 102 | `declaration-track:c92ee3915c646c50e109f43fa8f87ded1faa50223e0dd2107ee60690dc187f43` |
| 17 | `def` | [Eψ.classicalBound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant1d136811d35f2678824706a60053e1ab4ec3c5aa775b45e2a242ac7b97b600ef.lean/declarations/e-classicalbound--b1ad38e0425d56a3bade4598.md) | 120 | `declaration-track:b1ad38e0425d56a3bade4598337836d432974225c6463399cbe052b04c88e07e` |
| 18 | `def` | [Eψ.bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant1d136811d35f2678824706a60053e1ab4ec3c5aa775b45e2a242ac7b97b600ef.lean/declarations/e-bound--70f036fe00085c5670b7638b.md) | 123 | `declaration-track:70f036fe00085c5670b7638b90e6977084446ba3f01fdbc02c04aa2e2af51d25` |
| 19 | `def` | [Eψ.numericalBound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant1d136811d35f2678824706a60053e1ab4ec3c5aa775b45e2a242ac7b97b600ef.lean/declarations/e-numericalbound--eb5a132fd0bccf39a7de9e93.md) | 125 | `declaration-track:eb5a132fd0bccf39a7de9e93d6f9a763c3fb14c46978bae768852b16bcc78d9f` |
| 20 | `def` | [Eπ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant1d136811d35f2678824706a60053e1ab4ec3c5aa775b45e2a242ac7b97b600ef.lean/declarations/e--440f578d54b48e482b4aa435.md) | 134 | `declaration-track:440f578d54b48e482b4aa4350814febe210a249f63e0b4d74abe144ac2886943` |
| 21 | `def` | [Eπ_star](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant1d136811d35f2678824706a60053e1ab4ec3c5aa775b45e2a242ac7b97b600ef.lean/declarations/e-star--963979849d900bfcc5e3c878.md) | 137 | `declaration-track:963979849d900bfcc5e3c8780f29bfcbc1be1c3570d8e58a65be8079e9cf6d5b` |
| 22 | `def` | [Eθ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant1d136811d35f2678824706a60053e1ab4ec3c5aa775b45e2a242ac7b97b600ef.lean/declarations/e--74332852568cff107ec0e1a9.md) | 145 | `declaration-track:74332852568cff107ec0e1a96e48822fb1f4f3d76f943d9c791c861a061d6481` |
| 23 | `def` | [Eθ.classicalBound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant1d136811d35f2678824706a60053e1ab4ec3c5aa775b45e2a242ac7b97b600ef.lean/declarations/e-classicalbound--99a4bece4c5cbdc365fd4da3.md) | 162 | `declaration-track:99a4bece4c5cbdc365fd4da33f6905d703825d9b358367e446386e3a7b8997d6` |
| 24 | `def` | [Eθ.numericalBound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant1d136811d35f2678824706a60053e1ab4ec3c5aa775b45e2a242ac7b97b600ef.lean/declarations/e-numericalbound--0cad6249953119a875b4ea6d.md) | 165 | `declaration-track:0cad6249953119a875b4ea6d93b1411ec4510d4e73e18e9d1f014cb34b93fdf1` |
| 25 | `def` | [Eπ.classicalBound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant1d136811d35f2678824706a60053e1ab4ec3c5aa775b45e2a242ac7b97b600ef.lean/declarations/e-classicalbound--e55f31562fff3c1fe1f71b13.md) | 182 | `declaration-track:e55f31562fff3c1fe1f71b13f7d7012583dbd920c401b7f5caa6dc9559270180` |
| 26 | `def` | [Eπ.bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant1d136811d35f2678824706a60053e1ab4ec3c5aa775b45e2a242ac7b97b600ef.lean/declarations/e-bound--f755e779151340ff8b10d23b.md) | 185 | `declaration-track:f755e779151340ff8b10d23b7f79ce31c0f8e9ba1c81147236bc390e5c43f6b9` |
| 27 | `def` | [Eπ.numericalBound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant1d136811d35f2678824706a60053e1ab4ec3c5aa775b45e2a242ac7b97b600ef.lean/declarations/e-numericalbound--d04b101ee7b7ad1e3880bd38.md) | 187 | `declaration-track:d04b101ee7b7ad1e3880bd3839fb6a773bd47e0d51190a64ba04b96b954d005a` |
| 28 | `def` | [Eπ.vinogradovBound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant1d136811d35f2678824706a60053e1ab4ec3c5aa775b45e2a242ac7b97b600ef.lean/declarations/e-vinogradovbound--6b7290adb9734cb3ae77c5fb.md) | 190 | `declaration-track:6b7290adb9734cb3ae77c5fb79f03fa65bd9c1d1c88f9c87722052b2a95af31f` |
| 29 | `def` | [Eπ_star.classicalBound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant1d136811d35f2678824706a60053e1ab4ec3c5aa775b45e2a242ac7b97b600ef.lean/declarations/e-star-classicalbound--069f919e7433e3966bbd3f3b.md) | 194 | `declaration-track:069f919e7433e3966bbd3f3bde90ebe35463220d73573c937beb95100ae40c16` |
| 30 | `def` | [Eπ_star.bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant1d136811d35f2678824706a60053e1ab4ec3c5aa775b45e2a242ac7b97b600ef.lean/declarations/e-star-bound--aaf415c5c4ec2fa11c0d6be1.md) | 197 | `declaration-track:aaf415c5c4ec2fa11c0d6be1649f652339ee4499d827c0584fa8c081d3bbc046` |
| 31 | `def` | [Eπ_star.numericalBound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant1d136811d35f2678824706a60053e1ab4ec3c5aa775b45e2a242ac7b97b600ef.lean/declarations/e-star-numericalbound--c6e7163d62f8d5bec67bdf7c.md) | 200 | `declaration-track:c6e7163d62f8d5bec67bdf7ca2b9925c7dbf04b895ccfffa88d8cb989425b0fc` |
| 32 | `def` | [Eπ_star.vinogradovBound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant1d136811d35f2678824706a60053e1ab4ec3c5aa775b45e2a242ac7b97b600ef.lean/declarations/e-star-vinogradovbound--e43550ced2ee870bf0708329.md) | 203 | `declaration-track:e43550ced2ee870bf0708329e0265b2eba202a9ff6954f6b5af439fa27600d2e` |
| 33 | `lemma` | [admissible_bound.mono](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant1d136811d35f2678824706a60053e1ab4ec3c5aa775b45e2a242ac7b97b600ef.lean/declarations/admissible-bound-mono--bd791cdec72564a6d226ee77.md) | 217 | `result-track:bd791cdec72564a6d226ee77fc1b651aa751b9ad9e47962a4bc7c0cf9fe3b45a` |
| 34 | `lemma` | [Eψ.classicalBound.to_numericalBound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant1d136811d35f2678824706a60053e1ab4ec3c5aa775b45e2a242ac7b97b600ef.lean/declarations/e-classicalbound-to-numericalbound--a49537b43a840d5f8a8eb059.md) | 277 | `result-track:a49537b43a840d5f8a8eb059ca121004c9f95cf7d714023bd65b605cad21299c` |
| 35 | `lemma` | [Eθ.classicalBound.to_numericalBound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant1d136811d35f2678824706a60053e1ab4ec3c5aa775b45e2a242ac7b97b600ef.lean/declarations/e-classicalbound-to-numericalbound--0e1cb0f6aec76a4180e732c0.md) | 290 | `result-track:0e1cb0f6aec76a4180e732c0f4a5a65330d5d2f65f0209ec279c70f5bdfac4cd` |
| 36 | `lemma` | [Eπ.classicalBound.to_numericalBound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant1d136811d35f2678824706a60053e1ab4ec3c5aa775b45e2a242ac7b97b600ef.lean/declarations/e-classicalbound-to-numericalbound--cfaf7d2721d52f5e15292e17.md) | 303 | `result-track:cfaf7d2721d52f5e15292e175c1017a86a8eeaa7f42f5ea55578239a53718bab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
