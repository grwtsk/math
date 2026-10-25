# Positive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:888ffe6c9ae48dc24c88a497932c04bbdb44d94a8ed78548d52dc9365757ed58",
  "kind": "def",
  "lexical_name": "Positive",
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
  "slug": "positive--0ddb380283c767c37afd5ff9",
  "source": {
    "blob": "7d6b2b03e043514cf9e31b6ad17feeec4c9d244e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 142,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/0ea3e9e661c5869590b71afdd281ecc9493a1658cc603b2fe4d1f1063abfeeacPlucker24/Variant0ea3e9e661c5869590b71afdd281ecc9493a1658cc603b2fe4d1f1063abfeeac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0ddb380283c767c37afd5ff9311c4a2bc83568e1ad643dc73286ab5df28d3c8a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/0ea3e9e661c5869590b71afdd281ecc9493a1658cc603b2fe4d1f1063abfeeacPlucker24/Variant0ea3e9e661c5869590b71afdd281ecc9493a1658cc603b2fe4d1f1063abfeeac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:888ffe6c9ae48dc24c88a497932c04bbdb44d94a8ed78548d52dc9365757ed58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Positive (x : Chart24) : Prop :=
  0 < x.a ∧ 0 < x.b ∧ 0 < x.c ∧ 0 < x.d ∧ 0 < x.a * x.d - x.b * x.c

/-- Chart positivity is equivalent to positivity of all actual coordinates. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/0ea3e9e661c5869590b71afdd281ecc9493a1658cc603b2fe4d1f1063abfeeacPlucker24/Variant0ea3e9e661c5869590b71afdd281ecc9493a1658cc603b2fe4d1f1063abfeeac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/0ea3e9e661c5869590b71afdd281ecc9493a1658cc603b2fe4d1f1063abfeeacPlucker24/Variant0ea3e9e661c5869590b71afdd281ecc9493a1658cc603b2fe4d1f1063abfeeac.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d6b2b03e043514cf9e31b6ad17feeec4c9d244e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
