# IsAbsoluteValue.map_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c81e3ba895b5566a2fa0790da9b5d8a1ad1f58c7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 214,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/44/440f582cbd2e05fb6d2bbafdcc0c8fb45cc5b0b152204d90876f87ebbee3588f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:85ac749c-c178-03ae-403b-e283faf4508b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4f5852d0-b405-5c9b-0b05-821eaef72a06",
  "kind": "lemma",
  "lexical_name": "IsAbsoluteValue.map_prod",
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
  "slug": "isabsolutevalue-map-prod--075f93c913b07b7976590136",
  "source": {
    "blob": "c81e3ba895b5566a2fa0790da9b5d8a1ad1f58c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 214,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant440f582cbd2e05fb6d2bbafdcc0c8fb45cc5b0b152204d90876f87ebbee3588f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:075f93c913b07b797659013610260a9b1e0205f2bddb1747917cf1ca2712e905",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Finset/Variant440f582cbd2e05fb6d2bbafdcc0c8fb45cc5b0b152204d90876f87ebbee3588f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f5852d0-b405-5c9b-0b05-821eaef72a06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
lemma IsAbsoluteValue.map_prod [CommSemiring R] [Nontrivial R]
    [CommRing S] [LinearOrder S] [IsStrictOrderedRing S]
    (abv : R → S) [IsAbsoluteValue abv] (f : ι → R) (s : Finset ι) :
    abv (∏ i ∈ s, f i) = ∏ i ∈ s, abv (f i) :=
  (IsAbsoluteValue.toAbsoluteValue abv).map_prod _ _

end AbsoluteValue

/-! ### Positivity extension -/

namespace Mathlib.Meta.Positivity
open Qq Lean Meta Finset

alias ⟨_, prod_ne_zero⟩ := prod_ne_zero_iff

attribute [local instance] monadLiftOptionMetaM in
/-- The `positivity` extension which proves that `∏ i ∈ s, f i` is nonnegative if `f` is, and
positive if each `f i` is.

TODO: The following example does not work
```
example (s : Finset ℕ) (f : ℕ → ℤ) (hf : ∀ n, 0 ≤ f n) : 0 ≤ s.prod f := by positivity
```
because `compareHyp` can't look for assumptions behind binders.
-/
@[positivity Finset.prod _ _]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Finset/Variant440f582cbd2e05fb6d2bbafdcc0c8fb45cc5b0b152204d90876f87ebbee3588f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant440f582cbd2e05fb6d2bbafdcc0c8fb45cc5b0b152204d90876f87ebbee3588f.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c81e3ba895b5566a2fa0790da9b5d8a1ad1f58c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
