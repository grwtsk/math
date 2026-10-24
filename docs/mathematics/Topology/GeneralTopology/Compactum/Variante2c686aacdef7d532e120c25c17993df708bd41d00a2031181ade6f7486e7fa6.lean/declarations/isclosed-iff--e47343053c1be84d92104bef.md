# isClosed_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:18bbf68f-af27-b5f5-4207-2e9a4fc87e27",
  "kind": "theorem",
  "lexical_name": "isClosed_iff",
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
  "slug": "isclosed-iff--e47343053c1be84d92104bef",
  "source": {
    "blob": "2f797227f08c2d351198da1b4a65a9bbf5d2f0a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 165,
    "path": "GRWTSK/Topology/GeneralTopology/Compactum/Variante2c686aacdef7d532e120c25c17993df708bd41d00a2031181ade6f7486e7fa6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e47343053c1be84d92104bef1907f19e24ac821c249c9fcd80d4de518609147e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Compactum/Variante2c686aacdef7d532e120c25c17993df708bd41d00a2031181ade6f7486e7fa6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18bbf68f-af27-b5f5-4207-2e9a4fc87e27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isClosed_iff {X : Compactum} (S : Set X) :
    IsClosed S ↔ ∀ F : Ultrafilter X, S ∈ F → X.str F ∈ S := by
  rw [← isOpen_compl_iff]
  constructor
  · intro cond F h
    by_contra c
    specialize cond F c
    rw [compl_mem_iff_notMem] at cond
    contradiction
  · intro h1 F h2
    specialize h1 F
    rcases F.mem_or_compl_mem S with h | h
    exacts [absurd (h1 h) h2, h]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Compactum/Variante2c686aacdef7d532e120c25c17993df708bd41d00a2031181ade6f7486e7fa6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Compactum/Variante2c686aacdef7d532e120c25c17993df708bd41d00a2031181ade6f7486e7fa6.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f797227f08c2d351198da1b4a65a9bbf5d2f0a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
