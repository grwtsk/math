# a2_lower_43_part1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63dfe026-4c22-d65b-099d-1a11edf2b75e",
  "kind": "theorem",
  "lexical_name": "a2_lower_43_part1",
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
  "slug": "a2-lower-43-part1--80bed09b1b6f1aca90c0a0df",
  "source": {
    "blob": "531e83e58b158017670530c03474705f11dd9214",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 224,
    "path": "GRWTSK/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80bed09b1b6f1aca90c0a0df8cf1e9486e039f4cc6c1994273e3991a61c4c54f",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63dfe026-4c22-d65b-099d-1a11edf2b75e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem a2_lower_43_part1 :
    (1.032392058 : ℝ) ≤ (1 + 193571378 / (10:ℝ)^16) * (1 + exp (-43/12) + exp (-86/15) + exp (-43/6) + exp (-172/21) + exp (-215/24) + exp (-86/9) + exp (-301/30) + exp (-344/33) + exp (-43/4) + exp (-430/39) + exp (-473/42)) := by
  interval_decide 80

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `531e83e58b158017670530c03474705f11dd9214` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
