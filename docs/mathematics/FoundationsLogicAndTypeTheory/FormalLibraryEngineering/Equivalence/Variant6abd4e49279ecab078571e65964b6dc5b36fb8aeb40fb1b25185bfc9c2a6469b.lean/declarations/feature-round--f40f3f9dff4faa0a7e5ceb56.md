# feature_round

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a548cf5a-94d5-c379-8958-3f2908fc3fcd",
  "kind": "theorem",
  "lexical_name": "feature_round",
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
  "slug": "feature-round--f40f3f9dff4faa0a7e5ceb56",
  "source": {
    "blob": "080545f485bd6f356ed655974b18733359d13535",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 813,
    "line": 805,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equivalence/Variant6abd4e49279ecab078571e65964b6dc5b36fb8aeb40fb1b25185bfc9c2a6469b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f40f3f9dff4faa0a7e5ceb567e0863a45865b96ba9053fde8ef67735656b3055",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equivalence/Variant6abd4e49279ecab078571e65964b6dc5b36fb8aeb40fb1b25185bfc9c2a6469b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a548cf5a-94d5-c379-8958-3f2908fc3fcd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 805–813.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem feature_round {f : ObservationFeature S} (hf : B.FeatureFormed (P := P) Γ γ f)
    {y : Expr S} (hy : HasType P Γ y B.yType) (my : WellModed γ y .data) :
    Equivalent P Γ γ (B.feature L.code KY.code KP.code f (B.round y)) (B.feature L.code
      KY.code KP.code f y) := by
  cases f with
  | inner => exact H.bitInner_round hy my
  | outer => exact H.bitOuter_round hy my
  | probe i => exact H.observe_round KY KP hy my hf.1 hf.2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equivalence/Variant6abd4e49279ecab078571e65964b6dc5b36fb8aeb40fb1b25185bfc9c2a6469b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equivalence/Variant6abd4e49279ecab078571e65964b6dc5b36fb8aeb40fb1b25185bfc9c2a6469b.lean#L805).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `080545f485bd6f356ed655974b18733359d13535` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
