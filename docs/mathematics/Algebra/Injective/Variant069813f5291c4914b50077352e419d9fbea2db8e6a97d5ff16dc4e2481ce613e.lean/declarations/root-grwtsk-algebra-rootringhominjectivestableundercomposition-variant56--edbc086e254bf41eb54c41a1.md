# _root_.GRWTSK.Algebra.RootRingHomInjectiveStableUnderComposition.Variant566ece4a69645bf0c640732bc5f56a50b44b6a7d45bbe71e929cef509bcc04c3.RingHom.injective_respectsIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9969c5f3-e53c-c441-a175-0ef3de36b031",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Algebra.RootRingHomInjectiveStableUnderComposition.Variant566ece4a69645bf0c640732bc5f56a50b44b6a7d45bbe71e929cef509bcc04c3.RingHom.injective_respectsIso",
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
  "slug": "root-grwtsk-algebra-rootringhominjectivestableundercomposition-variant56--edbc086e254bf41eb54c41a1",
  "source": {
    "blob": "370af5ceb846f3b9df44803455b60aaf93340ebe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 28,
    "line": 24,
    "path": "GRWTSK/Algebra/Injective/Variant069813f5291c4914b50077352e419d9fbea2db8e6a97d5ff16dc4e2481ce613e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:edbc086e254bf41eb54c41a174aec85ba9096ecfff6323205697e90ff578b179",
  "verification": {
    "reference": "docs/verification/Algebra/Injective/Variant069813f5291c4914b50077352e419d9fbea2db8e6a97d5ff16dc4e2481ce613e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9969c5f3-e53c-c441-a175-0ef3de36b031`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–28.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Algebra.RootRingHomInjectiveStableUnderComposition.Variant566ece4a69645bf0c640732bc5f56a50b44b6a7d45bbe71e929cef509bcc04c3.RingHom.injective_respectsIso :
    RingHom.RespectsIso (fun f ↦ Function.Injective f) := by
  apply RingHom.injective_stableUnderComposition.respectsIso
  intro R S _ _ e
  exact e.bijective.injective
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Injective/Variant069813f5291c4914b50077352e419d9fbea2db8e6a97d5ff16dc4e2481ce613e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Injective/Variant069813f5291c4914b50077352e419d9fbea2db8e6a97d5ff16dc4e2481ce613e.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `370af5ceb846f3b9df44803455b60aaf93340ebe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
