# conductorThreePsi_eq_typeIPrefix_add_typeIIPrefix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:60f2e42c-539a-9c75-8dfa-cef0fb145f66",
  "kind": "theorem",
  "lexical_name": "conductorThreePsi_eq_typeIPrefix_add_typeIIPrefix",
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
  "slug": "conductorthreepsi-eq-typeiprefix-add-typeiiprefix--5b575397a47e542ec2cecd37",
  "source": {
    "blob": "6ff5fcd0f9b7bf92e0374976e7f6890c7deec68f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 77,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeWangZahlTTStar/Variant9e6bd492c2bb85f14fe395a1c46a16c31435ea9bca998872bcdf5efffa265ee1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b575397a47e542ec2cecd376f760c4da0f7482fe2e9c6705e13c829cc35f3d4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeWangZahlTTStar/Variant9e6bd492c2bb85f14fe395a1c46a16c31435ea9bca998872bcdf5efffa265ee1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60f2e42c-539a-9c75-8dfa-cef0fb145f66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem conductorThreePsi_eq_typeIPrefix_add_typeIIPrefix (N x : ℕ) :
    Surface.Core.ConductorThreeVonMangoldt.conductorThreePsi x =
      conductorThreeVaughanTypeIPrefix N x +
        conductorThreeVaughanTypeIIPrefix N x := by
  let U := vaughanFourthRootCutoff N
  have h := conductorThreePsi_eq_vaughan_prefixes U U x
  simpa [conductorThreeVaughanTypeIPrefix,
    conductorThreeVaughanTypeIIPrefix,
    conductorThreeVaughanTypeIICoefficient, U, add_assoc] using h

/-- Local packet-interaction evidence for a fixed moment route.  It carries
only overlap information; no full-Gram or arithmetic estimate is a field. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeWangZahlTTStar/Variant9e6bd492c2bb85f14fe395a1c46a16c31435ea9bca998872bcdf5efffa265ee1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeWangZahlTTStar/Variant9e6bd492c2bb85f14fe395a1c46a16c31435ea9bca998872bcdf5efffa265ee1.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ff5fcd0f9b7bf92e0374976e7f6890c7deec68f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
