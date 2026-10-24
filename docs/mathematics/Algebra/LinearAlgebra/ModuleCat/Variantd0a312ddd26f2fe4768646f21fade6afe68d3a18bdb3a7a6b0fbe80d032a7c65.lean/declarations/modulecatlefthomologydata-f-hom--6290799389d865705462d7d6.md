# moduleCatLeftHomologyData_f'_hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d9e4311e-6ffd-8a4e-48ba-823d55951f07",
  "kind": "lemma",
  "lexical_name": "moduleCatLeftHomologyData_f'_hom",
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
  "slug": "modulecatlefthomologydata-f-hom--6290799389d865705462d7d6",
  "source": {
    "blob": "d424e1bae37d9449999fe5fe5dd0a50e5c582846",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 136,
    "path": "GRWTSK/Algebra/LinearAlgebra/ModuleCat/Variantd0a312ddd26f2fe4768646f21fade6afe68d3a18bdb3a7a6b0fbe80d032a7c65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6290799389d865705462d7d666b110161002ead39baf0a15541c691f845ea816",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ModuleCat/Variantd0a312ddd26f2fe4768646f21fade6afe68d3a18bdb3a7a6b0fbe80d032a7c65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9e4311e-6ffd-8a4e-48ba-823d55951f07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma moduleCatLeftHomologyData_f'_hom :
    S.moduleCatLeftHomologyData.f'.hom = S.moduleCatToCycles := rfl

@[deprecated (since := "2025-05-09")]
alias moduleCatLeftHomologyData_f' := moduleCatLeftHomologyData_f'_hom

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ModuleCat/Variantd0a312ddd26f2fe4768646f21fade6afe68d3a18bdb3a7a6b0fbe80d032a7c65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ModuleCat/Variantd0a312ddd26f2fe4768646f21fade6afe68d3a18bdb3a7a6b0fbe80d032a7c65.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d424e1bae37d9449999fe5fe5dd0a50e5c582846` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
