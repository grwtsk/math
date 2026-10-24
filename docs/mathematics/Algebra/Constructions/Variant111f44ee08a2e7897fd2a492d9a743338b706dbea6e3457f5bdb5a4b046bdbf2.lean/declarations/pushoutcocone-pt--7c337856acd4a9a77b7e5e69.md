# pushoutCocone_pt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f4839b1-14b3-0ddd-c935-2c881f7aa872",
  "kind": "theorem",
  "lexical_name": "pushoutCocone_pt",
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
  "slug": "pushoutcocone-pt--7c337856acd4a9a77b7e5e69",
  "source": {
    "blob": "d3c674c7d72679ce6480457bf9ae24f8566d40ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 82,
    "path": "GRWTSK/Algebra/Constructions/Variant111f44ee08a2e7897fd2a492d9a743338b706dbea6e3457f5bdb5a4b046bdbf2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c337856acd4a9a77b7e5e69bdc6782f2a6e59cf18fb98412d961e5990e6f535",
  "verification": {
    "reference": "docs/verification/Algebra/Constructions/Variant111f44ee08a2e7897fd2a492d9a743338b706dbea6e3457f5bdb5a4b046bdbf2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f4839b1-14b3-0ddd-c935-2c881f7aa872`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pushoutCocone_pt :
    (pushoutCocone f g).pt = by
      letI := f.toAlgebra
      letI := g.toAlgebra
      exact CommRingCat.of (A ⊗[R] B) :=
  rfl
set_option linter.uppercaseLean3 false in
#align CommRing.pushout_cocone_X CommRingCat.pushoutCocone_pt

/-- Verify that the `pushout_cocone` is indeed the colimit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Constructions/Variant111f44ee08a2e7897fd2a492d9a743338b706dbea6e3457f5bdb5a4b046bdbf2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Constructions/Variant111f44ee08a2e7897fd2a492d9a743338b706dbea6e3457f5bdb5a4b046bdbf2.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3c674c7d72679ce6480457bf9ae24f8566d40ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
