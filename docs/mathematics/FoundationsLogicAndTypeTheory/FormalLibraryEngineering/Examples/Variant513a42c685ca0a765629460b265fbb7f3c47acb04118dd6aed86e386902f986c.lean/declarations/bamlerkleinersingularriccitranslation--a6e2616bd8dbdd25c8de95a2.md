# bamlerKleinerSingularRicciTranslation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dacea58e1eb46929230b58d8697028fd20ae6f31b3e79f5bf2f76b8ef83d9996",
  "kind": "def",
  "lexical_name": "bamlerKleinerSingularRicciTranslation",
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
  "slug": "bamlerkleinersingularriccitranslation--a6e2616bd8dbdd25c8de95a2",
  "source": {
    "blob": "6d02d92f407de48207713702ad3682194cadc2cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 558,
    "line": 545,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Examples/Variant513a42c685ca0a765629460b265fbb7f3c47acb04118dd6aed86e386902f986c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a6e2616bd8dbdd25c8de95a2c3b19bf16b4898c96a7fd5b495f410274e2d9907",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Examples/Variant513a42c685ca0a765629460b265fbb7f3c47acb04118dd6aed86e386902f986c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dacea58e1eb46929230b58d8697028fd20ae6f31b3e79f5bf2f76b8ef83d9996`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 545–558.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def bamlerKleinerSingularRicciTranslation : LiteratureTranslationRecord :=
  capabilityLiteratureTranslation "SFS-LIT-RICCI-BK"
    (arxivLiteratureArtifact
      "Richard H. Bamler and Bruce Kleiner, Uniqueness and stability of Ricci flow through singularities, arXiv:1709.04122v2"
      "8c957d215e4910df7fe86c142d663d43ae663938b8b595150a10fcb3c12d1780")
    "uniqueness, stability, and surgery-limit statements for singular Ricci flows"
    "ricci-flow-continuation-relation"
    "Surface.SmoothFramedSurgery.RicciFlowSurgerySemantics.ContinuesAfterSurgery"
    ["continuation is kept distinct from local topological neck surgery"]
    ["canonical singular-flow uniqueness, continuous dependence, and convergence of surgery flows are not represented by the local capability"]
    ["formalize singular Ricci-flow spacetime semantics",
      "prove a bridge from surgery outputs to a canonical singular-flow limit"]

/-- Morgan--Tian motivates separated cut, cap, delete, and restart semantics only. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Examples/Variant513a42c685ca0a765629460b265fbb7f3c47acb04118dd6aed86e386902f986c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Examples/Variant513a42c685ca0a765629460b265fbb7f3c47acb04118dd6aed86e386902f986c.lean#L545).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d02d92f407de48207713702ad3682194cadc2cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
