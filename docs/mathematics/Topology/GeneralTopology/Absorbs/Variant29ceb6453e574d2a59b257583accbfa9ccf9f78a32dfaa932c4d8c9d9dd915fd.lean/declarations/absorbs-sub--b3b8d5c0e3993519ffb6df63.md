# Absorbs.sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9857dd97-ce70-1de3-7524-f5fdceeeff6f",
  "kind": "lemma",
  "lexical_name": "Absorbs.sub",
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
  "slug": "absorbs-sub--b3b8d5c0e3993519ffb6df63",
  "source": {
    "blob": "e4545e268bb769d269f5530f5c36ba1d4cabff1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 212,
    "path": "GRWTSK/Topology/GeneralTopology/Absorbs/Variant29ceb6453e574d2a59b257583accbfa9ccf9f78a32dfaa932c4d8c9d9dd915fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3b8d5c0e3993519ffb6df6301b3d900f36a53f90af8dcdd4ea17677405b97b2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Absorbs/Variant29ceb6453e574d2a59b257583accbfa9ccf9f78a32dfaa932c4d8c9d9dd915fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9857dd97-ce70-1de3-7524-f5fdceeeff6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Absorbs.sub {s₁ s₂ t₁ t₂ : Set E} (h₁ : Absorbs M s₁ t₁) (h₂ : Absorbs M s₂ t₂) :
    Absorbs M (s₁ - s₂) (t₁ - t₂) := by
  simpa only [sub_eq_add_neg] using h₁.add h₂.neg_neg

end AddGroup

namespace Absorbent

section SMul

variable {M α : Type*} [Bornology M] [SMul M α] {s t : Set α}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Absorbs/Variant29ceb6453e574d2a59b257583accbfa9ccf9f78a32dfaa932c4d8c9d9dd915fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Absorbs/Variant29ceb6453e574d2a59b257583accbfa9ccf9f78a32dfaa932c4d8c9d9dd915fd.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4545e268bb769d269f5530f5c36ba1d4cabff1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
