# Exact finite Green Gram form

The growing Green source frame now has an explicit finite PSD quadratic expression.

Write

S_X(t)
 = sum_(X<n<=2X) (Lambda(n)/n) feature(r_n,t),

g0(t)
 = centeredLogarithmAtom(t).

Then the residual is S_X-g0. Its squared norm expands exactly as

greenEnergy(X)
 = primeGram(X)
   - 2 primeBackgroundCross(X)
   + backgroundEnergy.

The prime-prime block keeps every mixed kernel entry:

primeGram(X)
 = sum_n sum_m
   (Lambda(n)/n)(Lambda(m)/m)
   kernel(r_n,r_m).

No diagonalization, absolute-value replacement, or omitted off-diagonal term is introduced.

Adding the two endpoint coordinates gives

fullFiniteGreenSourceQuadratic(X)
 = green quadratic
   + mass0(X)^2
   + mass1(X)^2
 = augmentedEnergy(X).

This form is nonnegative because it is exactly the squared norm of the source residual plus two squares.

Its source coordinate count is exactly X+3: X literal arithmetic slots in (X,2X], one fixed centered-log background coordinate, and two endpoint moment coordinates.

This is now a concrete growing PSD source form matching the structural requirement behind W01. The next step is not to prove positivity—it is already exact—but to construct a growing source-faithful map from the admissible zeta/Weil test data into these finite source coordinates, or into the C3/3+1 positive cells of issue #196, while retaining the full mixed Gram structure.
