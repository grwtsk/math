# Algebra.isAlgebraic_iff_isIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "018a1223267835ca45d23b5cc9f0b3125ebd3006",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 195,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:154c4c0e-9ad3-0843-30c0-3bd8db0fc064",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:322be19c-2b9f-97e7-0e65-3d30b2d8fc3c",
  "kind": "theorem",
  "lexical_name": "Algebra.isAlgebraic_iff_isIntegral",
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
  "slug": "algebra-isalgebraic-iff-isintegral--ac23736f8b0f601336347593",
  "source": {
    "blob": "018a1223267835ca45d23b5cc9f0b3125ebd3006",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 195,
    "path": "GRWTSK/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac23736f8b0f6013363475936747d97b81ffce701265a9ea8db890f6d9080dd2",
  "verification": {
    "reference": "docs/verification/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:322be19c-2b9f-97e7-0e65-3d30b2d8fc3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Algebra.isAlgebraic_iff_isIntegral :
    Algebra.IsAlgebraic K A ↔ Algebra.IsIntegral K A :=
  ⟨fun h x => isAlgebraic_iff_isIntegral.mp (h x), fun h x => isAlgebraic_iff_isIntegral.mpr (h x)⟩
#align algebra.is_algebraic_iff_is_integral Algebra.isAlgebraic_iff_isIntegral

end Field

section

variable {K : Type*} {L : Type*} {R : Type*} {S : Type*} {A : Type*}

section Ring

section CommRing

variable [CommRing R] [CommRing S] [Ring A]

variable [Algebra R S] [Algebra S A] [Algebra R A] [IsScalarTower R S A]

/-- If x is algebraic over R, then x is algebraic over S when S is an extension of R,
  and the map from `R` to `S` is injective. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `018a1223267835ca45d23b5cc9f0b3125ebd3006` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
