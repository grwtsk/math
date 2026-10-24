# Bornology.ofBounded'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7f6dd018317c9180dbf7bb06cca63cae17a37d90332ff8177a876f73702dd242",
  "kind": "def",
  "lexical_name": "Bornology.ofBounded'",
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
  "slug": "bornology-ofbounded--4d591dd019cfa5ed673b4d1c",
  "source": {
    "blob": "ffbd967d84f16b1d841b2f6eaa1b49fa7553b392",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 115,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant5e8726eb8a15e6ccc89e433b32e8470a71649388392ae14f8de5c78b9a36360d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4d591dd019cfa5ed673b4d1c0eb12f7719aeac31c4ee231e7ecafd3144f86a0c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant5e8726eb8a15e6ccc89e433b32e8470a71649388392ae14f8de5c78b9a36360d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7f6dd018317c9180dbf7bb06cca63cae17a37d90332ff8177a876f73702dd242`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Bornology.ofBounded' {α : Type*} (B : Set (Set α))
    (empty_mem : ∅ ∈ B)
    (subset_mem : ∀ s₁ (_ : s₁ ∈ B) s₂, s₂ ⊆ s₁ → s₂ ∈ B)
    (union_mem : ∀ s₁ (_ : s₁ ∈ B) s₂ (_ : s₂ ∈ B), s₁ ∪ s₂ ∈ B)
    (sUnion_univ : ⋃₀ B = univ) :
    Bornology α :=
  Bornology.ofBounded B empty_mem subset_mem union_mem fun x => by
    rw [sUnion_eq_univ_iff] at sUnion_univ
    rcases sUnion_univ x with ⟨s, hs, hxs⟩
    exact subset_mem s hs {x} (singleton_subset_iff.mpr hxs)
#align bornology.of_bounded' Bornology.ofBounded'
#align bornology.of_bounded'_cobounded_sets Bornology.ofBounded'_cobounded_sets
namespace Bornology

section

variable [Bornology α] {s t : Set α} {x : α}

/-- `IsCobounded` is the predicate that `s` is in the filter of cobounded sets in the ambient
bornology on `α` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant5e8726eb8a15e6ccc89e433b32e8470a71649388392ae14f8de5c78b9a36360d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant5e8726eb8a15e6ccc89e433b32e8470a71649388392ae14f8de5c78b9a36360d.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffbd967d84f16b1d841b2f6eaa1b49fa7553b392` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
