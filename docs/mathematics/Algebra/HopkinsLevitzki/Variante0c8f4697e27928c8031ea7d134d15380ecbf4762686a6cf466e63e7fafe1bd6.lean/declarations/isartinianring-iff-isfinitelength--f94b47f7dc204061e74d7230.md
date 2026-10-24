# isArtinianRing_iff_isFiniteLength

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0b66dc04-d0cb-b53e-18bb-ab5adc84c8ae",
  "kind": "theorem",
  "lexical_name": "isArtinianRing_iff_isFiniteLength",
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
  "slug": "isartinianring-iff-isfinitelength--f94b47f7dc204061e74d7230",
  "source": {
    "blob": "270101694a5674e96efb2a6cb1ae7bc4cb1515ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 143,
    "path": "GRWTSK/Algebra/HopkinsLevitzki/Variante0c8f4697e27928c8031ea7d134d15380ecbf4762686a6cf466e63e7fafe1bd6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f94b47f7dc204061e74d72303d5d0bc2b5ea8ff47037ba3db2a13477578e8f3b",
  "verification": {
    "reference": "docs/verification/Algebra/HopkinsLevitzki/Variante0c8f4697e27928c8031ea7d134d15380ecbf4762686a6cf466e63e7fafe1bd6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b66dc04-d0cb-b53e-18bb-ab5adc84c8ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isArtinianRing_iff_isFiniteLength : IsArtinianRing R ↔ IsFiniteLength R R :=
  ⟨fun h ↦ ((IsArtinianRing.tfae R R).out 3 4).mp h,
    fun h ↦ (isFiniteLength_iff_isNoetherian_isArtinian.mp h).2⟩

@[stacks 00JB "A ring is Artinian if and only if it has finite length as a module over itself.
**Any such ring is both Artinian and Noetherian.**"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/HopkinsLevitzki/Variante0c8f4697e27928c8031ea7d134d15380ecbf4762686a6cf466e63e7fafe1bd6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/HopkinsLevitzki/Variante0c8f4697e27928c8031ea7d134d15380ecbf4762686a6cf466e63e7fafe1bd6.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `270101694a5674e96efb2a6cb1ae7bc4cb1515ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
