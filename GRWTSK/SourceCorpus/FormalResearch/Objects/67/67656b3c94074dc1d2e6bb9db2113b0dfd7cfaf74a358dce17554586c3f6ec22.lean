/-!
External PrimeNumberTheoremAnd boundary root.

The copied/blueprint PNT material is not a declared Lake dependency of this
package. Until its imports are made coherent or it is registered as an external
dependency, it remains outside `Formal.Kernel`.
-/

namespace Formal.External.PrimeNumberTheoremAnd

def declaredLakeDependency : Bool := false

theorem not_declared_dependency : declaredLakeDependency = false := by
  rfl

end Formal.External.PrimeNumberTheoremAnd
