# Conditional primitive Dirichlet return

Local attribution: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.

Research source: grwtsk contributors, OCERT-1, `oc10-backchain-v1.md`,
sections 5 and 6, at
`e19563adbaf29d08c6b2e17761f78b96adb9e247` in
`grwtsk/knot-linked-number-systems-and-their-geometry`.
Research-note SHA-256:
`4ac95baaa95bbcb77510a2a30f29018ac28b849f47827e7f2a3179e21b590085`.
[Exact research source](https://github.com/grwtsk/knot-linked-number-systems-and-their-geometry/blob/e19563adbaf29d08c6b2e17761f78b96adb9e247/research/06-weil-spectral/certified-search/oc10-backchain-v1.md).
[Formal coordination](https://github.com/grwtsk/math/issues/1807).
[Research coordination](https://github.com/grwtsk/knot-linked-number-systems-and-their-geometry/issues/47).

Formal base inspected: `6cab1fb0725c00a9d06b112ffc215e3523396c50`.
Lean pin: `leanprover/lean4:v4.34.1`.
Mathlib pin: `d13f23b723b8a846827a245b89c10fc7d3f11612`.
This is newly authored source, not imported upstream proof code. Standard
order/topology arguments and existing checker contracts are not claimed novel.

Source: `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilDenseCertificateReduction.lean`.
Source SHA-256: `a81b023c90342cdeb44c5a6d2df46fd2f1596bd750ab9a6823d81079473b47f7`.

## Declaration correspondence

- `GRWTSK.NumberTheory.WeilDenseCertificateReduction.PrimitiveDirichletSource`
- `GRWTSK.NumberTheory.WeilDenseCertificateReduction.PrimitiveDirichletSource.lFunction`
- `GRWTSK.NumberTheory.WeilDenseCertificateReduction.PrimitiveDirichletSource.SatisfiesGRH`
- `GRWTSK.NumberTheory.WeilDenseCertificateReduction.PrimitiveDirichletGRH`
- `GRWTSK.NumberTheory.WeilDenseCertificateReduction.zetaSource`
- `GRWTSK.NumberTheory.WeilDenseCertificateReduction.zetaSource_lFunction`
- `GRWTSK.NumberTheory.WeilDenseCertificateReduction.zeta_critical_strip_of_primitiveGRH`
- `GRWTSK.NumberTheory.WeilDenseCertificateReduction.primitiveGRH_of_dense_certificate_coverage`
- `GRWTSK.NumberTheory.WeilDenseCertificateReduction.not_primitiveGRH_of_accepted_upper`

## Argument and exact scope

A PrimitiveDirichletSource packages a nonzero natural modulus, an actual complex
Dirichlet character at that modulus, and primitivity. Its function is mathlib's
analytic continuation `DirichletCharacter.LFunction`, not the raw `LSeries`.
SatisfiesGRH quantifies over zeros with 0 < Re(s) < 1 and concludes Re(s)=1/2.
PrimitiveDirichletGRH quantifies over every such source. The modulus-one source
is identified with riemannZeta using `LFunction_modOne_eq`; the zeta-strip
consequence therefore does not exclude conductor one.

For each source and support-window type, accepted dyadic lower bounds imply
nonnegativity on a dense encoding and hence on the entire window. The final
arithmetic conclusion uses the explicitly supplied `returnsToArithmetic` proof.
The negative consumer separately requires nonnegativity under the GRH target,
then contradicts it with a sound accepted negative upper bound.

No actual Weil form, support-space construction, dictionary, arithmetic explicit
formula, pole cancellation, certified evaluator or universally covered checker
is constructed. The return premise must identify the FULL original arithmetic
form, including all prime powers, conductor and gamma/parity terms, applicable
pole orientations, actual tests and multiplicities. A positive auxiliary form
cannot supply that premise for free. The target covers primitive Dirichlet
L-functions only, not all automorphic or motivic L-functions. No GRH proof is
claimed and no premise is hidden in a new axiom.

Upstream comparison: mathlib `NumberTheory/DirichletCharacter/Basic.lean`
(`IsPrimitive`, `isPrimitive_one_level_one`) and
`NumberTheory/LSeries/DirichletContinuation.lean` (`LFunction`,
`LFunction_modOne_eq`) at the pinned revision. This is use of their declarations,
not import of their proofs as a new external adaptation.

## Verification boundary and reproduction specification

Source publication is a candidate, not mathematical acceptance. Elaboration,
fresh kernel replay, transitive axiom audit, independent mathematical review and
runtime refinement: **NOT_RUN**. Novelty: **UNASSESSED**. No default-library
import or dependency pin is changed.

After the repository's verification prerequisites are available, the module can
be submitted to the pinned environment with:

```sh
lake env lean GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilDenseCertificateReduction.lean
```

This command was not executed in this authoring pass. A successful elaboration
must be reported separately from a fresh kernel replay and transitive axiom
audit. The source includes no newly declared axioms or unfinished proof commands;
that textual observation is not a dependency audit. No operational receipts or
execution scripts are installed in the mathematical repository.
