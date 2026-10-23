# RH / #219: exact orthogonality obstruction for a classical Weil transport

**Evidence:** `SOURCE_DRAFT` only. The new Lean source has not been elaborated,
kernel checked, trust audited, or independently replayed. It defines no classical
criterion adapter and proves no RH consequence.

## 1. Repository audit and selected terminal interface

Repository: `grwtsk/math`.

Historical source parent and current reconciliation:

```text
parent PR:                  #1081, merged
historical parent commit:   26772e0f80dd28e9c1b15222eccb06a5073e3e0b
historical parent tree:     f40c72b2fd207a9e5070868cc929ac76f846904b
current main at reconcile:  0f1b93e6c358d06d8f0fe7d7ba5841268fbc1c21
current main tree:          c85e0b28d82a6f6cfe357dc2fb6dbd41c39ef6fa
```

The child was authored against the exact parent head and then merged with current
`main` without rewriting either history. Current `main` contains later proof repairs
to the imported square-tent modules. The declaration names and types used here remain
present; actual current-main elaboration is still an explicit pending validation gate.

Dedicated child branch:

```text
research/rh-square-tent-weil-transport-obstruction-219-20261023
```

Toolchain and dependency lock:

```text
Lean:    leanprover/lean4:v4.33.0
Mathlib: db584cd6d46c92f209a44c0f1c829460d327499d
```

Selected existing issue: **#219**, the owner of the exact Weil test-space,
normalization, Hermitian-form, and criterion interfaces.

The parent source supplies, for each fixed `M`, the finite coefficient type

```lean
Combination M := Fin (M + 1) -> Complex
```

and a source-proved Hermitian form

```lean
sourcePolarizedForm : Combination M -> Combination M -> Complex.
```

Its coefficient matrix is the literal arithmetic matrix
`arithmeticCrossCoefficient`; distinct canonical square windows have zero
arithmetic cross coefficient by an exact support theorem.

The existing repository classical interface is

```lean
WeilTestSpace T
WeilHermitianForm space
```

in `WeilCriterion.lean`. That file explicitly does not construct a concrete
Riemann-zeta Weil form or import a classical criterion. Repository searches found no
inhabitant written as a concrete `WeilTestSpace` or `WeilHermitianForm`. Therefore an
unconditional transport theorem cannot currently be instantiated, and an
unconditional nonexistence theorem cannot be derived without a target cross-term
calculation.

The bounded result selected here is the closest exact obstruction: formalize every
datum an exact transport would require, prove all of its forced cross-term and
positive-cone consequences, and prove that one exact nonzero classical cross term
refutes it.

## 2. Candidate comparison

| Candidate | Exact consumer and missing premise | Candidate conclusion | Support, strength, tractability, and failure value |
|---|---|---|---|
| Construct the full classical transport | `WeilHermitianForm` at a named Guinand--Weil test class; missing concrete test space, form, realization, normalization theorem, and cross formulas | Actual all-pairs equality and positive-cone preservation | Strongest, but the target object itself is unavailable in the repository and issue #219 leaves its conventions open |
| **Selected exact orthogonality obstruction** | A newly declared `ExactSourceBoundTransport` into a typed named target model | Transport forces every distinct basis cross term to vanish; a nonzero target cross term refutes transport | Exact finite algebra, direct use of source-proved coefficients, no conjectural analytic theorem, reusable against any future candidate |
| Citation or metadata adapter | Same consumer, but only strings or a bibliographic reference are supplied | Pretend the classical target and normalization match | Rejected: strings have no proof authority and cannot establish cross-term equality or positivity preservation |

The selected result has one speculative boundary rather than hiding it: no concrete
classical model or nonzero classical cross certificate is fabricated.

## 3. Named target profile

The new structure is

```lean
GuinandWeilCompactSupportModel M T
```

and contains:

```text
space                    : WeilTestSpace T
form                     : WeilHermitianForm space
realization              : Combination M ->_C space.Vector
realization_injective    : injectivity of the test realization
sourceBinding            : exact classical source binding
sourceBinding_eq         : equality with the space binding
sourcePublication        : source work identity
sourceTheorem            : theorem identity
completedZetaNormalization
testFunctionProfile
transformProfile
involutionProfile
form_sourceRevision_eq
form_normalization_eq
invalidationKey
```

The typed `space`, `form`, linear realization, injectivity, and equality fields carry
the mathematical obligations. The string fields are provenance metadata only.

This is a conservative named interface, not an inhabited classical model. In
particular it does not claim that the canonical square tents satisfy a classical
support, smoothness, transform, or involution hypothesis.

## 4. Exact transport statement

The exact comparison record is

```lean
ExactSourceBoundTransport model
```

with:

```text
arithmeticBinding = CanonicalSquareTentPolarization.polarizedSourceBinding
scale : Real
scale > 0
for every u,v:
  model.form (realization u) (realization v)
    = scale * sourcePolarizedForm u v
```

The equality is polarized and applies to every pair. It is stronger than a diagonal
normalization comparison and does not permit a missing off-diagonal residual.

The positive scale is explicit. A negative scale would reverse the positive cone and
cannot inhabit this record.

## 5. Exact source coefficient theorem

For the coordinate vector `e_i`, the source proves

```lean
sourcePolarizedForm e_i e_j
  = arithmeticCrossCoefficient i j.
```

The parent arithmetic theorem gives

