# A genus-uniform primitive commutator in the kernel of abelianization

**Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED** (2026-10-22). This note accompanies a new Lean source-level proof candidate, **not** successful Lean elaboration or a qualified kernel theorem.

- Owner: [grwtsk/math#734](https://github.com/grwtsk/math/issues/734).
- Exact parent: [draft PR #728](https://github.com/grwtsk/math/pull/728), pinned head `919dd825e117045ec209a877fcf0db0aeadaad31`.
- New module: `GRWTSK/GroupTheory/Words/HigherGenusHeisenbergWitness.lean`.
- Prior verified-at-source *candidates*: `GenusTwoHeisenbergWitness` (#722), `IntegralHeisenbergPrimitive` (#722), `PrimitiveConjugacy` (#694), and `IntegralHomologyPrimitive` (#704).
- Target: a precise extension from one abstract genus-two group to a **family of exact abstract presentations indexed by every \(g\ge2\)**. No hyperbolic metric or genuine geometric length is constructed.
- Optional research adjacency: #653 (finite Fourier mod-\(q\) aliasing), #198 (Čech/Hodge gluing), #205/#545 (signed-versus-positive Hodge), #121/#168 (sofic and spectral microstatistics), #516 (arithmetic averaging mismatch), #159 (optional RH adapters), canonical RH #15, qualification #100.

## 1. Genuine noncommutative presentations, one for every genus at least two

Fix \(k\ge0\) and put \(g=k+2\). The finite set of named generators in Lean is the coproduct

\[
\mathcal A_k =
\operatorname{Fin}(4)\ \sqcup\
\bigl(\operatorname{Fin}(k)\times\{\mathrm{false},\mathrm{true}\}\bigr).
\]

The four initial generators denote \(a_1,b_1,a_2,b_2\). Each added pair denotes \(a_{j+3},b_{j+3}\).

Define, inside the *actual* Mathlib free group \(F(\mathcal A_k)\), the relator

\[
R_k=[a_1,b_1]\,[a_2,b_2]\,
 [a_3,b_3]\cdots[a_{k+2},b_{k+2}],
\quad [a,b]=aba^{-1}b^{-1}.
\tag{1}
\]

**The product is ordered.** The source uses `List.ofFn` on `Fin k` and `List.prod`, rather than `Finset.prod` on a noncommutative group. The extra list is empty when \(k=0\).

The constructed group is literally

\[
\Gamma_{k+2}
=
\operatorname{PresentedGroup}\left(\{R_k\}\right)
=
F(\mathcal A_k)\big/\langle\!\langle R_k\rangle\!\rangle,
\tag{2}
\]

where the normal-closure quotient is Mathlib's `PresentedGroup`. This is a mathematically real group presentation, not an uninterpreted `Type` carrying a free map named `surfaceFundamentalGroup`.

For \(k=0\) the presentation is abstractly the genus-two one already considered in #722; the present source does **not** claim definitional equality of the two generator carrier types (\(\mathrm{Fin}\,4\) versus a sum with an empty type) or prove an explicit equivalence.

## 2. One genuine homomorphism for every k

Recall the integral Heisenberg group \(H(\mathbb Z)=\mathbb Z^3\), constructed in #722, with

\[
(a,b,c)(a',b',c') =
(a+a',\,b+b',\,c+c'+ab').
\]

Set \(X=(1,0,0)\), \(Y=(0,1,0)\) and \(Z=(0,0,1)\). The exact source-bound assignment is

\[
\begin{aligned}
a_1&\mapsto X,& b_1&\mapsto Y,\\
a_2&\mapsto X,& b_2&\mapsto Y^{-1},\\
a_j&\mapsto1,& b_j&\mapsto1\qquad(3\le j\le g).
\end{aligned}
\tag{3}
\]

By the earlier **source-authored** identities \([X,Y]=Z\) and \([X,Y^{-1}]=Z^{-1}\), the initial two commutators cancel. Every additional source commutator maps to \(1\), and therefore the ordered list of added relators does, too.

Thus the complete actual relator \(R_k\) maps to \(1\). This is the independently named `higherGenusRelator_evaluation` proposition, consumed by `PresentedGroup.toGroup`. The resulting

\[
\phi_k:\Gamma_{k+2}\longrightarrow H(\mathbb Z)
\tag{4}
\]

is, **if the Lean script elaborates as authored**, a real group homomorphism from a quotient, not merely a function assigning numbers to source words. The statement about actual quotient homomorphisms is a standard mathematical fact independently of Lean compilation.

## 3. The exact same group element is primitive and homology-invisible

Let \(s_k=[a_1,b_1]\in\Gamma_{k+2}\). From (3) and the genuine group homomorphism (4),

\[
\phi_k(s_k)=Z.
\tag{5}
\]

The parent #722 proves at source level that **no** element of the entire integral Heisenberg group raised to any exponent \(n\ge2\) can equal \(Z\). Thus a hypothetical equation \(s_k=r^n\), \(n\ge2\), would map to the impossible equality \(Z=\phi_k(r)^n\). Also \(s_k\ne1\), because \(Z\ne1\).

Separately, \(s_k\) is a literal group commutator, so Mathlib's canonical abelianization homomorphism sends it to \(1\):

\[
\operatorname{Abelianization.of}(s_k)=1.
\tag{6}
\]

Consequently

\[
\boxed{
\forall k\ge0,\quad
\operatorname{PrimitiveConjugacy}_{\Gamma_{k+2}}(s_k)
\;\land\;
\operatorname{Abelianization.of}(s_k)=1.
}
\tag{7}
\]

The source-level theorem is `primitive_and_homology_invisible k`. The `familyWitness k` record reuses the generic source-preserving `HomologyInvisiblePrimitiveWitness` already defined in #722. In particular, every true group homomorphism \(h:\Gamma_{k+2}\to(\mathbb Z,+)\) satisfies

\[
h(s_k)=0,
\tag{8}
\]

so the sufficient unit-homology primitive certificate of #704 **cannot detect** any of the \(s_k\), although the nonabelian Heisenberg map detects all of them.

**This proves incompleteness of the homology-only certificate, not its unsoundness.**

The source also names the \(k=0\) (genus two) and \(k=1\) (genus three) cases independently, guarding against an always-empty additional-generator construction. The lemma `extraRelatorList_one` additionally shows the genus-three relator really contains its third-handle commutator word, even though that term maps to identity under the chosen quotient homomorphism.

## 4. Where geometry genuinely starts

For the standard topological closed orientable surface \(\Sigma_g\), the abstract group \(\Gamma_g\) from (2) is classically isomorphic to \(\pi_1(\Sigma_g)\). For \(g\ge2\), such a surface can carry a compact hyperbolic metric.

Those **imported topological and uniformization theorems are not formalized or consumed here**. A genuine marked-surface adapter would require:

1. An authenticated closed orientable surface and exact marked group equivalence \(\pi_1(\Sigma_g)\simeq\Gamma_g\), including **which oriented loop** corresponds to each relator generator.
2. A proof identifying the free homotopy/conjugacy class of the first handle commutator with the corresponding simple separating loop, and its unique closed geodesic representative under the selected hyperbolic metric.
3. The actual geodesic's positive length and integer homology with correct marking, orientation and source revision.
4. A separate effective length-to-word bound and sound, complete primitive oriented conjugacy-class enumeration below a selected length cutoff; the present family theorem witnesses only **one class for each genus**.
5. The exact test kernel and source weights for any geometric Selberg trace, and independently justified analytic/Weil–Petersson integration if one attempts the random-matrix route.

A generic `Group` paired with a theorem of the form "assume it is the surface group" would only be a conditional wrapper and would not discharge items 1–3. This increment therefore keeps the surface comparison **open**, rather than introducing an apparently completed geometric adapter.

## 5. Connections and nonimplications

The new family establishes a single proof-relevant information-loss mechanism: a homomorphism to an abelian group annihilates a source class that a richer noncommutative homomorphism distinguishes. It is now shown for every genus \(g\ge2\) **at the abstract presented-group scope**.

- **Torelli/Johnson filtration:** first homology can miss mapping classes or commutator data. This is a structural motivation for richer nilpotent invariants, not a theorem that the present \(s_k\) is a nontrivial Torelli mapping class; it is an element of a surface-group presentation, not a mapping-class-group element.
- **Fourier/holonomy #653:** finite \(q\)-torsion characters impose congruence rather than equality of integral homology. In contrast, the present Heisenberg quotient distinguishes a commutator invisible to every *abelian* character. These are complementary, different information-loss mechanisms; this module provides no finite-to-Haar theorem.
- **Čech/Hodge #198:** filling/transporting a cocycle requires a typed chain-level source. We have no chain map from (7) into that complex, so the relationship is an analogy, not a source-paired theorem.
- **Signed forms #205/#545:** positive energy and indefinite/signed consumers need distinct invariants. The present nilpotent invariant does not define the Hodge signed consumer.
- **Sofic/GUE #121/#168:** local spectral measure information does not determine microscopic gaps; neither this group presentation nor its Heisenberg map supplies a family of relevant spectral operators, an unfolding or a zeta-zero divisor.
- **Chowla #516:** fixed-form or logarithmic correlation control does not equal the required growing-shift ordinary maximal packet. This group theorem supplies no Möbius estimate or averaging exchange.
- **RH #15:** no connection to a canonically identified Riemann-zero divisor is proved. This group family remains an optional geometric/group-theoretic research leaf.

The mathematical group techniques are classical; the implementation explicitly reuses Mathlib `PresentedGroup`, `FreeGroup`, ordered `List.prod`, `Abelianization`, and the parent #722 Heisenberg group. There is no claim that this algebra constitutes a new resolution of a contemporary conjecture.

## 6. Source and qualification controls

One new module, this note, and one **passive** TOML target are appended to the exact parent PR #728 branch. Prior sources, root imports, toolchain, dependencies, native workers, F06, caches, VM, CI and workflow definitions are left unchanged.

Review/hostile requirements include noncommutative relator order; distinct first/extra generator IDs; empty and nonempty extra-handle lists; the exact inverse of \(Y\) on handle two; absence of proof holes; explicit relator correctness before `PresentedGroup.toGroup`; the same source \(s_k\) being both primitive and in the abelianization kernel; all integer characters annihilating it; no false converse from the failure of the unit homology certificate; and no promoted geometric, analytic, spectral, arithmetic or RH theorem.

The passive manifest inventories the authored declarations and *separately* flags generated definitions from presentation/class instances as requiring a full exact-head elaborated declaration/axiom audit. A static inspection of committed Lean text cannot establish such acceptance.

**Qualification: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.** Do not merge or close #734 without a policy-compliant exact-head #100 replay and full transitive trust audit.
