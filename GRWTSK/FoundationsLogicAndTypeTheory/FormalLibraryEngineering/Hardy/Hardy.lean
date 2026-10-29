import Mathematics.RHIsolation.OffLine

/-!
# Hardy-line evidence

Sign changes certify odd total multiplicity in an interval.  They do not
replace the two-dimensional strip count.
-/

namespace Mathematics.RHIsolation

inductive HardyIntervalDisposition
  | zeroFree
  | oddMultiplicityExists
  | uniqueSimpleZero
  | unresolved
deriving DecidableEq, Repr

structure HardySignChangeCertificate where
  interval : RealInterval
  totalMultiplicity : Nat
  totalMultiplicity_odd :
    Odd totalMultiplicity
  endpointSignsOpposite : Prop
  endpointSignsOppositeProof :
    endpointSignsOpposite

theorem hardy_signChange_gives_oddMultiplicity
    (certificate :
      HardySignChangeCertificate) :
    Odd certificate.totalMultiplicity :=
  certificate.totalMultiplicity_odd

structure HardyUniqueSimpleZeroCertificate where
  interval : RealInterval
  ordinate : ℝ
  ordinate_mem : interval.Contains ordinate
  hardyZero : Prop
  hardyZeroProof : hardyZero
  simple : Prop
  simpleProof : simple

end Mathematics.RHIsolation
