# notConvergentSeq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8e100fbbb191c05c0458f4580f5b9be465fe520ce5c8875c544ce83f317d195e",
  "kind": "def",
  "lexical_name": "notConvergentSeq",
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
  "slug": "notconvergentseq--f938a11da04232517f358f72",
  "source": {
    "blob": "18a08eabc4bc74de47b6094d018671bdb722ea4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 41,
    "path": "GRWTSK/Topology/GeneralTopology/Egorov/Variant3572f7d07f840429939d756e00ba59c6ff8265672ff5f38bbc31001aad7b9432.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f938a11da04232517f358f724976bf2f5cf1b029b232fa983d24b73e7777cce2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Egorov/Variant3572f7d07f840429939d756e00ba59c6ff8265672ff5f38bbc31001aad7b9432.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8e100fbbb191c05c0458f4580f5b9be465fe520ce5c8875c544ce83f317d195e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def notConvergentSeq [Preorder ι] (f : ι → α → β) (g : α → β) (n : ℕ) (j : ι) : Set α :=
  ⋃ (k) (_ : j ≤ k), { x | 1 / (n + 1 : ℝ) < dist (f k x) (g x) }

variable {n : ℕ} {j : ι} {s : Set α} {ε : ℝ} {f : ι → α → β} {g : α → β}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Egorov/Variant3572f7d07f840429939d756e00ba59c6ff8265672ff5f38bbc31001aad7b9432.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Egorov/Variant3572f7d07f840429939d756e00ba59c6ff8265672ff5f38bbc31001aad7b9432.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18a08eabc4bc74de47b6094d018671bdb722ea4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
