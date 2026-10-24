# compactSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0018437b-8edf-07e4-33b0-2393424db040",
  "kind": "lemma",
  "lexical_name": "compactSpace",
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
  "slug": "compactspace--dcfb110629a9412d53071b2c",
  "source": {
    "blob": "8d7eb2a460f8a8377a0910c0cd9de199ea269891",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 51,
    "path": "GRWTSK/Topology/GeneralTopology/Restrict/Variant30b9216be3a709913240470f2e7dc48deeb456fb58b0900e51bcb8d250e7a544.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dcfb110629a9412d53071b2c4452827d7c7cded9e1937e9b0f6afe59f308e309",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Restrict/Variant30b9216be3a709913240470f2e7dc48deeb456fb58b0900e51bcb8d250e7a544.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0018437b-8edf-07e4-33b0-2393424db040`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma compactSpace {R S A : Type*} [Semifield R] [Semifield S] [Ring A]
    [Algebra R S] [Algebra R A] [Algebra S A] [IsScalarTower R S A] [TopologicalSpace R]
    [TopologicalSpace S] {a : A} (f : C(S, R)) (h : SpectrumRestricts a f)
    [h_cpct : CompactSpace (spectrum S a)] : CompactSpace (spectrum R a) := by
  rw [← isCompact_iff_compactSpace] at h_cpct ⊢
  exact h.image ▸ h_cpct.image (map_continuous f)

universe u v w

/-- If the spectrum of an element restricts to a smaller scalar ring, then a continuous functional
calculus over the larger scalar ring descends to the smaller one. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Restrict/Variant30b9216be3a709913240470f2e7dc48deeb456fb58b0900e51bcb8d250e7a544.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Restrict/Variant30b9216be3a709913240470f2e7dc48deeb456fb58b0900e51bcb8d250e7a544.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d7eb2a460f8a8377a0910c0cd9de199ea269891` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
