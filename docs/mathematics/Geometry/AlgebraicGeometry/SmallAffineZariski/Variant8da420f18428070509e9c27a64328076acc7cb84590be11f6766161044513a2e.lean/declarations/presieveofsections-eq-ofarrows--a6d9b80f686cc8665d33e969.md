# presieveOfSections_eq_ofArrows

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "88631127c12f7f61ca614dd2c94ec5649a52094b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 155,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8da420f18428070509e9c27a64328076acc7cb84590be11f6766161044513a2e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:27eed328-81b5-8ff3-e07f-3ca5a76305b2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:af7145b2-ce5d-6bda-c507-b5db3c1f73d0",
  "kind": "lemma",
  "lexical_name": "presieveOfSections_eq_ofArrows",
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
  "slug": "presieveofsections-eq-ofarrows--a6d9b80f686cc8665d33e969",
  "source": {
    "blob": "88631127c12f7f61ca614dd2c94ec5649a52094b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 155,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/SmallAffineZariski/Variant8da420f18428070509e9c27a64328076acc7cb84590be11f6766161044513a2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6d9b80f686cc8665d33e969d079b723bd2cd862023a1fcbb011252e55f9a833",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/SmallAffineZariski/Variant8da420f18428070509e9c27a64328076acc7cb84590be11f6766161044513a2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af7145b2-ce5d-6bda-c507-b5db3c1f73d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma presieveOfSections_eq_ofArrows (U : X.AffineZariskiSite) (s : Set Γ(X, U.toOpens)) :
    presieveOfSections U s = .ofArrows _ (fun i : s ↦ homOfLE (U.basicOpen_le i.1)) := by
  refine funext₂ fun ⟨V, hV⟩ ⟨f, hf⟩ ↦ eq_iff_iff.mpr ⟨?_, ?_⟩
  · rintro ⟨f, hfs, rfl⟩
    exact .mk (ι := s) ⟨f, hfs⟩
  · rintro ⟨⟨f, hfs⟩⟩
    exact ⟨f, hfs, rfl⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/SmallAffineZariski/Variant8da420f18428070509e9c27a64328076acc7cb84590be11f6766161044513a2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/SmallAffineZariski/Variant8da420f18428070509e9c27a64328076acc7cb84590be11f6766161044513a2e.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88631127c12f7f61ca614dd2c94ec5649a52094b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
