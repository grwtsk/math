# Exact finite bilinear matrix plans

Local attribution: grwtsk contributors.

`FiniteBilinearMatrixPlan.Plan` exposes the three coefficient arrays of `OAI.LinearAlgebra.MatrixExponent.Rectangle.RankLE` as data. The exact equivalence `rankLE_iff_exists_plan` retains every coefficient equation with row and column output indexing. The algorithm forms one product of input linear combinations per rank term and reconstructs outputs from that common product vector. Distributivity and rearrangement of finite sums give `Plan.decode_products`. When the coefficient identities hold, `Plan.eval_matrixProduct` reduces each output to the original matrix product, including when the inner range is empty. [Pinned upstream model](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/OAI/LinearAlgebra/MatrixExponent/Rectangle/Model.lean#L41)

The data and evaluation theorem support finite contraction planning and the exact matrix product in `AffineFiberTensorNetworkContraction.lean`. A rank-existence theorem can supply a proof that some plan exists. An executable optimizer needs its actual coefficient data, arithmetic schedule and separately certified resource costs.

The local source elaborated with exit 0 in Lean 4.34.1 and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Its two source dependencies `RationalCircuits` and `Rectangle.Model` were built from exact Git blobs at `3344da59991ed94f9ba711217b29c1d760badfa6`. See the issue for source-bound replay and audit status. [Tracking issue #1856](https://github.com/grwtsk/math/issues/1856)
