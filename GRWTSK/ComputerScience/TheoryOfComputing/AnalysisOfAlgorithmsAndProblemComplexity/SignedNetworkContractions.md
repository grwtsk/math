# Signed clique contractions and the rectangular exponent

**Contributors:** GRWTSK contributors. **Disposition:** Mathematical source candidate. The calculations in this note assume the indicated upstream rectangular matrix multiplication upper or exact exponent theorems. Lean replay and independent mathematical review of the new correspondences remain pending.

Ruhollah Majdoddin, *Lowered crossover points of Anthropic's subexponential 3-SAT algorithm*, arXiv:2610.41622v1, October 30, 2026. The inspected 56-page attachment has SHA-256 `48b490c8412fe8b8724b8ee607135f0781417ba99376b2932e56443d640bc4ad`. This note gives original derivations and a source disposition. It does not redistribute the manuscript or its accompanying code. [arXiv edition](https://arxiv.org/abs/2610.41622v1)

The rectangular exponent premise is the formal arithmetic model with additions, subtractions and multiplications and polynomial identity correctness. It uses nonnegative format weights and dimensions rounded up from powers of a base size. Its geometric comparison is over tensors placed in a common finite-dimensional Euclidean chart. The upstream files cited here are at `3344da59991ed94f9ba711217b29c1d760badfa6`. [Family scope](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/docs/379.md) · [Comparator statement](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/ComparatorChallenges/MatrixExponent.lean#L121-L131)

## Source models and lower bounds

Let $N=2^\lambda$. A clique sum on $K$ nodes has one $N$-valued label per edge, and the input table $W_v$ at node $v$ depends on the $K-1$ incident labels. Its observable is the sum, over all edge labels, of the product of the node tables. Equivalently, contract the graph tensor, a tensor product of independent edge equality tensors, against the product of the input tables. Section 2 uses the exponent $E$ of $N$, or $e=E/\binom K2$ per edge bit. Section 3 instead uses a coefficient $b=E/K^2$; the exact conversion is $e=2Kb/(K-1)$.

Definitions 2.1–2.3 give three models. A contraction tree materializes the boundary tensor of each subtree. A rank-one method uses a single tensor rank decomposition or the corresponding border or asymptotic construction. A Signed Network Sum writes the observable as a linear combination of network evaluations with a possibly different contraction tree in each term. A single contraction tree and a rank-one decomposition are both special cases.

Proposition 2.4 gives the input floor $E\ge K-1$, the rank-one floor $E\ge \lfloor K^2/4\rfloor$ by balanced-cut flattening, and the materialization floor $E\ge h(K-h)$ for trees with $h=\lceil K/3\rceil$. The graph tensor flattening on a cut of sizes $j,K-j$ has rank $N^{j(K-j)}$ because each crossing edge contributes an identity and the factors entirely on one side have flattening rank one. Ordinary flattening gives the border-rank lower bound by closed rank conditions and the asymptotic-rank lower bound by multiplicativity under powers.

Theorem 2.5 proves a three-table collapse for sums of terms $c_q\operatorname{tr}(A_qB_qC_q)$, with each matrix a linear image of one of the three input tables and a bilinear first contraction in each term. A term using $R_q$ bilinear multiplications is a sum of $R_q$ trilinear rank-one forms after pairing with the third matrix. The sum has rank at most $\sum_q R_q$. Given the upstream square-exponent theorem and its standard power argument, $R(\langle N,N,N\rangle)\ge N^{9/4}$. In this scoped model the three-node clique therefore has exact arithmetic exponent $E=9/4$, or $e=3/4$. The upper bound uses one matrix product and one pairing. [Manuscript §2.1–2.3](https://arxiv.org/abs/2610.41622v1)

## Shape theorem for every complete-clique contraction tree

At a binary merge, let the two child leaf sets have sizes $a,b>0$ and their complement have size $c=K-a-b\ge0$. The $ab$ edges shared by the children give the summed index. The $ac$ and $bc$ edges to the complement give the two outer indices. Grouping them and transposing as needed gives exactly the dense rectangular shape with weights $(ab,ac,bc)$. Restoring the multi-indices recovers the boundary tensor of the merge. Induction over the tree recovers the original clique sum.

Write $M=\max(a,b,c)$. Under the upstream formula, the exact unrestricted matrix multiplication exponent for this dense shape is

$$
  \omega_F(ab,ac,bc)=\frac{K^2}{4}
      -\left(\max\{0,M-K/2\}\right)^2.
$$

To prove it, use permutation invariance to put $a\ge b\ge c$. For $c>0$ the sorted weights are $x=ab,y=ac,z=bc$. Their baseline $x+y$ equals $a(K-a)$, and

$$
  (x+y)z-xy=abc(K-2a),\qquad 4xyz=4a^2b^2c^2.
$$

The correction is therefore $(\max\{0,K/2-a\})^2$. Combining it with $a(K-a)=K^2/4-(a-K/2)^2$ proves the formula. If $c=0$, the weights are $ab,0,0$, so the formula reduces to $ab$ by the zero-weight case.

Every merge has shape exponent at most $K^2/4$. Every rooted binary tree with $K\ge2$ leaves has a merge whose two children and complement all have at most $K/2$ leaves. Choose an inclusion-minimal subtree with more than $K/2$ leaves. Its two children meet that bound, and its complement has fewer than $K/2$ leaves. Hence the maximum dense shape exponent over the merges of every such tree equals $K^2/4$. For a fixed $K$, finitely many merges, input reads and boundary materializations give an arithmetic upper bound $O_{K,\varepsilon}(N^{K^2/4+\varepsilon})$ for each fixed tree when full rectangular algorithms are used. The input exponent $K-1$ is at most $K^2/4$, and every boundary entry count is at most $N^{K^2/4}$. The upper bound follows with arbitrary positive slack from the infimum definition of the admissible exponents.

| $K$ | Dense shape exponent over the tree | Per edge bit | Proven matching scope |
| ---: | ---: | ---: | --- |
| 3 | $9/4$ | $3/4$ | Three-table model under Theorem 2.5's bilinearity and linear-map hypotheses |
| 4 | $4$ | $2/3$ | Mandatory materialization gives $N^4$ at a two-leaf node |
| 6 | $9$ | $3/5$ | Dense shapes in each tree |
| 9 | $81/4$ | $9/16$ | Dense shapes in each tree |
| 16 | $64$ | $8/15$ | Dense shapes in each tree |

For larger cliques, the formula describes every tree's maximum unrestricted dense shape exponent and gives an upper bound for evaluating the original clique. A tree optimizer that exploits the subset of child tensors reachable from the inputs could evade a lower bound for a general rectangular product. The source's materialization and input floors still govern their respective models.


The same calculation applies to factorable edge exponents $w_{uv}=m_um_v$ for nonnegative vertex masses $m_v$. Across two disjoint groups the edge exponents sum to the product of their total masses. Let $M_{\rm tot}=\sum_v m_v$ and $m_*=\max_v m_v$. Every tree's maximum dense shape exponent equals
$$
  \frac{M_{\rm tot}^2}{4}-\left(\max\{0,m_*-M_{\rm tot}/2\}\right)^2.
$$
If all leaves have mass at most $M_{\rm tot}/2$ and $M_{\rm tot}>0$, the minimal-subtree argument works with total mass. If a leaf has mass $m_*>M_{\rm tot}/2$, some component of every merge contains that leaf, and the merge at its parent attains the minimum possible largest component mass $m_*$. The displayed formula follows in both cases, and when the total mass is zero all merge exponents are zero. For a fixed finite weighted clique, rounding each bond dimension costs at most a fixed multiplicative factor across a cut. A constant rescaling of $N$ pads those grouped dimensions to the rectangular bounds; zero exponents already have dimension one. Weighted quotient networks generated by rewrite-and-merge need a separate witness of factorability to use this corollary.

## A four-node signed-network bound with a rational certificate

The following is a closed-form recomputation of the covering hybrid from §2.3 over $\mathbb Q$, assuming the upstream formal rectangular upper bounds. It supplies an analytic certificate for a bound below $4$ without relying on a grid search or a long-block limit.

Use the manuscript's exact eight-square identity on blocks of three bits. For a crossing with copies $x,y,u,v$, the identity is $2[x=v][y=u]=R+C$, with the row and column pieces defined by the octonion sign and the constraint $x\mathbin{\oplus}y\mathbin{\oplus}u\mathbin{\oplus}v=0$. Multiplying over $t=\lambda/3$ blocks produces a term for every subset $Q\subseteq[t]$ of column-choice blocks. It suffices to handle $|Q|\le t/2$ with row merges, and to use the symmetric column merges for the complement. Padding to $\lambda$ a multiple of $24$ allows $t$ divisible by $8$. The extended tables vanish outside the zero-padded strings, so the scalar answer is preserved and the number of entries grows by a constant for fixed $K$. The block identity also follows from polarization of the multiplicative octonion norm, $\langle xy,vu\rangle+\langle xu,vy\rangle=2\langle x,v\rangle\langle y,u\rangle$. On an orthonormal binary-indexed basis, the two inner products are the signed row and column pieces. The identity was cross-checked on all 4,096 quadruples using oriented Fano triples $(123),(145),(176),(246),(257),(347),(365)$ with XOR on the basis indices.

For each type $j=|Q|\le t/2$, take a covering collection of sets $D$ of size $3t/4$, such that every $Q$ of size $j$ is contained in a chosen $D$. For the top row, $T_D$ keeps the two labels separately in blocks of $D$ and records their XOR with the row sign in the other blocks. Split the $t/4$ remaining blocks evenly. On one half put $x=k\mathbin{\oplus}y$, on the other put $y=k\mathbin{\oplus}x$, where $k$ is the recorded XOR. Together with the same-row edge label, the free labels in those blocks form the inner index. The top table is one product of matrices with outer dimension $N^{15/8}$ on both sides and inner dimension $N^{5/4}$. The bottom table is symmetric. Signed reindexing builds the operands in $O(tN^{25/8})$ operations. The rectangular exponent for the product is

$$
  \frac{15}{4}+\frac{(2\cdot5/4-15/8)^2}{4\cdot5/4}
  = \frac{245}{64}.
$$

For $Q\subseteq D$, apply signed XOR compression on the blocks of $D\setminus Q$ to get $T_Q$. If $a=j/t$, the array after the compression has $N^{3+a}$ entries. To recover the original term, apply the column kernel to the bottom table on the $Q$ blocks and pair with the top. The final $2^{-t}$-weighted linear combination then recovers the original clique sum.

The shared compression can be accounted for explicitly. For each chosen $D$, build $T_R$ for every $R\subseteq D$, in descending order of $|R|$. Take any previously built one-block superset as parent, and compress that one block. The source has eight times as many entries as the destination. Each compression thus costs a constant times the new array size, for total work bounded, up to polynomial factors in $t$, by

$$
  \sum_{R\subseteq D}N^{3+|R|/t}
    = N^3(1+8)^{3t/4}
    = N^{3+(\log_2 9)/4}.
$$

The exponent is less than $61/16<245/64$, since $9^4<2^{13}$. This accounts for all intermediate arrays even if the algorithm computes arrays unused by the chosen cover. It avoids the source's separate optimization over bypass fractions.

By greedy averaging, the number of covering sets for type $j$ is at most a polynomial in $t$ times $\binom tj/\binom{3t/4}j$. A uniformly chosen covering set contains a fixed $j$-set with probability $\binom{3t/4}j/\binom tj$, so at every step some set covers at least that fraction of the remaining targets. The ratio increases in $j$ by comparing the consecutive factors $(t-j)/(3t/4-j)$. Its largest value on $0\le j\le t/2$ is at most a polynomial times $2^{t-(3t/4)H(2/3)}$, where $H$ is binary entropy. The binomial lower bound in the denominator follows from the fact that $t/2$ is a mode of the binomial distribution with $3t/4$ trials and success probability $2/3$. Enumerating all candidate covers and checking set membership in the greedy algorithm needs at most a polynomial in $t$ times $2^{3t}$ steps, because there are at most $2^t$ candidate sets, targets and greedy rounds per type. This cost is below the arithmetic bound.

The $2^t$ pairings, kernels and final sum cost at most a polynomial times $N^{7/2+1/3}$. Using arbitrary positive slack for the matrix product and the polynomial factors, the arithmetic exponent is bounded above by

$$
  \max\left\{\frac{245}{64}+\frac{1-(3/4)H(2/3)}3,\ \frac{23}{6}\right\}
    < \frac{253}{64}<4.
$$

Indeed, $H(2/3)=\log_2 3-2/3>5/6$ since $3>2^{3/2}$. The first expression is approximately $3.93188$. For every fixed positive slack, the proof gives an exact signed arithmetic family over $\mathbb{Q}$. The exact $N^4$ rank-one and mandatory-materialization floors apply to their respective models. The resulting signed exponent is an upper bound, and the input floor is $N^3$. [Majdoddin §2.3](https://arxiv.org/abs/2610.41622v1)

### Sharper fixed covering fraction

The same proof yields a sharper exponent with $d=25/32$. Pad $\lambda$ to a multiple of $192$ so $t=\lambda/3$ is divisible by $64$ and both $dt$ and $(1-d)t/2$ are integral. For the row products, the two outer weights are $p=(3+d)/2$ and the inner weight is $q=2-d$. Here $p\ge q$ and $2q-p=5(1-d)/2>0$. The rectangular exponent is
$$
  2p+\frac{(2q-p)^2}{4q}
   =3+d+\frac{25(1-d)^2}{16(2-d)}
   =\frac{76729}{19968}.
$$
The total work for all subset compressions per covering member has exponent $3+d\log_2(9)/3$. Since $9^5<2^{16}$, this exponent is less than $3+5/6<76729/19968$. The greedy covering count increases with $j$, so its exponent is at most $(1-dH(1/(2d)))/3$ by the same mode estimate, now with $dt$ trials and success probability $16/25$. The cost of applying the kernels, pairing and summing remains bounded by exponent $23/6$. This is less than the matrix product exponent $76729/19968$ even before the covering cost. Thus the sharper upper bound is
$$
  \frac{76729}{19968}
   +\frac{1-(25/32)H(16/25)}{3}
   \approx 3.9304411.
$$
This formula includes the construction and the full intermediate-array charge. The strict rational certificate $253/64<4$ above suffices independently of the decimal evaluation.

## Geometric bounds for signed alternatives

Fix a finite placement $S$ of positive diameter with mean width $W(S)$, and a compatible Euclidean spectral point $F_S$. Use $H(T)=W(S)\log_2F_S(T)$, with $H(0)=-\infty$. Suppose an exact tensor identity is $T=\sum_q c_qT_q$. Scaling $c_q$ at one site and folding blocks at every site give a restriction $T\preceq\bigoplus_q T_q$. Consequently $F_S(T)\le\sum_q F_S(T_q)$.

For each term, suppose local linear maps witness restriction from a product of wires of dimensions $r_{\ell,q}$, with endpoints at distance $d_{\ell,q}$, and use a common enlarged placement for all auxiliary sites. Compatibility makes the price of the external tensor independent of the enlargement. Applying the direct-sum bound at the external sites and the separate restriction bound for every term gives

$$
  2^{H(T)/W(S)}\le
  \sum_q 2^{\left(\sum_\ell d_{\ell,q}\log_2 r_{\ell,q}\right)/W(S)}.
$$

For an edge-equality graph tensor of uniform bond dimension $N$, the left side has $H(T)=(\log_2 N)\sum_{uv}\|x_u-x_v\|$. Thus if the number of terms is $N^{o(1)}$, some term's supplied geometric wire price must reach the graph tensor's price up to $o(\log N)$ for a fixed placement. Two distinct sites, with all terminals on either side of a cut co-located, specialize to the cut-price inequality. This comparison requires explicit restriction witnesses for the term networks. Arithmetic operations, communication steps and storage need their own cost suppliers before this inequality can bound any of them. Stronger model-wide lower bounds for signed network sums remain open here. [Euclidean geometry manuscript](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/preprints/Euclidean-geometry-in-the-asymptotic-spectrum-of-tensors-November-24-2026/paper.pdf)

## Rewrite-and-merge restrictions

Definition 4.2 partitions equality edges into configurations, expands each block exactly into subexponentially many pieces, and chooses one admissible merge per complete term. A merge meets each configuration in at most two groups. Each piece's flattening rank across the induced cut determines a weighted merged edge; the accounting charges table materialization and solving the weighted quotient instance. Balance and homogeneity are required for the balanced homogeneous two-merge bound. For a configuration with $r$ edges crossing a cut, the block flattening has rank $2^{rm}$, so some piece costs at least $rm-\log_2|I_C|$ bits across that cut (Proposition 4.6). Proposition 4.7 bounds a materialized bilinear term factorization by the product of its cut ranks, and Proposition 4.8 mixes pieces that are expensive in opposite merge directions.

Theorem 4.12 proves $e(K)\ge(\log_2 K)^{-3}$ under balance, homogeneity and its stated base condition. Theorem 4.13 proves $e(K)\ge1/\log_2 K$ for the scoped grid class and its separate base condition. Theorem 4.18 handles weighted one-block grids under additional assumptions, with Corollary 4.19 applying to the published recursion. These are model obstructions. New rectangular kernels can improve part of the upper cost without changing the flattening, balance or materialization arguments. Extending these results to more than two merges, nonhomogeneous levels, or merges creating genuine hyperedges needs additional proofs. Section 2.4's grid estimates and its open uniform estimates over long-block piece mixtures retain their source dispositions. [Manuscript §2.4 and §4](https://arxiv.org/abs/2610.41622v1)

## Recurrence, finite crossover, and Weak ETH

For the recursion in §3, the exact clause-network load is $U=2(L-n)$ when all $n$ variables appear and $L$ is the total number of literal occurrences. If each of the $m$ clauses has exactly $k$ literal occurrences then $L=km$. The factor of two counts both endpoints of each consecutive-occurrence equality. This identity concerns the clause network. The general variable-network construction has additional inclusion-exclusion marks and parity checks.

Proposition 3.2 uses $K_{\ell+1}=(s_\ell K_\ell)^2$ and $b_{\ell+1}=(\rho+3\zeta_\ell)b_\ell+3/K_\ell$ subject to its four admissibility conditions. Lemma 3.7 replaces $b_0=1/2$ with $\omega_F(1,1/2,1)/8$ plus slack, using two quarter-to-half multiplication merges and a final pairing. Under the upstream formula $\omega_F(1,1/2,1)=2$, so the leading arithmetic coefficient is $1/4$. The exponent decay still follows from the recursive schedule, and the parity-check network still supplies its own load. The source itself notes this coefficient under the previously reported dual-exponent improvements. Section 3 separately tracks the base kernel's hidden constant, arithmetic model, bit length, balancing, sparsification density and competing algorithm. The tables report main-term thresholds or estimates, rather than explicit finite running-time comparisons. In particular, the general-case table has conditional rows for variable-network clustering and parity-check improvements.

A finite crossover needs an actual exact base plan. One possible supplier is a concrete rank decomposition over $\mathbb Q$ of a fixed rectangular base product. Clear all coefficients' denominators by a positive integer $D$. The three integral coefficient lists then compute $D^3AB$ exactly in one block step. With block recursion, each level magnifies integer operand sizes by at most a fixed factor depending on those coefficient lists and dimensions. Exact division by $D^3$ follows every block recombination. Induction then bounds intermediate bits by a constant multiple of the original bit length plus recursion depth. If $R$ is the base rank and $P$ the largest pairwise product of the three base dimensions, the scalar operation recurrence has the form $A(k+1)\le R A(k)+C P^k$. The flattening inequality $P\le R$ gives $A(k)=O((k+1)R^k)$. Actual coefficient norms, instruction counts, exact division cost, padding and constants are needed to certify this supplier for the recursion. A field-operation infimum by itself does not supply those values. [Majdoddin §§3.1–3.7, Proposition 3.15 and §4.1](https://arxiv.org/abs/2610.41622v1) · [Claude (Anthropic), original 3-SAT construction](https://github.com/anthropics/formal-math/blob/16a5ce41304fcdaea4e0be7c132e1c361dc26da5/eth/paper.pdf)

The tape manuscript's Lean predicate `WeakETH` is `¬ PowerSavingDecision satAnswer`. Its negation would provide one fixed deterministic finite multitape machine, $0<\eta<1$, constants $C,d$, and a bound $2^{Cv^{1-\eta}}(1+v+|\mathrm{encodeCNF}(\varphi)|)^d$ for every width-at-most-three formula on $v$ variables. The reported $2^{O(v\log\log v/\sqrt{\log v})}$ counting bound does not provide this witness. For every fixed $\eta>0$, even $v/\sqrt{\log v}$ grows faster than $v^{1-\eta}$. Converting exact counts to yes/no answers preserves the relevant SAT observable and leaves the exponent comparison unchanged. A genuine polynomial-time SAT decider in a model with polynomial-overhead translation to the specified tape model would contradict Weak ETH. The conditional low-product, randomized, sound nondeterministic, division and square-root bounds retain their hypothesis and their respective semantic and verification scopes. [Pinned Weak ETH statement](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/OAI/Computability/MultitapeWeakETH/Price.lean) · [Pinned tape manuscript](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/preprints/The-logarithmic-exponent-of-integer-multiplication-on-tapes-November-24-2026/paper.pdf)
