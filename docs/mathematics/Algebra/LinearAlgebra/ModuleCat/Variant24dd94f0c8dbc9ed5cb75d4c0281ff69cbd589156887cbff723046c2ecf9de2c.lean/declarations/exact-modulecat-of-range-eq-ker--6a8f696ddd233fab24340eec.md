# Exact.moduleCat_of_range_eq_ker

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2b633dbfb07d98f6f9a3fc157c6008f94f98e7d1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 88,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/24dd94f0c8dbc9ed5cb75d4c0281ff69cbd589156887cbff723046c2ecf9de2c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8cae0844-0c5d-cfa6-039e-ed04fe9fc205",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8d4def5b-505b-311f-6db3-d6841f29fde9",
  "kind": "lemma",
  "lexical_name": "Exact.moduleCat_of_range_eq_ker",
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
  "slug": "exact-modulecat-of-range-eq-ker--6a8f696ddd233fab24340eec",
  "source": {
    "blob": "2b633dbfb07d98f6f9a3fc157c6008f94f98e7d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 88,
    "path": "GRWTSK/Algebra/LinearAlgebra/ModuleCat/Variant24dd94f0c8dbc9ed5cb75d4c0281ff69cbd589156887cbff723046c2ecf9de2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a8f696ddd233fab24340eecdfffe2d9d8a792b4db39d90f302a05328acda905",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ModuleCat/Variant24dd94f0c8dbc9ed5cb75d4c0281ff69cbd589156887cbff723046c2ecf9de2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d4def5b-505b-311f-6db3-d6841f29fde9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Exact.moduleCat_of_range_eq_ker {X₁ X₂ X₃ : ModuleCat.{v} R}
    (f : X₁ ⟶ X₂) (g : X₂ ⟶ X₃) (hfg : LinearMap.range f.hom = LinearMap.ker g.hom) :
    (moduleCatMkOfKerLERange f g (by rw [hfg])).Exact := by
  simpa only [moduleCat_exact_iff_range_eq_ker] using! hfg

/-- The canonical linear map `S.X₁ →ₗ[R] LinearMap.ker S.g` induced by `S.f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ModuleCat/Variant24dd94f0c8dbc9ed5cb75d4c0281ff69cbd589156887cbff723046c2ecf9de2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ModuleCat/Variant24dd94f0c8dbc9ed5cb75d4c0281ff69cbd589156887cbff723046c2ecf9de2c.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b633dbfb07d98f6f9a3fc157c6008f94f98e7d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
