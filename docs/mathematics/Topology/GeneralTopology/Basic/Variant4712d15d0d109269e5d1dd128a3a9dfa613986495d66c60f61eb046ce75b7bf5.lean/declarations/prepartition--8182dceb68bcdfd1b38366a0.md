# Prepartition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d336fbd8e3cc5dab89fc8d5431daa2b1be656d6d8e3e3f3ce6e974dd91cade04",
  "kind": "structure",
  "lexical_name": "Prepartition",
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
  "slug": "prepartition--8182dceb68bcdfd1b38366a0",
  "source": {
    "blob": "9ab959332b9188071df0df2fae6a9c90e725afc4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 50,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant4712d15d0d109269e5d1dd128a3a9dfa613986495d66c60f61eb046ce75b7bf5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8182dceb68bcdfd1b38366a0c9e6f0601d2f309a28388bdd8ae25c41c4455608",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant4712d15d0d109269e5d1dd128a3a9dfa613986495d66c60f61eb046ce75b7bf5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d336fbd8e3cc5dab89fc8d5431daa2b1be656d6d8e3e3f3ce6e974dd91cade04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Prepartition (I : Box ι) where
  /-- The underlying set of boxes -/
  boxes : Finset (Box ι)
  /-- Each box is a sub-box of `I` -/
  le_of_mem' : ∀ J ∈ boxes, J ≤ I
  /-- The boxes in a prepartition are pairwise disjoint. -/
  pairwiseDisjoint : Set.Pairwise (↑boxes) (Disjoint on ((↑) : Box ι → Set (ι → ℝ)))

namespace Prepartition

variable {I J J₁ J₂ : Box ι} (π : Prepartition I) {π₁ π₂ : Prepartition I} {x : ι → ℝ}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant4712d15d0d109269e5d1dd128a3a9dfa613986495d66c60f61eb046ce75b7bf5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant4712d15d0d109269e5d1dd128a3a9dfa613986495d66c60f61eb046ce75b7bf5.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ab959332b9188071df0df2fae6a9c90e725afc4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
