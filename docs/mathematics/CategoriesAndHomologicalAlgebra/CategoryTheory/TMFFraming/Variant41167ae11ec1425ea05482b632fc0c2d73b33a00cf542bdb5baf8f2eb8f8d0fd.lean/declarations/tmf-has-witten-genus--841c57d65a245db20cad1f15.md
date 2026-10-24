# tmf_has_witten_genus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:10f9e856-8e66-4f8e-6d6e-d7882a56a6db",
  "kind": "theorem",
  "lexical_name": "tmf_has_witten_genus",
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
  "slug": "tmf-has-witten-genus--841c57d65a245db20cad1f15",
  "source": {
    "blob": "ff15e597458bba572f90899457b08836ee0c65c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 28,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TMFFraming/Variant41167ae11ec1425ea05482b632fc0c2d73b33a00cf542bdb5baf8f2eb8f8d0fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:841c57d65a245db20cad1f15eb0acc9a8646ab184cb4fe386a27aab18a58d0e9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/TMFFraming/Variant41167ae11ec1425ea05482b632fc0c2d73b33a00cf542bdb5baf8f2eb8f8d0fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10f9e856-8e66-4f8e-6d6e-d7882a56a6db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tmf_has_witten_genus
    (T : Folder.ResearchTopos.TMFContract) :
    T.hasWittenGenus :=
  Folder.ResearchTopos.tmf_has_witten_genus T

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/TMFFraming/Variant41167ae11ec1425ea05482b632fc0c2d73b33a00cf542bdb5baf8f2eb8f8d0fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TMFFraming/Variant41167ae11ec1425ea05482b632fc0c2d73b33a00cf542bdb5baf8f2eb8f8d0fd.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff15e597458bba572f90899457b08836ee0c65c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
