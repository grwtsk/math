# _root_.GRWTSK.Algebra.LinearAlgebra.SubmoduleFgIffExistsFinLinearMap.Variant808833f0748ffa443763b92903926591cbac4d982b6cc64907aa70249bf3ddb9.Module.finite_of_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:449aca7a-1de9-5c4e-2a16-267ea5d10839",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.SubmoduleFgIffExistsFinLinearMap.Variant808833f0748ffa443763b92903926591cbac4d982b6cc64907aa70249bf3ddb9.Module.finite_of_finite",
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
  "slug": "root-grwtsk-algebra-linearalgebra-submodulefgiffexistsfinlinearmap-varia--a7e2e16a1981335e46e40fe5",
  "source": {
    "blob": "33a74a5802d35d09fb1a6e3a2c2c6e7b970fcb78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 80,
    "path": "GRWTSK/Algebra/LinearAlgebra/Cardinality/Variant09e4abf269580219bdfd7a6c039afb89eb8e48eae58686ca003148c7904b9776.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7e2e16a1981335e46e40fe5410b21aaa6e8beb9e5e971cd2dc18c169dcae843",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Cardinality/Variant09e4abf269580219bdfd7a6c039afb89eb8e48eae58686ca003148c7904b9776.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:449aca7a-1de9-5c4e-2a16-267ea5d10839`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Algebra.LinearAlgebra.SubmoduleFgIffExistsFinLinearMap.Variant808833f0748ffa443763b92903926591cbac4d982b6cc64907aa70249bf3ddb9.Module.finite_of_finite [Finite R] [Module.Finite R M] : Finite M := by
  obtain ⟨n, f, hf⟩ := exists_fin' R M; exact .of_surjective f hf

variable {R}

/-- A module over a finite ring has finite dimension iff it is finite. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Cardinality/Variant09e4abf269580219bdfd7a6c039afb89eb8e48eae58686ca003148c7904b9776.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Cardinality/Variant09e4abf269580219bdfd7a6c039afb89eb8e48eae58686ca003148c7904b9776.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33a74a5802d35d09fb1a6e3a2c2c6e7b970fcb78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
