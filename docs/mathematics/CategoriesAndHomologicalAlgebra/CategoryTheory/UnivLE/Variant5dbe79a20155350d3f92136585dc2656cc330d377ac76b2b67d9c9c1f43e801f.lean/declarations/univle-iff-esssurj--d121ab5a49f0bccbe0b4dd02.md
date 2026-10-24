# UnivLE_iff_essSurj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2456d60d-74fd-16b0-cf69-229be57e8c12",
  "kind": "theorem",
  "lexical_name": "UnivLE_iff_essSurj",
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
  "slug": "univle-iff-esssurj--d121ab5a49f0bccbe0b4dd02",
  "source": {
    "blob": "fec7722065e71ac8aadc32cf5d5843a4bd46f803",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 46,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/UnivLE/Variant5dbe79a20155350d3f92136585dc2656cc330d377ac76b2b67d9c9c1f43e801f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d121ab5a49f0bccbe0b4dd02edb3cb801dba244202b3c9eb1b17cf138b66ef90",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/UnivLE/Variant5dbe79a20155350d3f92136585dc2656cc330d377ac76b2b67d9c9c1f43e801f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2456d60d-74fd-16b0-cf69-229be57e8c12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem UnivLE_iff_essSurj :
    UnivLE.{max u v, v} ↔ (uliftFunctor.{u, v} : Type v ⥤ Type max u v).EssSurj :=
  ⟨fun _ => inferInstance, fun w => UnivLE.ofEssSurj w⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/UnivLE/Variant5dbe79a20155350d3f92136585dc2656cc330d377ac76b2b67d9c9c1f43e801f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/UnivLE/Variant5dbe79a20155350d3f92136585dc2656cc330d377ac76b2b67d9c9c1f43e801f.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fec7722065e71ac8aadc32cf5d5843a4bd46f803` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
