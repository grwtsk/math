# IsIntegral.pair_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30b11625-327e-de6c-14b8-7cfe26b15310",
  "kind": "theorem",
  "lexical_name": "IsIntegral.pair_iff",
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
  "slug": "isintegral-pair-iff--0d48c074a5bf15c850a897f5",
  "source": {
    "blob": "177d7c2590394d970722a27314bef608ef7086b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 261,
    "path": "GRWTSK/Algebra/Basic/Variant2436cd12c9940ab49e59cee24097f2209221dee89cc949ac10cbca60284c3438.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d48c074a5bf15c850a897f5efb704a2ff870b30006b7d351ae284c59ad8cb63",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant2436cd12c9940ab49e59cee24097f2209221dee89cc949ac10cbca60284c3438.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30b11625-327e-de6c-14b8-7cfe26b15310`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsIntegral.pair_iff {x : A × B} : IsIntegral R x ↔ IsIntegral R x.1 ∧ IsIntegral R x.2 :=
  ⟨fun h ↦ ⟨h.map (AlgHom.fst R A B), h.map (AlgHom.snd R A B)⟩, fun h ↦ h.1.pair h.2⟩

end Prod
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant2436cd12c9940ab49e59cee24097f2209221dee89cc949ac10cbca60284c3438.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant2436cd12c9940ab49e59cee24097f2209221dee89cc949ac10cbca60284c3438.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `177d7c2590394d970722a27314bef608ef7086b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
