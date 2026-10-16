import GRWTSK.Combinatorics.Sequences.PartialSumCertificate
import GRWTSK.Combinatorics.Sequences.PrimeCyclicRearrangement
open GRWTSK.PartialSumOrdering GRWTSK.PrimeCyclicRearrangement
#eval checkCertificate validUnrootedCertificate
#eval checkCertificate repairedCertificate
#eval diagnoseCertificate zeroLabelCertificate
#eval diagnoseCertificate duplicateLabelCertificate
#eval diagnoseCertificate collidingCertificate
#eval diagnoseCertificate excessiveSwapCertificate
#eval diagnoseCertificate intersectingSwapCertificate
#eval (exhaustiveSearch ([1, 2, 3, 4] : List (ZMod 5))).isSome
#eval (exhaustiveSearch ([0, 0] : List (ZMod 5))).isNone
