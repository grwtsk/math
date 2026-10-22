# Dyadic safe-shift quartic packing

The zero-sensitive packing is now aggregated at the repository's existing dyadic source scale.

For each dyadic stage j:
- E_j is the reflection-even safe block;
- C_j is the a=0 center block;
- O_j is the reflection-odd safe block;
- axial point is (Re E_j, Re(E_j-C_j));
- transverse point is (Re E_j, Im O_j).

Three consecutive dyadic points form each axial/transverse packing stage. Their Gram values are nonnegative and are combined with the quartic 1:3 weighting.

All plus/minus/center blocks are bounded by one source-derived envelope

B_j(z)
 = X_j^(-1/2)
   sqrt(augmentedEnergy(X_j))
   sqrt(radiusBudget(M_z)).

The point norms then satisfy

||P_axial,j||^2 <= 5 B_j^2,
||P_transverse,j||^2 <= 2 B_j^2.

Using ||p-q||^2 <= 2(||p||^2+||q||^2), the two edge products are bounded by

axialEdgeProduct_j
 <= 100 (B_j^2+B_(j+1)^2)(B_(j+1)^2+B_(j+2)^2),

transverseEdgeProduct_j
 <= 16 (B_j^2+B_(j+1)^2)(B_(j+1)^2+B_(j+2)^2).

Therefore the complete positive quartic dyadic occupied volume satisfies

Q_j^dyadic
 <= 148 (B_j^2+B_(j+1)^2)(B_(j+1)^2+B_(j+2)^2).

This is a finite-stage theorem from the actual Green-energy source. It uses neither RH nor AllDyadicEnergyBound.

The remaining scale problem is now quantitative: find an off-line source-derived r_j for which the normalized dyadic axial/transverse coefficients have the same positive limit while

r_j * 148 (B_j^2+B_(j+1)^2)(B_(j+1)^2+B_(j+2)^2) -> 0.

Upper bounds alone cannot prove the required positive coefficient limit; a genuine asymptotic/lower comparison is still needed.
