# ContMDiffOn.prodMk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fe5b6cd2-de6b-34dc-b52a-1e8296365b9b",
  "kind": "theorem",
  "lexical_name": "ContMDiffOn.prodMk",
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
  "slug": "contmdiffon-prodmk--ce7b74cfbd45947c1a53f19d",
  "source": {
    "blob": "846b17490b007add1cf432d6e58ed42a3c11b01f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 91,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce7b74cfbd45947c1a53f19d979142505e63d9f97e24d81108483d7e74c8c029",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe5b6cd2-de6b-34dc-b52a-1e8296365b9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContMDiffOn.prodMk {f : M → M'} {g : M → N'} (hf : ContMDiffOn I I' n f s)
    (hg : ContMDiffOn I J' n g s) : ContMDiffOn I (I'.prod J') n (fun x => (f x, g x)) s :=
  fun x hx => (hf x hx).prodMk (hg x hx)

@[deprecated (since := "2025-03-08")]
alias ContMDiffOn.prod_mk := ContMDiffOn.prodMk

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `846b17490b007add1cf432d6e58ed42a3c11b01f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
