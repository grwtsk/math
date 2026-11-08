# Paper-to-formalization: PR103 fixed-power causal Möbius transfer

Date: 2026-11-02. Local mathematical attribution: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.

External theorem source: `GTimG/QuasiRiemannTracker@8b1a0167c8e324099884152181e3fb2206510e88`, `Candidate.bound`, source blob `808d04cec892449707d23e81f94179e2738fdf1a`. Comparator: OpenAI quasi-RH documentation `openai/math@4eaee87548250b2682affda7d05d947c05554bae`, blob `cf794e93da2e1a494434153f5b91f2990fe9fd60`.

Local source: `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusStrongFixedPowerPR103.lean`, published by PR #1573 at merge `eb9775e109fcb97b0e8aebdc649ced1bede40738`, Git blob `10f2fba05c105c3e80b58ed9632901b5550444d9`, SHA-256 `cce4af07da77aff91b05a0646ff43651b5af062d9e28e90c855a63a896c93acc`.

Formalized with proof bodies: fixed-rate monotonicity, the exact half-power velocity transfer, endpoint `energy+1/4`, all finite rational comparisons, conditional PR103 energy/endpoint/strong wrappers, and the exponent round-trip obstruction. Visible unproved providers: the PR103 mod-one zeta adapter, the standard zero-free-to-Mertens contour theorem, the real velocity-to-energy interval calculation, and the scalar strong-packet return.

Mathematical result: if `|M(exp u)| <= C exp(theta u)` with `theta>1/2`, then the unchanged causal energy has rate `2*theta-1`. PR103 gives working rate `0.746763933226415...`, cleanly `747/1000<3/4`. This is a strict improvement over the current PNT rate-one source bound, but not an all-positive-rate RH supplier.

Stable obstruction `rh-fixed-rate-mertens-energy-roundtrip-worsens-v1`: the fifth-power reverse map and the forward causal map compose to `rho -> (3+2rho)/5`, strictly increasing every `rho<1`; the clean PR103 rate maps to `2247/2500=0.8988`.

Verification status: source publication and exact blob readback DONE; compilation, expected types, fresh kernel, transitive axiom audit, native execution, external adapter replay, contour formalization, all-positive-rate supplier, and RH remain NOT_RUN, OPEN, or UNPROVED as appropriate.
