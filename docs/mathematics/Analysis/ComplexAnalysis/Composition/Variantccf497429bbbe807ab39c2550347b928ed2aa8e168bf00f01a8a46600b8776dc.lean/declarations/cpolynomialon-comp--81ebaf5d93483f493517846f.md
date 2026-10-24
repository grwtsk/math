# CPolynomialOn.comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b51a68f4-b345-3fa0-1629-f2a63d4d4ac6",
  "kind": "theorem",
  "lexical_name": "CPolynomialOn.comp",
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
  "slug": "cpolynomialon-comp--81ebaf5d93483f493517846f",
  "source": {
    "blob": "f388cfd9353f6f9184359ea4859d0e85e95fe225",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1032,
    "line": 966,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Composition/Variantccf497429bbbe807ab39c2550347b928ed2aa8e168bf00f01a8a46600b8776dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81ebaf5d93483f493517846fe2a4b3bc3593c45b487bb57f75aa081328cfa264",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Composition/Variantccf497429bbbe807ab39c2550347b928ed2aa8e168bf00f01a8a46600b8776dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b51a68f4-b345-3fa0-1629-f2a63d4d4ac6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 966–1032.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
theorem CPolynomialOn.comp {s : Set E} {t : Set F} {g : F → G} {f : E → F}
    (hg : CPolynomialOn 𝕜 g t) (hf : CPolynomialOn 𝕜 f s) (st : Set.MapsTo f s t) :
    CPolynomialOn 𝕜 (g ∘ f) s :=
  comp' (mono hg (Set.mapsTo_iff_image_subset.mp st)) hf

/-!
### Associativity of the composition of formal multilinear series

In this paragraph, we prove the associativity of the composition of formal power series.
By definition,
```
(r.comp q).comp p n v
= ∑_{i₁ + ... + iₖ = n} (r.comp q)ₖ (p_{i₁} (v₀, ..., v_{i₁ -1}), p_{i₂} (...), ..., p_{iₖ}(...))
= ∑_{a : Composition n} (r.comp q) a.length (applyComposition p a v)
```
decomposing `r.comp q` in the same way, we get
```
(r.comp q).comp p n v
= ∑_{a : Composition n} ∑_{b : Composition a.length}
  r b.length (applyComposition q b (applyComposition p a v))
```
On the other hand,
```
r.comp (q.comp p) n v = ∑_{c : Composition n} r c.length (applyComposition (q.comp p) c v)
```
Here, `applyComposition (q.comp p) c v` is a vector of length `c.length`, whose `i`-th term is
given by `(q.comp p) (c.blocksFun i) (v_l, v_{l+1}, ..., v_{m-1})` where `{l, ..., m-1}` is the
`i`-th block in the composition `c`, of length `c.blocksFun i` by definition. To compute this term,
we expand it as `∑_{dᵢ : Composition (c.blocksFun i)} q dᵢ.length (applyComposition p dᵢ v')`,
where `v' = (v_l, v_{l+1}, ..., v_{m-1})`. Therefore, we get
```
r.comp (q.comp p) n v =
∑_{c : Composition n} ∑_{d₀ : Composition (c.blocksFun 0),
  ..., d_{c.length - 1} : Composition (c.blocksFun (c.length - 1))}
  r c.length (fun i ↦ q dᵢ.length (applyComposition p dᵢ v'ᵢ))
```
To show that these terms coincide, we need to explain how to reindex the sums to put them in
bijection (and then the terms we are summing will correspond to each other). Suppose we have a
composition `a` of `n`, and a composition `b` of `a.length`. Then `b` indicates how to group
together some blocks of `a`, giving altogether `b.length` blocks of blocks. These blocks of blocks
can be called `d₀, ..., d_{a.length - 1}`, and one obtains a composition `c` of `n` by saying that
each `dᵢ` is one single block. Conversely, if one starts from `c` and the `dᵢ`s, one can concatenate
the `dᵢ`s to obtain a composition `a` of `n`, and register the lengths of the `dᵢ`s in a composition
`b` of `a.length`.

An example might be enlightening. Suppose `a = [2, 2, 3, 4, 2]`. It is a composition of
length 5 of 13. The content of the blocks may be represented as `0011222333344`.
Now take `b = [2, 3]` as a composition of `a.length = 5`. It says that the first 2 blocks of `a`
should be merged, and the last 3 blocks of `a` should be merged, giving a new composition of `13`
made of two blocks of length `4` and `9`, i.e., `c = [4, 9]`. But one can also remember that
the new first block was initially made of two blocks of size `2`, so `d₀ = [2, 2]`, and the new
second block was initially made of three blocks of size `3`, `4` and `2`, so `d₁ = [3, 4, 2]`.

This equivalence is called `Composition.sigmaEquivSigmaPi n` below.

We start with preliminary results on compositions, of a very specialized nature, then define the
equivalence `Composition.sigmaEquivSigmaPi n`, and we deduce finally the associativity of
composition of formal multilinear series in `FormalMultilinearSeries.comp_assoc`.
-/


namespace Composition

variable {n : ℕ}

/-- Rewriting equality in the dependent type `Σ (a : Composition n), Composition a.length)` in
non-dependent terms with lists, requiring that the blocks coincide. -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Composition/Variantccf497429bbbe807ab39c2550347b928ed2aa8e168bf00f01a8a46600b8776dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Composition/Variantccf497429bbbe807ab39c2550347b928ed2aa8e168bf00f01a8a46600b8776dc.lean#L966).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f388cfd9353f6f9184359ea4859d0e85e95fe225` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
