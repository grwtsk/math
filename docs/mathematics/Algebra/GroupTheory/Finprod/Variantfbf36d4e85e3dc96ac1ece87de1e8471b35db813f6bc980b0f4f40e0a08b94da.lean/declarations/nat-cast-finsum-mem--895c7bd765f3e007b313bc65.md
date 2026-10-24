# Nat.cast_finsum_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca8101cb-4b95-a201-ea97-b99413e4eb94",
  "kind": "lemma",
  "lexical_name": "Nat.cast_finsum_mem",
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
  "slug": "nat-cast-finsum-mem--895c7bd765f3e007b313bc65",
  "source": {
    "blob": "59c7b9fbb6e2aa88d2b73affa83e503356bcad58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1428,
    "line": 1414,
    "path": "GRWTSK/Algebra/GroupTheory/Finprod/Variantfbf36d4e85e3dc96ac1ece87de1e8471b35db813f6bc980b0f4f40e0a08b94da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:895c7bd765f3e007b313bc65e0db1ced6d4eab54bb0f6fab0e89e96d8c5b92b4",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Finprod/Variantfbf36d4e85e3dc96ac1ece87de1e8471b35db813f6bc980b0f4f40e0a08b94da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca8101cb-4b95-a201-ea97-b99413e4eb94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1414–1428.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Nat.cast_finsum_mem {s : Set ι} (hs : s.Finite) {M : Type*}
    [AddCommMonoidWithOne M] (f : ι → ℕ) : ↑(∑ᶠ x ∈ s, f x : ℕ) = ∑ᶠ x ∈ s, (f x : M) :=
  (Nat.castAddMonoidHom M).map_finsum_mem _ hs

end type

/-!
### Some API for `fun a ↦ f a ^ count a s` on multisets
-/

namespace Multiset

variable {α M : Type*} [DecidableEq α] [CommMonoid M]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Finprod/Variantfbf36d4e85e3dc96ac1ece87de1e8471b35db813f6bc980b0f4f40e0a08b94da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Finprod/Variantfbf36d4e85e3dc96ac1ece87de1e8471b35db813f6bc980b0f4f40e0a08b94da.lean#L1414).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59c7b9fbb6e2aa88d2b73affa83e503356bcad58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
