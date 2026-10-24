# DenseRange.mem_nhds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7d2a1cfb93171ea1e3c9fdef9c241d062856a45a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1897,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b7/b7e7ad3a922333bf917d7607ee1d1a036377bf371a328a0ee48b743fc585308a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:11a05281-0944-d2b3-0fd5-1d3a2922cb3f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ea2afcd5-3db1-62e0-f4ea-8b9b6468b36e",
  "kind": "theorem",
  "lexical_name": "DenseRange.mem_nhds",
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
  "slug": "denserange-mem-nhds--032a69c574c2b2c371efbd4c",
  "source": {
    "blob": "7d2a1cfb93171ea1e3c9fdef9c241d062856a45a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2029,
    "line": 1897,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantb7e7ad3a922333bf917d7607ee1d1a036377bf371a328a0ee48b743fc585308a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:032a69c574c2b2c371efbd4c0152cd2079d891a7eba2ca42b75851aa13648c46",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantb7e7ad3a922333bf917d7607ee1d1a036377bf371a328a0ee48b743fc585308a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea2afcd5-3db1-62e0-f4ea-8b9b6468b36e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1897–2029.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
theorem DenseRange.mem_nhds {f : κ → β} (h : DenseRange f) {b : β} {U : Set β} (U_in : U ∈ 𝓝 b) :
    ∃ a, f a ∈ U :=
  let ⟨a, ha⟩ := h.exists_mem_open isOpen_interior ⟨b, mem_interior_iff_mem_nhds.2 U_in⟩
  ⟨a, interior_subset ha⟩
#align dense_range.mem_nhds DenseRange.mem_nhds

end DenseRange

end Continuous

library_note "continuity lemma statement"/--
The library contains many lemmas stating that functions/operations are continuous. There are many
ways to formulate the continuity of operations. Some are more convenient than others.
Note: for the most part this note also applies to other properties
(`Measurable`, `Differentiable`, `ContinuousOn`, ...).

### The traditional way
As an example, let's look at addition `(+) : M → M → M`. We can state that this is continuous
in different definitionally equal ways (omitting some typing information)
* `Continuous (fun p ↦ p.1 + p.2)`;
* `Continuous (Function.uncurry (+))`;
* `Continuous ↿(+)`. (`↿` is notation for recursively uncurrying a function)

However, lemmas with this conclusion are not nice to use in practice because
1. They confuse the elaborator. The following two examples fail, because of limitations in the
  elaboration process.
  ```
  variables {M : Type*} [Add M] [TopologicalSpace M] [ContinuousAdd M]
  example : Continuous (λ x : M, x + x) :=
  continuous_add.comp _

  example : Continuous (λ x : M, x + x) :=
  continuous_add.comp (continuous_id.prod_mk continuous_id)
  ```
  The second is a valid proof, which is accepted if you write it as
  `continuous_add.comp (continuous_id.prod_mk continuous_id : _)`

2. If the operation has more than 2 arguments, they are impractical to use, because in your
  application the arguments in the domain might be in a different order or associated differently.

### The convenient way

A much more convenient way to write continuity lemmas is like `Continuous.add`:
```
Continuous.add {f g : X → M} (hf : Continuous f) (hg : Continuous g) : Continuous (λ x, f x + g x)
```
The conclusion can be `Continuous (f + g)`, which is definitionally equal.
This has the following advantages
* It supports projection notation, so is shorter to write.
* `Continuous.add _ _` is recognized correctly by the elaborator and gives useful new goals.
* It works generally, since the domain is a variable.

As an example for a unary operation, we have `Continuous.neg`.
```
Continuous.neg {f : α → G} (hf : Continuous f) : Continuous (fun x ↦ -f x)
```
For unary functions, the elaborator is not confused when applying the traditional lemma
(like `continuous_neg`), but it's still convenient to have the short version available (compare
`hf.neg.neg.neg` with `continuous_neg.comp <| continuous_neg.comp <| continuous_neg.comp hf`).

