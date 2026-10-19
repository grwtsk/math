import Noeoueue.Memory.GroundedLaplacian

namespace Noeoueue.TypeMemory

/-- `type-memory://noeoueue/harmonic-prime-exactness@1`: every valid ungrounded
canonical ideal class contributes exactly one combinatorial zero mode. -/
theorem valid_class_one_zero_mode : componentKernelDimension true false = 1 := by decide

theorem invalid_class_no_zero_mode : componentKernelDimension false true = 0 := by decide

end Noeoueue.TypeMemory
