# Set.exposedPoints

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:47e55a4d6bdfe3191a709aed5dfd205e50bdae8b977fe7fb5a10f129e38ad397",
  "kind": "def",
  "lexical_name": "Set.exposedPoints",
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
  "slug": "set-exposedpoints--08f5171cf100466daf72b785",
  "source": {
    "blob": "2e8e7b373e28b9cde136b967e5b3557eba04036b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 186,
    "path": "GRWTSK/Topology/GeneralTopology/Exposed/Variantfdb2b60dd29e1b7781088bdfb4c2ed00def55365e1345ac505ba3bd9491e0018.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:08f5171cf100466daf72b785110da456de92426edfb932fadf34a3ab74692757",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Exposed/Variantfdb2b60dd29e1b7781088bdfb4c2ed00def55365e1345ac505ba3bd9491e0018.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:47e55a4d6bdfe3191a709aed5dfd205e50bdae8b977fe7fb5a10f129e38ad397`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Set.exposedPoints (A : Set E) : Set E :=
  { x ∈ A | ∃ l : StrongDual 𝕜 E, ∀ y ∈ A, l y ≤ l x ∧ (l x ≤ l y → y = x) }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Exposed/Variantfdb2b60dd29e1b7781088bdfb4c2ed00def55365e1345ac505ba3bd9491e0018.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Exposed/Variantfdb2b60dd29e1b7781088bdfb4c2ed00def55365e1345ac505ba3bd9491e0018.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e8e7b373e28b9cde136b967e5b3557eba04036b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
