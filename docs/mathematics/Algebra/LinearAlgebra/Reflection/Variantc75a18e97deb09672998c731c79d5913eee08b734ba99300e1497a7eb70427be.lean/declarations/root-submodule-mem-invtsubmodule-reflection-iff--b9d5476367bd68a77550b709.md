# _root_.Submodule.mem_invtSubmodule_reflection_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ad5d6f2c333f1b45c06678df2933e39b188e4056",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 137,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c7/c75a18e97deb09672998c731c79d5913eee08b734ba99300e1497a7eb70427be.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dd62a00f-08cd-bdf6-62f9-944efef5f54b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3d6e55c7-3e64-3b84-28ec-188696fe51d6",
  "kind": "lemma",
  "lexical_name": "_root_.Submodule.mem_invtSubmodule_reflection_iff",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "root-submodule-mem-invtsubmodule-reflection-iff--b9d5476367bd68a77550b709",
  "source": {
    "blob": "ad5d6f2c333f1b45c06678df2933e39b188e4056",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 137,
    "path": "GRWTSK/Algebra/LinearAlgebra/Reflection/Variantc75a18e97deb09672998c731c79d5913eee08b734ba99300e1497a7eb70427be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9d5476367bd68a77550b70977cae62fcb31e27e42390e40d2ca7bbbb30f2148",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Reflection/Variantc75a18e97deb09672998c731c79d5913eee08b734ba99300e1497a7eb70427be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d6e55c7-3e64-3b84-28ec-188696fe51d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.Submodule.mem_invtSubmodule_reflection_iff [NeZero (2 : R)] [NoZeroSMulDivisors R M]
    (h : f x = 2) {p : Submodule R M} (hp : Disjoint p (R ∙ x)) :
    p ∈ End.invtSubmodule (reflection h) ↔ p ≤ LinearMap.ker f := by
  refine ⟨fun h' y hy ↦ ?_, fun h' y hy ↦ ?_⟩
  · have hx : x ≠ 0 := by rintro rfl; exact two_ne_zero (α := R) <| by simp [← h]
    suffices f y • x ∈ p by
      have aux : f y • x ∈ p ⊓ (R ∙ x) := ⟨this, Submodule.mem_span_singleton.mpr ⟨f y, rfl⟩⟩
      rw [hp.eq_bot, Submodule.mem_bot, smul_eq_zero] at aux
      exact aux.resolve_right hx
    specialize h' hy
    simp only [Submodule.mem_comap, LinearEquiv.coe_coe, reflection_apply] at h'
    simpa using p.sub_mem h' hy
  · have hy' : f y = 0 := by simpa using h' hy
    simpa [reflection_apply, hy']

/-! ### Powers of the product of two reflections

Let $M$ be a module over a commutative ring $R$. Let $x, y \in M$ and $f, g \in M^*$ with
$f(x) = g(y) = 2$. The corresponding reflections $r_1, r_2 \colon M \to M$ (`Module.reflection`) are
given by $r_1z = z - f(z) x$ and $r_2 z = z - g(z) y$. These are linear automorphisms of $M$.

To define reflection representations of a Coxeter group, it is important to be able to compute the
order of the composition $r_1 r_2$.

Note that if $M$ is a real inner product space and $r_1$ and $r_2$ are both orthogonal
reflections (i.e. $f(z) = 2 \langle x, z \rangle / \langle x, x \rangle$ and
$g(z) = 2 \langle y, z\rangle / \langle y, y\rangle$ for all $z \in M$),
then $r_1 r_2$ is a rotation by the angle
$$\cos^{-1}\left(\frac{f(y) g(x) - 2}{2}\right)$$
and one may determine the order of $r_1 r_2$ accordingly.

However, if $M$ does not have an inner product, and even if $R$ is not $\mathbb{R}$, then we may
instead use the formulas in this section. These formulas all involve evaluating Chebyshev
$S$-polynomials (`Polynomial.Chebyshev.S`) at $t = f(y) g(x) - 2$, and they hold over any
commutative ring. -/
section

open Int Polynomial.Chebyshev

variable {x y : M} {f g : Dual R M} (hf : f x = 2) (hg : g y = 2)

/-- A formula for $(r_1 r_2)^m z$, where $m$ is a natural number and $z \in M$. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Reflection/Variantc75a18e97deb09672998c731c79d5913eee08b734ba99300e1497a7eb70427be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Reflection/Variantc75a18e97deb09672998c731c79d5913eee08b734ba99300e1497a7eb70427be.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad5d6f2c333f1b45c06678df2933e39b188e4056` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