```text
arithmeticCrossCoefficient i j = 0       when i != j
arithmeticCrossCoefficient i i
  = stageEnergy(canonicalStage i, canonicalAmplitude i)
  >= 0.
```

The zero cross term is source-derived from disjoint open square-window support and
zero endpoint weights. It is not inferred from absent classical information.

## 6. Forced target orthogonality

The principal transport consequence is

```lean
ExactSourceBoundTransport.distinct_basis_cross_zero
```

stating that, for `i != j`,

```text
model.form (realization e_i) (realization e_j) = 0.
```

More precisely, every basis coefficient must satisfy

```text
model.form (realization e_i) (realization e_j)
  = scale * arithmeticCrossCoefficient i j.
```

Thus an exact transport into a classical form is possible only if the chosen
classical realization makes all distinct canonical square-tent basis images
orthogonal.

This is an information boundary. Arithmetic support orthogonality does not by itself
imply orthogonality for a classical convolution/involution form.

## 7. Positive-cone preservation

The same exact form identity proves

```lean
model.form.diagonal (realization u)
  = scale * realTargetForm u u.
```

The parent source proves `realTargetForm u u >= 0`, and `scale > 0`. Therefore:

```lean
0 <= model.form.diagonal (realization u)
```

for every finite coefficient vector `u`.

The preserved property is exactly diagonal nonnegativity on the realized finite
image. The theorem does not establish strict positivity, global positivity on the
classical test space, density of the image, positivity of a measure or operator, or a
classical RH criterion.

## 8. Refutation certificate

The source defines

```lean
NonzeroClassicalCrossWitness model
```

containing distinct basis indices `i,j` and an exact theorem

```text
model.form (realization e_i) (realization e_j) != 0.
```

The obstruction theorem is

```lean
no_exactSourceBoundTransport_of_nonzeroCross :
  NonzeroClassicalCrossWitness model
    -> not Nonempty (ExactSourceBoundTransport model).
```

This is a genuine refutation rule. It does not replace the missing analytic task of
computing a classical cross term.

The current repository state therefore supports the following exact conclusion:

```text
TRANSPORT_NOT_CONSTRUCTED
UNCONDITIONAL_NONEXISTENCE_NOT_PROVED
EXACT_ORTHOGONALITY_OBSTRUCTION_PROVED_AT_SOURCE_LEVEL
```

## 9. Positivity and transport classification

Proved in the source candidate:

- all-pairs equality is the required transport contract;
- distinct transported basis images must be target-orthogonal;
- the source positive cone is preserved on the realized image under positive scale;
- one nonzero target cross term refutes every such transport.

Not proved:

- existence of the named classical model;
- membership of canonical tents in a classical test space;
- equality of the classical and arithmetic cross matrices;
- a nonzero classical cross term;
- density or surjectivity of the finite realization;
- global classical Weil positivity;
- a criterion implication or equivalence;
- RH or its negation.

## 10. Failure cases

1. **Diagonal-only comparison.** Equality only for `u=v` does not establish all cross
   terms and cannot inhabit the transport.
2. **Unproved zero cross terms.** Arithmetic disjoint support does not automatically
   imply zero classical convolution cross terms.
3. **Negative or complex scale.** The required positive cone may reverse or cease to
   be ordered.
4. **Noninjective realization.** Collapsing source vectors is not an exact test-class
   embedding.
5. **Source or normalization drift.** The typed binding and normalization equalities
   must be re-established.
6. **Citation-only target.** Publication and theorem strings do not construct the
   test space, form, or proof.
7. **Finite-image promotion.** Positivity on the realized finite image is not global
   positivity on the classical space.
8. **Criterion promotion.** No `WeilCriterionForZeta` or criterion adapter is defined.

## 11. Evidence states

Established:

```text
SOURCE_DRAFT
```

Not established:

```text
LITERATURE_REVIEWED
ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
ANALYTIC_PREMISES_DISCHARGED
```

Lean and Lake were unavailable in the authoring environment. Source inspection,
declaration searches, or absence of placeholders are not elaboration or kernel
evidence.

## 12. RH consequence

This increment is a **diagnostic transport obstruction**. It has no direct RH
consequence and supplies no classical criterion premise. It prevents an invalid
future adapter from silently replacing the classical cross matrix by the orthogonal
arithmetic matrix.

Dependency path:

```text
source-proved arithmetic cross matrix
  -> basis coefficient theorem
  -> exact all-pairs transport contract
  -> forced classical basis orthogonality
  -> positive cone preserved on finite image

source-proved nonzero classical cross term
  -> contradiction with forced orthogonality
  -> no exact transport.
```

## 13. Provenance

```text
TentSource support and endpoint theorems
  -> parent arithmetic cross orthogonality
CanonicalSquareTentPolarization
  -> finite coefficient form and positive diagonal
WeilCriterion
  -> abstract classical test-space and Hermitian-form types
new transport interface
  -> all-pairs equality and positive-scale contract
new obstruction theorems
  -> forced target orthogonality and nonzero-cross refutation.
```

No numerical contributor weights are assigned. No external theorem is imported by
citation.

## 14. Exactly one next obstruction

Construct one concrete `GuinandWeilCompactSupportModel` at an exact source theorem,
test class, Fourier/Mellin convention, involution, completed-zeta normalization, and
realization of the canonical square tents; then compute the cross term of the first
two basis images. If that cross term is nonzero, instantiate
`NonzeroClassicalCrossWitness` and refute transport. If it is zero, continue only to
the remaining basis pairs required by the all-pairs equality.
