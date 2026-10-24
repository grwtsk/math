# factors'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:509b383271128ab9dc54aff247c6a62a282df9ecff3a5b4fad7f107cd24f6198",
  "kind": "def",
  "lexical_name": "factors'",
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
  "slug": "factors--0f1bc9e1a2e284a4dbf09c20",
  "source": {
    "blob": "35c291d382c6d9d4e59536769a537c8fce1dfb3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1394,
    "line": 1390,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/UniqueFactorizationDomain/Variantdf2a448084744bfa924e2513fa820878aaec42db1eb8ce8a8b4ac6393dd355d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0f1bc9e1a2e284a4dbf09c2058990a5fc65e34163681df55e65d7dd0c58d7aac",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/UniqueFactorizationDomain/Variantdf2a448084744bfa924e2513fa820878aaec42db1eb8ce8a8b4ac6393dd355d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:509b383271128ab9dc54aff247c6a62a282df9ecff3a5b4fad7f107cd24f6198`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1390–1394.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def factors' (a : α) : Multiset { a : Associates α // Irreducible a } :=
  (factors a).pmap (fun a ha => ⟨Associates.mk a, (irreducible_mk _).2 ha⟩) irreducible_of_factor
#align associates.factors' Associates.factors'

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/UniqueFactorizationDomain/Variantdf2a448084744bfa924e2513fa820878aaec42db1eb8ce8a8b4ac6393dd355d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/UniqueFactorizationDomain/Variantdf2a448084744bfa924e2513fa820878aaec42db1eb8ce8a8b4ac6393dd355d0.lean#L1390).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35c291d382c6d9d4e59536769a537c8fce1dfb3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
