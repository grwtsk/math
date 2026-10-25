# hen01_exactFullyFaithful

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:844520f6-4780-e655-a897-950bfcdd76e5",
  "kind": "theorem",
  "lexical_name": "hen01_exactFullyFaithful",
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
  "slug": "hen01-exactfullyfaithful--39c4eefac18ad68ab7c61ccc",
  "source": {
    "blob": "3e31a5cced01cecd22f879b6b99f836365b39b31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 20,
    "line": 14,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HEN01ExactFullyFaithful/Variante19fbb91ce7e9410b6b181e9062b84a95361039e9a8fd39dc1c744e2d5bf2555.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39c4eefac18ad68ab7c61ccce53a7538753db47831fde37d855e00388a3c9d71",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HEN01ExactFullyFaithful/Variante19fbb91ce7e9410b6b181e9062b84a95361039e9a8fd39dc1c744e2d5bf2555.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:844520f6-4780-e655-a897-950bfcdd76e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–20.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hen01_exactFullyFaithful
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S) :
    HEN01Claim S :=
  registry.hen01

end FCRS.Algebraization.Theorems
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HEN01ExactFullyFaithful/Variante19fbb91ce7e9410b6b181e9062b84a95361039e9a8fd39dc1c744e2d5bf2555.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HEN01ExactFullyFaithful/Variante19fbb91ce7e9410b6b181e9062b84a95361039e9a8fd39dc1c744e2d5bf2555.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e31a5cced01cecd22f879b6b99f836365b39b31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
