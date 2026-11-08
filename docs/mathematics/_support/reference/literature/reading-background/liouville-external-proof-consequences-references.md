# Literature ledger shard: external-proof consequences for Liouville causal energy

## RH-LIOUVILLE-EXTERNAL-PROOF-CONSEQUENCES-01 (2026-10-31)

- **Local title/byline:** *External-proof consequences for the Liouville
  causal-energy programme*, grwtsk contributors.
- **Research scope:** `6ae605b4-a7b4-83e8-9ada-ee9c9089476b`.
- **Local source base:** `grwtsk/math@12575a445f0d4623eebdf604bb6e628aa9189b28`,
  tree `5a3981880f67ffb4d89b0bf4aabc6f1487ab3d97`.
- **New source candidate:**
  `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleExternalProofConsequences.lean`.
- **Exact local theorem:** under the terminal Buchstab identity, integrated
  energy identity, nonnegativity, and the unit-pairing Young bound, paid
  all-positive-rate control of
  `max(-buchstabCovariance (Y T) T,0)` is equivalent to paid
  all-positive-rate control of `roughEnergyAbove (Y T) T`, once the same unit
  response conditioning is paid. The constants are
  `C_unit + 2*C_cov` in one direction and
  `(3*C_rough + C_unit)/2` in the other; there is no exponent loss.
- **Certificate consequences:** both
  `GrowingCorrelationEnvelopeCertificate` and
  `BuchstabGlobalPotentialCertificate` map to `PaidRoughEnergyBridge`.
  `ExternalProofPortfolio` therefore supplies paid rough-energy control under
  the exact source/Gram premises.
- **Proportional-cutoff consequence:** assuming the previously recorded
  lower bound for the negative complete Buchstab covariance at
  `Y_T=floor(exp(2T/5))`, every growing-correlation majorant and every paid
  global potential at that cutoff has an eventual lower bound of order
  `exp(T)/T^2`. The global-potential statement also uses the elementary fact
  `1 <= inverseSieveCost (initialPrimeBand Y)`.
- **Open formal no-go closure:** the contradiction between the exponential
  lower bound and an all-positive-rate certificate requires an explicit Lean
  theorem that exponential growth dominates every polynomial at, for example,
  rate `1/2`; the inverse-cost product lower bound also remains to be proved.
- **External source pins inherited unchanged:** Mathlib Selberg sieve at
  `d13f23b723b8a846827a245b89c10fc7d3f11612`, blob
  `29f3dc9e9e53e9e429df6c862714cf8327a2b554`; OpenAI ordinary two-point
  comparator/solution at `4eaee87548250b2682affda7d05d947c05554bae`,
  blobs `8764f91cc16967f765b4f19c4378ff8fb5f29cd0` and
  `2bd48811e73bbdc80c1f738fa889a14189186408`; Formal Conjectures Erdős 67
  statement at `b6939a3a0d89e5f999fa8c6483a6ef646c1e2923`, blob
  `1502ac6a160ce32dfb39f387dad02386df60d194`; Zeta23 source at
  `16a5ce41304fcdaea4e0be7c132e1c361dc26da5`; OpenAI quasi-RH scope at
  `4eaee87548250b2682affda7d05d947c05554bae`, blob
  `cf794e93da2e1a494434153f5b91f2990fe9fd60`; PFR source at
  `7e7fadf0c4d000fdb21b68505f3fd0e29a6e4a2f`, solution blob
  `4d49574ba10382abfe9fdd319b70a857e8842e14`, rho-functional blob
  `af3f89faaf4f12edd2ec9796b93ae77474a99c70`.
- **Exact use boundaries:** Selberg contributes support/positive diagonal
  information but not parity breaking; fixed-form correlations require a
  growing-family envelope; Erdős discrepancy has an existential consumer;
  Zeta23 motivates the signed Gram sandwich; quasi-RH supplies only a fixed
  exponent; PFR motivates a global potential but supplies no Liouville
  potential.
- **Verification:** `SOURCE_PROOF_CANDIDATE /
  COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
  TRANSITIVE_AXIOM_AUDIT_NOT_RUN / NATIVE_EXECUTION_NOT_RUN /
  EXTERNAL_COMPARATOR_REPLAY_NOT_RUN`.
- **Missing arithmetic bridge:** at a subexponentially conditioned cutoff,
  construct either a source-exact growing-shift/Type-II envelope with summable
  parameter dependence or a global potential dominating the paid complete
  covariance/rough energy. Preserve closed descendants, repeated prime powers,
  rough survivors, birth collars, and exact inverse conditioning.
- **Canonical ledger:** this exact shard is stored in the canonical
  reading-background directory. The monolithic
  `paper-to-formalization-references.md`, blob
  `ad45f0151689a5cbe4a1c19c671ecfa0ad150224`, remains byte-preserved because
  the available source path does not provide a safe source-complete append.
