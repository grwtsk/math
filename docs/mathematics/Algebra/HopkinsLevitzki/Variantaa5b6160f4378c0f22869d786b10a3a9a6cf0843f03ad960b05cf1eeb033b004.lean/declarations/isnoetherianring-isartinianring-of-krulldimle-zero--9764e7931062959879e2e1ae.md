# IsNoetherianRing.isArtinianRing_of_krullDimLE_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "adb55c158a43500dcfd8e59099e60caf61b406de",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 144,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/aa/aa5b6160f4378c0f22869d786b10a3a9a6cf0843f03ad960b05cf1eeb033b004.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c2d87b1f-6091-4e77-879d-597ff642e432",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eeb1b9be-5cf6-13eb-2331-fff0c12be1e8",
  "kind": "theorem",
  "lexical_name": "IsNoetherianRing.isArtinianRing_of_krullDimLE_zero",
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
  "slug": "isnoetherianring-isartinianring-of-krulldimle-zero--9764e7931062959879e2e1ae",
  "source": {
    "blob": "adb55c158a43500dcfd8e59099e60caf61b406de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 144,
    "path": "GRWTSK/Algebra/HopkinsLevitzki/Variantaa5b6160f4378c0f22869d786b10a3a9a6cf0843f03ad960b05cf1eeb033b004.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9764e7931062959879e2e1ae63f33fadf1e0d6ff921c204cd79367f346ad832f",
  "verification": {
    "reference": "docs/verification/Algebra/HopkinsLevitzki/Variantaa5b6160f4378c0f22869d786b10a3a9a6cf0843f03ad960b05cf1eeb033b004.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eeb1b9be-5cf6-13eb-2331-fff0c12be1e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsNoetherianRing.isArtinianRing_of_krullDimLE_zero {R} [CommRing R]
    [IsNoetherianRing R] [Ring.KrullDimLE 0 R] : IsArtinianRing R :=
  have eq := Ring.jacobson_eq_nilradical_of_krullDimLE_zero R
  let Spec := {I : Ideal R | I.IsPrime}
  have : Finite Spec :=
    (minimalPrimes.finite_of_isNoetherianRing R).subset Ideal.mem_minimalPrimes_of_krullDimLE_zero
  have (I : Spec) : I.1.IsPrime := I.2
  have (I : Spec) : IsSemisimpleRing (R ⧸ I.1) := let _ := Ideal.Quotient.field I.1; inferInstance
  have : IsSemisimpleRing (R ⧸ Ring.jacobson R) := by
    rw [eq, nilradical_eq_sInf, sInf_eq_iInf']
    exact (Ideal.quotientInfRingEquivPiQuotient _ fun I J ne ↦
      Ideal.isCoprime_of_isMaximal <| Subtype.coe_ne_coe.mpr ne).symm.isSemisimpleRing
  have : IsSemiprimaryRing R := ⟨this, eq ▸ IsNoetherianRing.isNilpotent_nilradical R⟩
  IsSemiprimaryRing.isNoetherian_iff_isArtinian.mp ‹_›

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/HopkinsLevitzki/Variantaa5b6160f4378c0f22869d786b10a3a9a6cf0843f03ad960b05cf1eeb033b004.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/HopkinsLevitzki/Variantaa5b6160f4378c0f22869d786b10a3a9a6cf0843f03ad960b05cf1eeb033b004.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `adb55c158a43500dcfd8e59099e60caf61b406de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