As a harder example, consider an operation of the following type:
```
def strans {x : F} (γ γ' : Path x x) (t₀ : I) : Path x x
```
The precise definition is not important, only its type.
The correct continuity principle for this operation is something like this:
```
{f : X → F} {γ γ' : ∀ x, Path (f x) (f x)} {t₀ s : X → I}
  (hγ : Continuous ↿γ) (hγ' : Continuous ↿γ')
  (ht : Continuous t₀) (hs : Continuous s) :
  Continuous (fun x ↦ strans (γ x) (γ' x) (t x) (s x))
```
Note that *all* arguments of `strans` are indexed over `X`, even the basepoint `x`, and the last
argument `s` that arises since `Path x x` has a coercion to `I → F`. The paths `γ` and `γ'` (which
are unary functions from `I`) become binary functions in the continuity lemma.

### Summary
* Make sure that your continuity lemmas are stated in the most general way, and in a convenient
  form. That means that:
  - The conclusion has a variable `X` as domain (not something like `Y × Z`);
  - Wherever possible, all point arguments `c : Y` are replaced by functions `c : X → Y`;
  - All `n`-ary function arguments are replaced by `n+1`-ary functions
    (`f : Y → Z` becomes `f : X → Y → Z`);
  - All (relevant) arguments have continuity assumptions, and perhaps there are additional
    assumptions needed to make the operation continuous;
  - The function in the conclusion is fully applied.
* These remarks are mostly about the format of the *conclusion* of a continuity lemma.
  In assumptions it's fine to state that a function with more than 1 argument is continuous using
  `↿` or `Function.uncurry`.

### Functions with discontinuities

In some cases, you want to work with discontinuous functions, and in certain expressions they are
still continuous. For example, consider the fractional part of a number, `Int.fract : ℝ → ℝ`.
In this case, you want to add conditions to when a function involving `fract` is continuous, so you
get something like this: (assumption `hf` could be weakened, but the important thing is the shape
of the conclusion)
```
lemma ContinuousOn.comp_fract {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  {f : X → ℝ → Y} {g : X → ℝ} (hf : Continuous ↿f) (hg : Continuous g) (h : ∀ s, f s 0 = f s 1) :
  Continuous (fun x ↦ f x (fract (g x)))
```
With `ContinuousAt` you can be even more precise about what to prove in case of discontinuities,
see e.g. `ContinuousAt.comp_div_cases`.
-/

library_note "comp_of_eq lemmas"/--
Lean's elaborator has trouble elaborating applications of lemmas that state that the composition of
two functions satisfy some property at a point, like `ContinuousAt.comp` / `ContDiffAt.comp` and
`ContMDiffWithinAt.comp`. The reason is that a lemma like this looks like
`ContinuousAt g (f x) → ContinuousAt f x → ContinuousAt (g ∘ f) x`.
Since Lean's elaborator elaborates the arguments from left-to-right, when you write `hg.comp hf`,
the elaborator will try to figure out *both* `f` and `g` from the type of `hg`. It tries to figure
out `f` just from the point where `g` is continuous. For example, if `hg : ContinuousAt g (a, x)`
then the elaborator will assign `f` to the function `Prod.mk a`, since in that case `f x = (a, x)`.
This is undesirable in most cases where `f` is not a variable. There are some ways to work around
this, for example by giving `f` explicitly, or to force Lean to elaborate `hf` before elaborating
`hg`, but this is annoying.
Another better solution is to reformulate composition lemmas to have the following shape
`ContinuousAt g y → ContinuousAt f x → f x = y → ContinuousAt (g ∘ f) x`.
This is even useful if the proof of `f x = y` is `rfl`.
The reason that this works better is because the type of `hg` doesn't mention `f`.
Only after elaborating the two `ContinuousAt` arguments, Lean will try to unify `f x` with `y`,
which is often easy after having chosen the correct functions for `f` and `g`.
Here is an example that shows the difference:
```
example [TopologicalSpace α] [TopologicalSpace β] {x₀ : α} (f : α → α → β)
    (hf : ContinuousAt (Function.uncurry f) (x₀, x₀)) :
    ContinuousAt (fun x ↦ f x x) x₀ :=
  -- hf.comp (continuousAt_id.prod continuousAt_id) -- type mismatch
  -- hf.comp_of_eq (continuousAt_id.prod continuousAt_id) rfl -- works
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantb7e7ad3a922333bf917d7607ee1d1a036377bf371a328a0ee48b743fc585308a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantb7e7ad3a922333bf917d7607ee1d1a036377bf371a328a0ee48b743fc585308a.lean#L1897).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d2a1cfb93171ea1e3c9fdef9c241d062856a45a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
