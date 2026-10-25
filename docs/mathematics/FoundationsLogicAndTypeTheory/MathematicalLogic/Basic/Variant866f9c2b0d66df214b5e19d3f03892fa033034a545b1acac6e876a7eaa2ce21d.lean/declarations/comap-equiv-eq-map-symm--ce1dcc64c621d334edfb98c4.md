# comap_equiv_eq_map_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "78ea3c05a5929e1689791d2353b865926ac15687",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 892,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/866f9c2b0d66df214b5e19d3f03892fa033034a545b1acac6e876a7eaa2ce21d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8c8eced9-7703-01d3-6e42-9564aefb495c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9a81b094-a178-9c80-3c27-2e5bdc91463d",
  "kind": "theorem",
  "lexical_name": "comap_equiv_eq_map_symm",
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
  "slug": "comap-equiv-eq-map-symm--ce1dcc64c621d334edfb98c4",
  "source": {
    "blob": "78ea3c05a5929e1689791d2353b865926ac15687",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 910,
    "line": 892,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant866f9c2b0d66df214b5e19d3f03892fa033034a545b1acac6e876a7eaa2ce21d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce1dcc64c621d334edfb98c46e514f813f576dca630e3b7ef50b8a72f10b98bb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant866f9c2b0d66df214b5e19d3f03892fa033034a545b1acac6e876a7eaa2ce21d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a81b094-a178-9c80-3c27-2e5bdc91463d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 892–910.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comap_equiv_eq_map_symm (f : R ≃+* S) (K : NonUnitalSubring S) :
    K.comap (f : R →ₙ+* S) = K.map f.symm :=
  (map_equiv_eq_comap_symm f.symm K).symm

end NonUnitalSubring

namespace NonUnitalRingHom

variable {F : Type w} {R : Type u} {S : Type v} {T : Type*}
  [NonUnitalNonAssocRing R] [NonUnitalNonAssocRing S] [NonUnitalNonAssocRing T]
  [NonUnitalRingHomClass F R S]
  (g : S →ₙ+* T) (f : R →ₙ+* S)
  {s : NonUnitalSubring R}

open NonUnitalSubring

/-- Restriction of a ring homomorphism to its range interpreted as a `NonUnitalSubring`.

This is the bundled version of `Set.rangeFactorization`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant866f9c2b0d66df214b5e19d3f03892fa033034a545b1acac6e876a7eaa2ce21d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant866f9c2b0d66df214b5e19d3f03892fa033034a545b1acac6e876a7eaa2ce21d.lean#L892).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78ea3c05a5929e1689791d2353b865926ac15687` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
