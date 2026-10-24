# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3013354f7efc99ba1e3607d2cb33e073168e178182bb4bdcfc56559682ca137f",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--c3306d06a893fc9bba10cbe7",
  "source": {
    "blob": "d672ca99eb3264b3c33e46ab82db687700e04f2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 87,
    "path": "GRWTSK/Algebra/LinearAlgebra/Sensitivity/Variant1d769ce9e5e871c29cb0117aa6fa23feb012c4d0ec8c788c2afc034aa91a0216.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c3306d06a893fc9bba10cbe7f3b174f4ba4a23b471f17714d9119a572fe63d87",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Sensitivity/Variant1d769ce9e5e871c29cb0117aa6fa23feb012c4d0ec8c788c2afc034aa91a0216.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3013354f7efc99ba1e3607d2cb33e073168e178182bb4bdcfc56559682ca137f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : Unique (Q 0) :=
  ⟨⟨fun _ => true⟩, by intro; ext x; fin_cases x⟩

/-- `Q n` has 2^n elements. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Sensitivity/Variant1d769ce9e5e871c29cb0117aa6fa23feb012c4d0ec8c788c2afc034aa91a0216.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Sensitivity/Variant1d769ce9e5e871c29cb0117aa6fa23feb012c4d0ec8c788c2afc034aa91a0216.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d672ca99eb3264b3c33e46ab82db687700e04f2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
