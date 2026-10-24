# FiniteSoninHorizon

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1cc1dbd194688a9c268ff9600cccc7ac05e23b72fc1020d88e43da0b4ca3dbb3",
  "kind": "structure",
  "lexical_name": "FiniteSoninHorizon",
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
  "slug": "finitesoninhorizon--17334a647b5e1ea3074eec6c",
  "source": {
    "blob": "14311a54cc7937483b2d5a173028b0090eb4343c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 21,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Carrier/Variant95d416772b0f51ce5807e9dce98b0fae4fbec10ee0a70dc75bcf8f7c70a0a5e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:17334a647b5e1ea3074eec6c38704246b7c3aa08e15e927089cf7b2e7b0c026c",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Carrier/Variant95d416772b0f51ce5807e9dce98b0fae4fbec10ee0a70dc75bcf8f7c70a0a5e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1cc1dbd194688a9c268ff9600cccc7ac05e23b72fc1020d88e43da0b4ca3dbb3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FiniteSoninHorizon
    (U : FinitePrimeHorizon) where
  Sonin :
    PrimeCut U → Type uSonin
  [soninNormed :
    ∀ S,
      NormedAddCommGroup (Sonin S)]
  [soninInner :
    ∀ S,
      InnerProductSpace ℂ (Sonin S)]
  [soninComplete :
    ∀ S,
      CompleteSpace (Sonin S)]
  connector :
    ∀ {S T : PrimeCut U},
      S ⊆ T →
      Sonin S →L[ℂ] Sonin T
  connector_id :
    ∀ S,
      connector
        (show S ⊆ S from
          fun _ h => h)
      =
      ContinuousLinearMap.id
        ℂ
        (Sonin S)
  connector_comp :
    ∀ {S T R : PrimeCut U}
      (hST : S ⊆ T)
      (hTR : T ⊆ R),
      (connector hTR).comp
        (connector hST)
      =
      connector
        (fun _ hp =>
          hTR (hST hp))
  connector_injective :
    ∀ {S T : PrimeCut U}
      (hST : S ⊆ T),
      Function.Injective
        (connector hST)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Carrier/Variant95d416772b0f51ce5807e9dce98b0fae4fbec10ee0a70dc75bcf8f7c70a0a5e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Carrier/Variant95d416772b0f51ce5807e9dce98b0fae4fbec10ee0a70dc75bcf8f7c70a0a5e2.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14311a54cc7937483b2d5a173028b0090eb4343c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
