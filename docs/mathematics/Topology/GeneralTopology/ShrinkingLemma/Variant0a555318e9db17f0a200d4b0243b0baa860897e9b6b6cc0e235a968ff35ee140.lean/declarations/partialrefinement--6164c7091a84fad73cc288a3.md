# PartialRefinement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fcd535561c355eae9159f1d9a4750db26371137fcc0492d01b9b60986b262c4d",
  "kind": "structure",
  "lexical_name": "PartialRefinement",
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
  "slug": "partialrefinement--6164c7091a84fad73cc288a3",
  "source": {
    "blob": "2425239e28a40656dbbec1cea36e96cc3c6f0d6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 55,
    "path": "GRWTSK/Topology/GeneralTopology/ShrinkingLemma/Variant0a555318e9db17f0a200d4b0243b0baa860897e9b6b6cc0e235a968ff35ee140.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6164c7091a84fad73cc288a3499d1ac8f4de2fe52d813c6ad6e417f82127ea97",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ShrinkingLemma/Variant0a555318e9db17f0a200d4b0243b0baa860897e9b6b6cc0e235a968ff35ee140.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fcd535561c355eae9159f1d9a4750db26371137fcc0492d01b9b60986b262c4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[ext] structure PartialRefinement (u : ι → Set X) (s : Set X) where
  /-- A family of sets that form a partial refinement of `u`. -/
  toFun : ι → Set X
  /-- The set of indexes `i` such that `i`-th set is already shrunk. -/
  carrier : Set ι
  /-- Each set from the partially refined family is open. -/
  protected isOpen : ∀ i, IsOpen (toFun i)
  /-- The partially refined family still covers the set. -/
  subset_iUnion : s ⊆ ⋃ i, toFun i
  /-- For each `i ∈ carrier`, the original set includes the closure of the refined set. -/
  closure_subset : ∀ {i}, i ∈ carrier → closure (toFun i) ⊆ u i
  /-- Sets that correspond to `i ∉ carrier` are not modified. -/
  apply_eq : ∀ {i}, i ∉ carrier → toFun i = u i
#align shrinking_lemma.partial_refinement ShrinkingLemma.PartialRefinement

namespace PartialRefinement

variable {u : ι → Set X} {s : Set X}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ShrinkingLemma/Variant0a555318e9db17f0a200d4b0243b0baa860897e9b6b6cc0e235a968ff35ee140.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ShrinkingLemma/Variant0a555318e9db17f0a200d4b0243b0baa860897e9b6b6cc0e235a968ff35ee140.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2425239e28a40656dbbec1cea36e96cc3c6f0d6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
