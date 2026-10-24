# locally_const_basicOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:70a1be23-da3b-c11b-e1a9-d1605600e08a",
  "kind": "theorem",
  "lexical_name": "locally_const_basicOpen",
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
  "slug": "locally-const-basicopen--3909304a2ddf0a8c377faef3",
  "source": {
    "blob": "b2b8f88a0a3366a26e204ada4a5f97b22cc22de5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 667,
    "line": 628,
    "path": "GRWTSK/Algebra/StructureSheaf/Variant739a7dda79de680bd2079221f187b9a3c082a6497504dfc1716470931cd472e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3909304a2ddf0a8c377faef3c1fe0c013bc52f9226b065749ef804e064adafac",
  "verification": {
    "reference": "docs/verification/Algebra/StructureSheaf/Variant739a7dda79de680bd2079221f187b9a3c082a6497504dfc1716470931cd472e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70a1be23-da3b-c11b-e1a9-d1605600e08a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 628–667.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem locally_const_basicOpen (U : Opens (PrimeSpectrum.Top R))
    (s : (structureSheaf R).1.obj (op U)) (x : U) :
    ∃ (f g : R) (i : PrimeSpectrum.basicOpen g ⟶ U), x.1 ∈ PrimeSpectrum.basicOpen g ∧
      (const R f g (PrimeSpectrum.basicOpen g) fun _ hy => hy) =
      (structureSheaf R).1.map i.op s := by
  -- First, any section `s` can be represented as a fraction `f/g` on some open neighborhood of `x`
  -- and we may pass to a `basicOpen h`, since these form a basis
  obtain ⟨V, hxV : x.1 ∈ V.1, iVU, f, g, hVDg : V ≤ PrimeSpectrum.basicOpen g, s_eq⟩ :=
    exists_const R U s x.1 x.2
  obtain ⟨_, ⟨h, rfl⟩, hxDh, hDhV : PrimeSpectrum.basicOpen h ≤ V⟩ :=
    PrimeSpectrum.isTopologicalBasis_basic_opens.exists_subset_of_mem_open hxV V.2
  -- The problem is of course, that `g` and `h` don't need to coincide.
  -- But, since `basicOpen h ≤ basicOpen g`, some power of `h` must be a multiple of `g`
  obtain ⟨n, hn⟩ := (PrimeSpectrum.basicOpen_le_basicOpen_iff h g).mp (Set.Subset.trans hDhV hVDg)
  -- Actually, we will need a *nonzero* power of `h`.
  -- This is because we will need the equality `basicOpen (h ^ n) = basicOpen h`, which only
  -- holds for a nonzero power `n`. We therefore artificially increase `n` by one.
  replace hn := Ideal.mul_mem_right h (Ideal.span {g}) hn
  rw [← pow_succ, Ideal.mem_span_singleton'] at hn
  obtain ⟨c, hc⟩ := hn
  have basic_opens_eq := PrimeSpectrum.basicOpen_pow h (n + 1) (by omega)
  have i_basic_open := eqToHom basic_opens_eq ≫ homOfLE hDhV
  -- We claim that `(f * c) / h ^ (n+1)` is our desired representation
  use f * c, h ^ (n + 1), i_basic_open ≫ iVU, (basic_opens_eq.symm.le :) hxDh
  rw [op_comp, Functor.map_comp, ConcreteCategory.comp_apply, ← s_eq, res_const]
  -- Note that the last rewrite here generated an additional goal, which was a parameter
  -- of `res_const`. We prove this goal first
  swap
  · intro y hy
    rw [basic_opens_eq] at hy
    exact (Set.Subset.trans hDhV hVDg :) hy
  -- All that is left is a simple calculation
  apply const_ext
  rw [mul_assoc f c g, hc]

/-
Auxiliary lemma for surjectivity of `toBasicOpen`.
A local representation of a section `s` as fractions `a i / h i` on finitely many basic opens
`basicOpen (h i)` can be "normalized" in such a way that `a i * h j = h i * a j` for all `i, j`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/StructureSheaf/Variant739a7dda79de680bd2079221f187b9a3c082a6497504dfc1716470931cd472e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/StructureSheaf/Variant739a7dda79de680bd2079221f187b9a3c082a6497504dfc1716470931cd472e8.lean#L628).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2b8f88a0a3366a26e204ada4a5f97b22cc22de5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
