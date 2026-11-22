# Signed Certified-Word Transport and a Finite Graph-Sandwich Countermodel

**Lean file:** [ZetaCenteredCertifiedGraphReturn.lean](ZetaCenteredCertifiedGraphReturn.lean)  
**Issue:** [math #1847](https://github.com/grwtsk/math/issues/1847).  
**Upstream local mathematical source:** \`GRWTSK/Combinatorics/GraphTheory/DefectEnrichedSoficLanguage.lean\`, Git blob \`f0436ae18dd786e312a4966b27b2edc51e3d7fa1\`, and \`SearchSoficLanguage.lean\`, blob \`0408948886533c87debacc0e537c3234469ae702\`.

## Exact mathematical construction

The original lower/candidate/upper sandwich is a **labeled** graph. A certified edge \`x -[l]→ y\` carries the ACTUAL source relation \`lower(x,l,y)\`, signed readout equation and a nonnegative allowance:

\[
R(x)=R(y)+\delta(x,l,y),\quad
|\delta(x,l,y)|\le\varepsilon(x,l,y),\quad
\varepsilon(x,l,y)\ge0.
\]

Only lower edges may enter a \`CertifiedTrace\`. The proofs in the existing \`DefectEnrichedSoficLanguage\` establish by induction on any finite word \`w\` that the accumulated signed defect telescopes exactly and the sum of allowances bounds its absolute value.

The new \`QuantitativeLayerMap\` maps two **possibly different** vertex carriers, preserving all three labeled edge relations, their source readouts, edge defects and edge allowances *pointwise*. By induction over \`CertifiedTrace\`, every original word \`w\`, its endpoints, signed accumulated defect \`D_w\` and allowance \`E_w\` remain exactly the same when transported. Therefore:

\[
R_{\mathrm{target}}(f(x)) =
R_{\mathrm{target}}(f(y))+D_w,\qquad
|R_{\mathrm{target}}(f(x))-R_{\mathrm{target}}(f(y))|\le E_w.
\]

Composition of two quantitative layer maps preserves the exact same laws. Neither a new learned embedding nor an unsigned graph similarity score can be substituted for a \`QuantitativeLayerMap\` without the required proof fields.

## The original signed arithmetic source is still an independent premise

A \`SignedZetaLayer\` couples (i) the ACTUAL zeta-zero center with (ii) an existing \`SourceAnchored\` object carrying a **separately supplied real source readout**, source-to-graph encoding, initial signed defect and allowance. It does NOT construct the actual Weil functional, completed zeta functional equation or graph/zeta spectral determinant.

For a certified word from the encoded source center to \`y\`, the source theorem returns:

\[
R_{\mathrm{original}}(z)
=R_{\mathrm{graph}}(y)+(\delta_{\mathrm{initial}}+D_w),
\]
\[
|R_{\mathrm{original}}(z)-R_{\mathrm{graph}}(y)|
\le \varepsilon_{\mathrm{initial}}+E_w.
\]

The new \`SignedLayerTransport\` requires equality of the underlying source-zero identity, original source readout, root mapping, initial signed/error terms and all graph observations. Its transported source-return theorem preserves **both** expressions across graph layers. An exact equality without error is allowed only when the entire initial and path allowance is proved zero.

The complex zeta-zero predicate and the real signed arithmetic readout remain distinct typed inputs. A zero at the source center does **not** establish that the signed original is zero or universally positive.

## A finite obstruction proving candidate edges cannot be certified automatically

Construct a one-vertex, one-label graph with \`lower=∅\`, \`middle=U\` and \`upper=U\` (all possible edges). It satisfies the graph sandwich laws \`lower ⊆ middle ⊆ upper\`. The singleton labeled word has a middle path but **no** lower/certified path.

Thus the implication \`CandidateWord → CertifiedWord\` is false even for a finite graph. This countermodel explicitly rejects the architectural error of promoting a discovered model-generated edge into a proof.

## Mathematical counterchecks and current evidence

The existing source's lower-to-middle and middle-to-upper inclusions are correct **one-way**. Certified paths can be observed at candidate and upper layers; an arbitrary candidate path does not acquire all premises or a signed error certificate by being placed in a suitable graph.

The original source readout and initial signed defect are mandatory hypothesis fields. Without a source-to-original-Weil equality proof, the result has **no** unconditional RH/GRH consequence. There is no claim that a graph heat generator has the Riemann zeta zeros as eigenvalues, or that a finite zero sample is analytically complete.

Status at publication: Lean compilation/axiom audit/fresh independent replay **NOT_RUN**; source publication and independent finite countermodel checks are different evidence. Source-specific checks will be recorded under the accompanying focused manifest.

## Systems-design consumer

Any regenerated C++ or model-selected graph layer needs an exact map of certified edges, labels, readouts, signed defects and allowances. A source revision invalidating one of these fields returns affected work to the proof frontier. Middle/upper graphs may be used for search, exploration, and candidate triage but never as unchecked proof evidence. No runtime authorization is inferred from the graph theorem.
