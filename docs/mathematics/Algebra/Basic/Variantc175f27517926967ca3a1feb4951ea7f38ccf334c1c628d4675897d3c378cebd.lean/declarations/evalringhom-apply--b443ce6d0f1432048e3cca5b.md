# evalRingHom_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "058c18b12574833a4ab00d9346171356572e5d8f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 353,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c1/c175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f837cb80-7ed0-154e-ce6a-4c5e42c0f394",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b1a4f61c-34c3-2f3c-9618-3c9b68a08294",
  "kind": "lemma",
  "lexical_name": "evalRingHom_apply",
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
  "slug": "evalringhom-apply--b443ce6d0f1432048e3cca5b",
  "source": {
    "blob": "058c18b12574833a4ab00d9346171356572e5d8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 381,
    "line": 353,
    "path": "GRWTSK/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b443ce6d0f1432048e3cca5bfdb7025782fee0fa32a9313b56c49a556aea7b4c",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1a4f61c-34c3-2f3c-9618-3c9b68a08294`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 353–381.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma evalRingHom_apply [Π i, Ring (R i)] [∀ i, SubringClass (S i) (R i)]
    (x : Πʳ i, [R i, B i]_[𝓕]) (j : ι) : evalRingHom R j x = x j :=
  rfl

end eval

section map

variable {ι₁ ι₂ : Type*}
variable (R₁ : ι₁ → Type*) (R₂ : ι₂ → Type*)
variable {𝓕₁ : Filter ι₁} {𝓕₂ : Filter ι₂}
variable {A₁ : (i : ι₁) → Set (R₁ i)} {A₂ : (i : ι₂) → Set (R₂ i)}
variable {S₁ : ι₁ → Type*} {S₂ : ι₂ → Type*}
variable [Π i, SetLike (S₁ i) (R₁ i)] [Π j, SetLike (S₂ j) (R₂ j)]
variable {B₁ : Π i, S₁ i} {B₂ : Π j, S₂ j}
variable (f : ι₂ → ι₁) (hf : Tendsto f 𝓕₂ 𝓕₁)

section set

variable (φ : ∀ j, R₁ (f j) → R₂ j) (hφ : ∀ᶠ j in 𝓕₂, MapsTo (φ j) (A₁ (f j)) (A₂ j))

/--
Given two restricted products `Πʳ (i : ι₁), [R₁ i, A₁ i]_[𝓕₁]` and `Πʳ (j : ι₂), [R₂ j, A₂ j]_[𝓕₂]`,
`RestrictedProduct.mapAlong` gives a function between them. The data needed is a
function `f : ι₂ → ι₁` such that `𝓕₂` tends to `𝓕₁` along `f`, and functions `φ j : R₁ (f j) → R₂ j`
sending `A₁ (f j)` into `A₂ j` for an `𝓕₂`-large set of `j`'s.

See also `mapAlongMonoidHom`, `mapAlongAddMonoidHom` and `mapAlongRingHom` for variants.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantc175f27517926967ca3a1feb4951ea7f38ccf334c1c628d4675897d3c378cebd.lean#L353).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `058c18b12574833a4ab00d9346171356572e5d8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
