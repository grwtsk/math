import Think.SourceTree.Legacy.Arithmetic.GNSDeterminantExactnessBoundary

set_option autoImplicit false

namespace Think.Arithmetic.GNSCovarianceDeterminantExactness

/-
Compatibility wrapper.

The canonical determinant-exactness surface is now
`Think.Arithmetic.GNSDeterminantExactnessBoundary`, which includes the requested
Connes spectral-triple positive boundary and Tao heatflow negative boundary.
This module remains only as a stable import surface for any branch-local imports
that used the earlier name.
-/

abbrev GNSCovarianceDeterminantExactnessBoundary :=
  Think.Arithmetic.GNSDeterminantExactnessBoundary.GNSDeterminantExactnessBoundary

abbrev defaultGNSCovarianceDeterminantExactnessBoundary :=
  Think.Arithmetic.GNSDeterminantExactnessBoundary.defaultGNSDeterminantExactnessBoundary

abbrev completedConditionalDeterminantExactnessBoundary :=
  Think.Arithmetic.GNSDeterminantExactnessBoundary.completedGNSDeterminantExactnessBoundary

/-- Compatibility theorem: canonical completed determinant gate admits determinant
exactness, while Hilbert--Polya and RH authority remain blocked. -/
theorem completed_boundary_admits_determinant_exactness_conditionally :
    completedConditionalDeterminantExactnessBoundary.determinantExactness = true ∧
      completedConditionalDeterminantExactnessBoundary.hilbertPolyaAuthority = false ∧
      completedConditionalDeterminantExactnessBoundary.rhAuthority = false := by
  exact ⟨rfl, rfl, rfl⟩

/-- Compatibility theorem: covariance alone still does not give determinant
exactness. -/
theorem gns_covariance_alone_does_not_give_determinant_exactness :
    defaultGNSCovarianceDeterminantExactnessBoundary.gnsCovarianceAdmitted = true ∧
      defaultGNSCovarianceDeterminantExactnessBoundary.determinantClassAdmitted = false ∧
      defaultGNSCovarianceDeterminantExactnessBoundary.determinantExactness = false := by
  exact ⟨rfl, rfl, rfl⟩

end Think.Arithmetic.GNSCovarianceDeterminantExactness
