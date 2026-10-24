# essFiniteType_algebraMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f1917d1-b666-5209-523b-940c47aeff3d",
  "kind": "lemma",
  "lexical_name": "essFiniteType_algebraMap",
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
  "slug": "essfinitetype-algebramap--3f9551270f79f1e7ab5ea07f",
  "source": {
    "blob": "250e6f0a65f5ab54aabf6fa58a813c3242777f0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 272,
    "path": "GRWTSK/Algebra/EssentialFiniteness/Variant92ea9ecd0474f0013df29094d85f2c14aa28fa6fa72290df642b9534fdc13c0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f9551270f79f1e7ab5ea07f0460fb4623ad4d359846f89a8e747ebd1d4caf62",
  "verification": {
    "reference": "docs/verification/Algebra/EssentialFiniteness/Variant92ea9ecd0474f0013df29094d85f2c14aa28fa6fa72290df642b9534fdc13c0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f1917d1-b666-5209-523b-940c47aeff3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma essFiniteType_algebraMap {R S : Type*} [CommRing R] [CommRing S]
    [Algebra R S] : (algebraMap R S).EssFiniteType ↔ Algebra.EssFiniteType R S := by
  rw [RingHom.EssFiniteType, toAlgebra_algebraMap]

/-- A choice of "essential generators" for a ring hom essentially of finite type.
See `Algebra.EssFiniteType.ext`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/EssentialFiniteness/Variant92ea9ecd0474f0013df29094d85f2c14aa28fa6fa72290df642b9534fdc13c0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/EssentialFiniteness/Variant92ea9ecd0474f0013df29094d85f2c14aa28fa6fa72290df642b9534fdc13c0a.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `250e6f0a65f5ab54aabf6fa58a813c3242777f0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
