# convolution_single

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8f3110fadd29439a0cc1b425bc885ddf741e580e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 152,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0c/0cfda211126a5444993763730b5b5c47c0b5b19f708a4f1844adbccfd428940e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c7f1709c-59ff-6413-15b1-e05d81634f27",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cad03b60-ba8e-21aa-beb4-9b161b5ed287",
  "kind": "lemma",
  "lexical_name": "convolution_single",
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
  "slug": "convolution-single--8493e6a120f333d422bf2aee",
  "source": {
    "blob": "8f3110fadd29439a0cc1b425bc885ddf741e580e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 152,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant0cfda211126a5444993763730b5b5c47c0b5b19f708a4f1844adbccfd428940e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8493e6a120f333d422bf2aee43cba2419d2cbc4dd37025945771dd915d46a503",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant0cfda211126a5444993763730b5b5c47c0b5b19f708a4f1844adbccfd428940e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cad03b60-ba8e-21aa-beb4-9b161b5ed287`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma convolution_single [DecidableEq M] (L : F →ₗ[S] E →ₗ[S] F) (e : E) (f : M → F)
    (hL : ∀ y, L y e = y) :
    f ⋆[L] Pi.single 1 e = f := by
  ext x; simp only [convolution, Pi.single_apply]
  rw [tsum_eq_single (⟨(x, 1), by grind⟩ : mulFiber x) (by grind [LinearMap.zero_apply])]
  simp [hL]

end BasicProperties

section ExistenceProperties

variable [Monoid M] [CommSemiring S] [AddCommMonoid E] [AddCommMonoid E'] [AddCommMonoid F]
variable [Module S E] [Module S E'] [Module S F]
variable [TopologicalSpace F]

/-- The convolution of `f` and `g` with bilinear map `L` exists at `x`: the family
`ab ↦ L (f ab.1.1) (g ab.1.2)` indexed by `mulFiber x` is summable. -/
@[to_additive (dont_translate := S E E' F) AddConvolutionExistsAt
  /-- The additive convolution of `f` and `g` with bilinear map `L` exists at `x`: the family
  `ab ↦ L (f ab.1.1) (g ab.1.2)` indexed by `addFiber x` is summable. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant0cfda211126a5444993763730b5b5c47c0b5b19f708a4f1844adbccfd428940e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant0cfda211126a5444993763730b5b5c47c0b5b19f708a4f1844adbccfd428940e.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f3110fadd29439a0cc1b425bc885ddf741e580e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
