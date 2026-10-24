# tendsto_iff_ptendsto_univ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2fef4147-36d0-5a20-243d-de60b5a9fbfb",
  "kind": "theorem",
  "lexical_name": "tendsto_iff_ptendsto_univ",
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
  "slug": "tendsto-iff-ptendsto-univ--b8f2268ab7b6eb47342a1fd1",
  "source": {
    "blob": "e1c952f4ea401743a475f2c0df802638a62720a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 227,
    "path": "GRWTSK/Topology/GeneralTopology/Partial/Variantb75ce5562ee6e1b93b4b268dc7c3bde566a10a1b694aa220331117a1f9657e12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8f2268ab7b6eb47342a1fd11ce070863e5ab85ab0e9cd6b9de3574d67b4984c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Partial/Variantb75ce5562ee6e1b93b4b268dc7c3bde566a10a1b694aa220331117a1f9657e12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2fef4147-36d0-5a20-243d-de60b5a9fbfb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_iff_ptendsto_univ (l₁ : Filter α) (l₂ : Filter β) (f : α → β) :
    Tendsto f l₁ l₂ ↔ PTendsto (PFun.res f Set.univ) l₁ l₂ := by
  rw [← tendsto_iff_ptendsto]
  simp [principal_univ]

/-- Inverse map of a filter under a partial function. One generalization of `Filter.comap` to
partial functions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Partial/Variantb75ce5562ee6e1b93b4b268dc7c3bde566a10a1b694aa220331117a1f9657e12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Partial/Variantb75ce5562ee6e1b93b4b268dc7c3bde566a10a1b694aa220331117a1f9657e12.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1c952f4ea401743a475f2c0df802638a62720a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
