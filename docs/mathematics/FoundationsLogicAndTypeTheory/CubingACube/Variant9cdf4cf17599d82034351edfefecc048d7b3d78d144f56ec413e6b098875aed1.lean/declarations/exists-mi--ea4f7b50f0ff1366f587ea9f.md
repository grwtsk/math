# exists_mi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d986cd62-4dc9-b684-d981-bce66d3efe54",
  "kind": "theorem",
  "lexical_name": "exists_mi",
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
  "slug": "exists-mi--ea4f7b50f0ff1366f587ea9f",
  "source": {
    "blob": "1828de22caa9275bc2633f3b26b44e3f11da9a3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 345,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea4f7b50f0ff1366f587ea9fc3ffa75f0d90f2fc92987996d3b203d96075f7d5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d986cd62-4dc9-b684-d981-bce66d3efe54`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 345–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_mi : ∃ i ∈ bcubes cs c, ∀ i' ∈ bcubes cs c, (cs i).w ≤ (cs i').w :=
  (bcubes cs c).exists_min_image (fun i => (cs i).w) (Set.toFinite _) (nonempty_bcubes h v)
#align theorems_100.«82».exists_mi Theorems100.«82».exists_mi

/-- We let `mi` be the (index for the) smallest cube in the valley `c` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean#L345).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1828de22caa9275bc2633f3b26b44e3f11da9a3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
