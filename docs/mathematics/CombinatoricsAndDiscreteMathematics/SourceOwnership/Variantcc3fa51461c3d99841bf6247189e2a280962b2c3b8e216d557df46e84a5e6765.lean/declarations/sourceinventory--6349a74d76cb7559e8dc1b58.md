# sourceInventory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3bf2c74a8a9c03be14bb9ff23ae69538b2c20d78747afd8c779e080ee9635919",
  "kind": "def",
  "lexical_name": "sourceInventory",
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
  "slug": "sourceinventory--6349a74d76cb7559e8dc1b58",
  "source": {
    "blob": "40a79ac20ba1473ca95b1a7d2903a3e327511cae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 24,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceOwnership/Variantcc3fa51461c3d99841bf6247189e2a280962b2c3b8e216d557df46e84a5e6765.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6349a74d76cb7559e8dc1b58172eb889946bc7a600d44d8ae94dc7067804886b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceOwnership/Variantcc3fa51461c3d99841bf6247189e2a280962b2c3b8e216d557df46e84a5e6765.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3bf2c74a8a9c03be14bb9ff23ae69538b2c20d78747afd8c779e080ee9635919`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–27.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sourceInventory (A : ℝ) : Finset ℕ :=
  (Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊).filter fun n : ℕ ↦ (n : ℝ) < Real.exp (2 * A)

/-- The source summand, retaining all prime powers and the normalized correlation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceOwnership/Variantcc3fa51461c3d99841bf6247189e2a280962b2c3b8e216d557df46e84a5e6765.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceOwnership/Variantcc3fa51461c3d99841bf6247189e2a280962b2c3b8e216d557df46e84a5e6765.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40a79ac20ba1473ca95b1a7d2903a3e327511cae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
