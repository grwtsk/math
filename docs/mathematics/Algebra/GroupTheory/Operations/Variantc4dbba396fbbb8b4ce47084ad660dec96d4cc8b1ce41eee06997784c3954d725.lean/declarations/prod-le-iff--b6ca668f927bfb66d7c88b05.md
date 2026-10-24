# prod_le_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a5571172e066dee37586abc057c9167c7ebf595f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 976,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c4dbba396fbbb8b4ce47084ad660dec96d4cc8b1ce41eee06997784c3954d725.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0f8aa5a0-f277-1afc-d92f-6a0b5ce09293",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8fb50330-a5fb-645e-9b88-53a63685107d",
  "kind": "theorem",
  "lexical_name": "prod_le_iff",
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
  "slug": "prod-le-iff--b6ca668f927bfb66d7c88b05",
  "source": {
    "blob": "a5571172e066dee37586abc057c9167c7ebf595f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1038,
    "line": 976,
    "path": "GRWTSK/Algebra/GroupTheory/Operations/Variantc4dbba396fbbb8b4ce47084ad660dec96d4cc8b1ce41eee06997784c3954d725.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6ca668f927bfb66d7c88b05d77a285721a9bc33a1a611f94fcb8defbaad83de",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Operations/Variantc4dbba396fbbb8b4ce47084ad660dec96d4cc8b1ce41eee06997784c3954d725.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8fb50330-a5fb-645e-9b88-53a63685107d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 976–1038.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
theorem prod_le_iff {s : Submonoid M} {t : Submonoid N} {u : Submonoid (M × N)} :
    s.prod t ≤ u ↔ s.map (inl M N) ≤ u ∧ t.map (inr M N) ≤ u := by
  constructor
  · intro h
    constructor
    · rintro _ ⟨x, hx, rfl⟩
      apply h
      exact ⟨hx, Submonoid.one_mem _⟩
    · rintro _ ⟨x, hx, rfl⟩
      apply h
      exact ⟨Submonoid.one_mem _, hx⟩
  · rintro ⟨hH, hK⟩ ⟨x1, x2⟩ ⟨h1, h2⟩
    have h1' : inl M N x1 ∈ u := by
      apply hH
      simpa using h1
    have h2' : inr M N x2 ∈ u := by
      apply hK
      simpa using h2
    simpa using Submonoid.mul_mem _ h1' h2'
#align submonoid.prod_le_iff Submonoid.prod_le_iff
#align add_submonoid.prod_le_iff AddSubmonoid.prod_le_iff

end Submonoid

namespace MonoidHom

variable {F : Type*} [mc : MonoidHomClass F M N]

open Submonoid

library_note "range copy pattern"/--
For many categories (monoids, modules, rings, ...) the set-theoretic image of a morphism `f` is
a subobject of the codomain. When this is the case, it is useful to define the range of a morphism
in such a way that the underlying carrier set of the range subobject is definitionally
`Set.range f`. In particular this means that the types `↥(Set.range f)` and `↥f.range` are
interchangeable without proof obligations.

A convenient candidate definition for range which is mathematically correct is `map ⊤ f`, just as
`Set.range` could have been defined as `f '' Set.univ`. However, this lacks the desired definitional
convenience, in that it both does not match `Set.range`, and that it introduces a redundant `x ∈ ⊤`
term which clutters proofs. In such a case one may resort to the `copy`
pattern. A `copy` function converts the definitional problem for the carrier set of a subobject
into a one-off propositional proof obligation which one discharges while writing the definition of
the definitionally convenient range (the parameter `hs` in the example below).

A good example is the case of a morphism of monoids. A convenient definition for
`MonoidHom.mrange` would be `(⊤ : Submonoid M).map f`. However since this lacks the required
definitional convenience, we first define `Submonoid.copy` as follows:
```lean
protected def copy (S : Submonoid M) (s : Set M) (hs : s = S) : Submonoid M :=
  { carrier  := s,
    one_mem' := hs.symm ▸ S.one_mem',
    mul_mem' := hs.symm ▸ S.mul_mem' }
```
and then finally define:
```lean
def mrange (f : M →* N) : Submonoid N :=
  ((⊤ : Submonoid M).map f).copy (Set.range f) Set.image_univ.symm
```
-/

/-- The range of a monoid homomorphism is a submonoid. See Note [range copy pattern]. -/
@[to_additive "The range of an `AddMonoidHom` is an `AddSubmonoid`."]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Operations/Variantc4dbba396fbbb8b4ce47084ad660dec96d4cc8b1ce41eee06997784c3954d725.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Operations/Variantc4dbba396fbbb8b4ce47084ad660dec96d4cc8b1ce41eee06997784c3954d725.lean#L976).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5571172e066dee37586abc057c9167c7ebf595f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
