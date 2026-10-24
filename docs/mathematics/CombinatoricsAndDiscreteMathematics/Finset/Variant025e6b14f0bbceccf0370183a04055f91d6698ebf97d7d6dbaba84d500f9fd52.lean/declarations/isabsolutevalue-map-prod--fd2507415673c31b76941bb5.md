# IsAbsoluteValue.map_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "985c6e5457f4ca7a44fb283ef872964bb0e6869c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 251,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/02/025e6b14f0bbceccf0370183a04055f91d6698ebf97d7d6dbaba84d500f9fd52.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d6b9c9a5-62c5-5e45-d4b5-7688016f6350",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0c82ec20-cf62-8f04-89d8-0260eb066be1",
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
  "slug": "isabsolutevalue-map-prod--fd2507415673c31b76941bb5",
  "source": {
    "blob": "985c6e5457f4ca7a44fb283ef872964bb0e6869c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 251,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant025e6b14f0bbceccf0370183a04055f91d6698ebf97d7d6dbaba84d500f9fd52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd2507415673c31b76941bb50346be3ef1dfd716e6c316bac9f18dbb6fd35e5f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Finset/Variant025e6b14f0bbceccf0370183a04055f91d6698ebf97d7d6dbaba84d500f9fd52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c82ec20-cf62-8f04-89d8-0260eb066be1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–276.

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

private alias ⟨_, prod_ne_zero⟩ := prod_ne_zero_iff

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Finset/Variant025e6b14f0bbceccf0370183a04055f91d6698ebf97d7d6dbaba84d500f9fd52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant025e6b14f0bbceccf0370183a04055f91d6698ebf97d7d6dbaba84d500f9fd52.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `985c6e5457f4ca7a44fb283ef872964bb0e6869c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
