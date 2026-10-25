# withConstants_funMap_sumInl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ee49c9c5-2145-6448-c41a-d3db39dbdeed",
  "kind": "theorem",
  "lexical_name": "withConstants_funMap_sumInl",
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
  "slug": "withconstants-funmap-suminl--44319946387500e6006f584a",
  "source": {
    "blob": "dbccb437d3c1ebe8ec1bcdfb46fa98482b35819e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 444,
    "line": 440,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/LanguageMap/Variant5937347f7d8dd3252e50e4cc475f560f95385a5cba82a1688579072c69408d5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44319946387500e6006f584a0448a35daa65514bea4d4a234b631e69f3bb004f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/LanguageMap/Variant5937347f7d8dd3252e50e4cc475f560f95385a5cba82a1688579072c69408d5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee49c9c5-2145-6448-c41a-d3db39dbdeed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 440–444.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem withConstants_funMap_sumInl [L[[α]].Structure M] [(lhomWithConstants L α).IsExpansionOn M]
    {n} {f : L.Functions n} {x : Fin n → M} : @funMap L[[α]] M _ n (Sum.inl f) x = funMap f x :=
  (lhomWithConstants L α).map_onFunction f x

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/LanguageMap/Variant5937347f7d8dd3252e50e4cc475f560f95385a5cba82a1688579072c69408d5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/LanguageMap/Variant5937347f7d8dd3252e50e4cc475f560f95385a5cba82a1688579072c69408d5b.lean#L440).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbccb437d3c1ebe8ec1bcdfb46fa98482b35819e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
