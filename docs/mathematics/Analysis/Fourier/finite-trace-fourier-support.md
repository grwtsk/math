# Fourier-support certificate for a finite Selberg-shaped iterate cutoff

Status: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED** (2026-10-22). This is a mathematical explanation and a proposed Lean proof script, **not** a trusted elaboration receipt.

- Owner: [grwtsk/math#665](https://github.com/grwtsk/math/issues/665).
- Exact parent: [draft PR #664](https://github.com/grwtsk/math/pull/664), head `8b155e1981a8232a9ba14867b952d5234109fd36`.
- Parent producer: `GRWTSK.Analysis.Fourier.FiniteTraceIteratePacket`, issue #661, built over #653's source-labeled finite modular-alias theorem.
- New source: `GRWTSK/Analysis/Fourier/FiniteTraceFourierSupport.lean`, initial source blob `146c0baaaefe5d36e8973d796c1340ec6dfa656a`.
- Adjacent gates: #159 (optional adapters), #121 (sofic/operator limits), #168 (macro/micro spectral separation), #516 (arithmetic growing-shift obstruction), #100 (external qualification), #15 (RH).

## 1. Imported analytic context and what is *not* imported

Jens Marklof and Laura Monk, *The Moduli Space of Twisted Laplacians and Random Matrix Theory*, International Mathematics Research Notices **2024(23)**, 14352–14368, DOI [10.1093/imrn/rnae239](https://doi.org/10.1093/imrn/rnae239), equation (1.4) takes an even spectral test

\[
h(r)=\int_{\mathbb R}\widehat h(u)e^{iur}\,du
\]

with smooth, compactly supported \(\widehat h\). Equation (1.5) contains oriented primitive-geodesic terms

\[
\frac{\ell_\gamma\widehat h(n\ell_\gamma)}
{2\sinh(n\ell_\gamma/2)}\chi(\gamma)^n,
\quad n\ge1.
\]

The current module uses only **supplied finite candidate labels** and the numeric shape of this coefficient. It does not establish that the \(\gamma\) are actual geodesics, that their lengths/homology come from a surface, that the test satisfies trace-formula regularity, or that a candidate list is complete. It never constructs a spectral trace, Haar/WP integral, or an infinite sum.

The parent #661 already proved, at source-script level, a two-term *finite* discrepancy bound:

\[
\left|P_q(K)-P_{\mathbb Z}(M)\right|
\le E_{\mathrm{alias},q}(K)+E_{\mathrm{omit}}(K,M),
\quad K\le M.
\]

There \(\gamma\) belongs to a fixed **finite** candidate family, \(K,M\) bound its **positive iterate number**, \(P_q\) is a modular character-filtered weighted finite sum, \(P_{\mathbb Z}\) is the integer-homology filtered weighted finite sum, and \(E_{\mathrm{omit}}\) is the **absolute mass of candidate terms omitted between K and M**. The phrase "Selberg-shaped" does not certify an actual Selberg trace.

## 2. Selected exact supplier and proof

Fix `t : TraceShapedInput γ m` and an explicit `FiniteFourierSupportCertificate t` with:

\[
B\ge0,\qquad
\delta>0,\qquad
\delta\le\ell_\gamma
\quad(\gamma\in\Gamma_{\mathrm{candidate}}),
\]
\[
\widehat h(x)=0\quad\text{for all }x>B.
\]

The Fourier support statement is **one-sided**, which suffices here because each selected argument \(n\ell_\gamma\) is positive. There is no claim of a smooth Fourier test, negative-frequency support, or a numerical algorithm to discover \(B,\delta\). They are **premises supplied with proof terms**.

For any integer cutoff \(K\ge0\), the named condition `AdmissibleCutoff t c K` is

\[
\boxed{B\le K\delta.}
\tag{C}
\]

For any candidate \(\gamma\) and positive iterate \(n>K\),

\[
\boxed{
B\le K\delta<n\delta\le n\ell_\gamma.
}
\tag{D}
\]

The strict middle inequality follows from \(n>K\) and \(\delta>0\), even when \(B=K\delta\). Hence \(\widehat h(n\ell_\gamma)=0\) and the whole supplied coefficient vanishes. No argument about division by \(\sinh\) is needed here: the already-defined parent weight is zero because its numerator is zero; the parent proves denominator nonvanishing on actual selected candidates.

The new source theorem `iterate_above_support_radius` proves (D), then `fourierTest_zero_after_cutoff` and `traceShapeWeight_zero_after_cutoff` recover the exact zero facts. The source type is still \((\gamma,n)\), and neither homology nor modular residue IDs are used to collapse source terms.

## 3. Exact consumption of existing #661 interface

The parent has `omittedSources t K M = S_M\setminus S_K`, where \(S_K=\{(\gamma,n):\gamma\in\Gamma_{\mathrm{candidate}},1\le n\le K\}\). The new theorem `omittedSource_has_high_iterate` proves that every omitted term is a candidate with \(K<n\le M\), preserving the original candidate/iterate source ID.

Consequently:

\[
\boxed{
E_{\mathrm{omit}}(K,M)=0
\qquad\text{for every finite }M,
}
\]

provided (C) and the explicit support certificate hold. This is `omittedMass_zero_of_support`, obtained by consuming the **existing** parent lemma `omittedMass_zero_of_fourier_zero`. No new summability or trace-limit theorem enters the proof.

For \(M\ge K\), the exact downstream theorem candidate is

\[
\boxed{
\left|P_q(K)-P_{\mathbb Z}(M)\right|
\le E_{\mathrm{alias},q}(K).
}
\tag{FINITE-SUPPORT-CONSUMER}
\]

Its source name is `finite_trace_cutoff_error_le_alias_of_support`. The proof consumes `finite_trace_cutoff_error_of_fourier_zero` from #661 with the newly established pointwise zero fact. The **finite modular-alias mass remains a real, potentially nonzero budget** and cannot be deleted or replaced by a GUE or zeta-zero claim.

The result allows \(K=0\) (then condition (C) forces \(B=0\)), modulus \(q=1\) as long as `NeZero q` holds, homology rank \(m=0\), and empty candidate families. It does **not** allow \(q=0\). The cutoff condition is monotone: `admissibleCutoff_mono` proves that if \(K\) is admissible then every larger cutoff is admissible, with \(\delta>0\) retained explicitly.

## 4. Nonvacuity and hostile failure

The source includes a deliberately **nonsmooth algebraic fixture** `toyTraceInput` with one candidate ID, \(\ell=1\), support radius \(B=2\), length floor \(\delta=1\), and

\[
\widehat h_{\mathrm{toy}}(x)=
\begin{cases}1,&x\le2,\\0,&x>2.\end{cases}
\]

This is **not** an admissible trace-formula test for the Marklof–Monk theorem and is not claimed to come from a real surface. It checks the finite algebraic certificate itself.

- `toySupportCertificate` has an actual witness for the fields, not an always-reject abstract predicate.
- `toy_cutoff_two_admissible` demonstrates \(B\le2\delta\).
- `toy_cutoff_one_not_admissible` demonstrates \(B\nleq1\delta\).
- `toy_second_iterate_fourier_nonzero` gives \(\widehat h_{\mathrm{toy}}(2\ell)=1\ne0\), making the omitted \(n=2\) term at \(K=1\) an actual nonzero Fourier input. A positive but inadequate cutoff is not a valid tail certificate.

The passive verification target must also reject: an absent support-radius theorem; a nonpositive or merely assumed length floor; a reversal of \(B\le K\delta\); careless equality-boundary handling; a claim of Fourier zero for all \(n>K\) without \(n\ell_\gamma>B\); source-identity changes; silently deleting modular-alias error; treating candidate completeness as proved; and declaring an infinite Selberg tail zero without a complete actual-geodesic source and an independent analytic convergence/vanishing justification.

## 5. Remaining mathematical frontier

Even with the finite iterate cutoff discharged, an actual geometric adapter must still supply all of the following independently:

1. A **fixed, marked, compact hyperbolic surface** (or selected family) and actual distinct oriented primitive geodesic/conjugacy IDs, with verified lengths, orientation and \([\gamma]\in H_1(X,\mathbb Z)\).
2. A finite enumeration containing *every* primitive geodesic capable of contributing at the chosen test-support radius. The new length-floor statement alone does **not** bound missing primitive candidates. A proof that geodesics exceeding the Fourier support radius make no contribution would be useful here, but does not establish enumeration completeness.
3. A real smooth, compactly supported Fourier test with the **same normalization** as the selected Selberg trace formula; a proven one-sided support radius \(B\) and surface-specific positive length floor \(\delta\). For a varying family of surfaces, a uniform positive floor is an additional independent hypothesis, not an automatic consequence of each individual compact surface having a systole.
4. An authentic finite-to-full spectral trace identity, with every analytic convergence, boundary, sector, and measure limit justified independently.
5. A source-identified arithmetic or zeta-divisor bridge if the work is ever to enter RH #15. The Chowla growing-shift supplier under #516 and the spectral microstatistical gate #168 remain **OPEN**.

These geometric and arithmetic steps are not replaced by the optional finite algebra of #665. In particular, Marklof–Monk's GOE/GUE **number variance** theorem is an external spectral result, not a formal corollary of finite Fourier support, and does not prove GUE microscopic spacing for Riemann zeta zeros.

## 6. Verification boundary

Additive files only: the new Lean source, this note, and one passive `verification/finite-trace-fourier-support-665-v0.1.toml` manifest. No root imports, toolchain, Lake manifest, external executor, native/VM run, cache, CI workflows or earlier PRs are changed.

Static source review may inventory names and compare blobs to the passive manifest, but successful elaboration, generated declaration coverage, trust/axiom checks and external verification receipts remain **NOT_RUN / NOT_KERNEL_AUDITED**. Issue #665 and its draft PR are not to be closed or merged on the strength of source text alone.
