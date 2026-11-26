# Characteristic-two obstruction to ordinary binary Fourier inversion

Local attribution: grwtsk contributors.

For a multiplicative character on a group of exponent dividing two, the image of each element squares to one. In a field of characteristic two its difference from one therefore has square zero, so the image is one. `BinaryCharacterObstruction.lean` proves this fact and that each ordinary Fourier coordinate is the same input sum. Over a finite nontrivial binary group the resulting character matrix has rank one. Extension to any other field of characteristic two preserves this obstruction. The existing rational Walsh constructions have different coefficient hypotheses. [Upstream admissible-field conditions](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/docs/379.md#finite-fourier-transforms)

Direct elaboration with `--trust=0` passed on Lean 4.34.1 and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. See [issue #1856](https://github.com/grwtsk/math/issues/1856) for the exact qualification record.
