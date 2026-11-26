# Positive determinant for the regularized dependency Laplacian

Local attribution: grwtsk contributors.

`FiniteDependencyVolumePositivity.lean` supplies an existing premise of `FiniteDependencyVolume.lean` at the local base `b7225b69f2710ee8beb4c1a7b9adbaa6f9b0075c`. Each term of the real dependency Laplacian is a nonnegative edge weight times the outer product of its signed incidence vector. Its quadratic form is the sum of weighted squares. For a nonnegative regularizer, adding the identity gives a positive definite matrix with positive determinant. This supplies the real logarithmic dependency-volume definition on the stated range.

The determinant belongs to its weighted dependency model. A transport or execution-cost comparison requires a separate calibration theorem. Pinned compilation succeeded with the exact local `FiniteDependencyVolume` dependency. The expanded determinant statement passed type comparison. Both declarations report only `propext`, `Classical.choice` and `Quot.sound`. [Tracking issue #1856](https://github.com/grwtsk/math/issues/1856)
