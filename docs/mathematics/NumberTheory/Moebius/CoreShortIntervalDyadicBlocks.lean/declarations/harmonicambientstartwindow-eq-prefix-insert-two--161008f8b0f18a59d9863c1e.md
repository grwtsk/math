# harmonicAmbientStartWindow_eq_prefix_insert_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ecaff0d1-bee8-90f1-b6cf-9046e3d7cd70",
  "kind": "theorem",
  "lexical_name": "harmonicAmbientStartWindow_eq_prefix_insert_two",
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
  "slug": "harmonicambientstartwindow-eq-prefix-insert-two--161008f8b0f18a59d9863c1e",
  "source": {
    "blob": "61d0e9d7086b32a69ae67512dad339327431eacd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 62,
    "path": "GRWTSK/NumberTheory/Moebius/CoreShortIntervalDyadicBlocks.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:161008f8b0f18a59d9863c1edaf75f55dec3a7650ae189e59e8fb647e520c2eb",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreShortIntervalDyadicBlocks.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ecaff0d1-bee8-90f1-b6cf-9046e3d7cd70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem harmonicAmbientStartWindow_eq_prefix_insert_two
    (j : ℕ) :
    harmonicAmbientStartWindow j =
      insert (2 ^ (j + 1) + 1) (insert (2 ^ (j + 1)) (Finset.Ico 1 (2 ^ (j + 1)))) := by
  ext x
  have hp := pow_pos (by omega : (0 : ℕ) < 2) (j + 1)
  simp only [harmonicAmbientStartWindow, Finset.mem_Ico, Finset.mem_insert]
  omega

/-- Exact decomposition of the ambient first moment into standard dyadic start
blocks plus the two-start endpoint correction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreShortIntervalDyadicBlocks.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreShortIntervalDyadicBlocks.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61d0e9d7086b32a69ae67512dad339327431eacd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
