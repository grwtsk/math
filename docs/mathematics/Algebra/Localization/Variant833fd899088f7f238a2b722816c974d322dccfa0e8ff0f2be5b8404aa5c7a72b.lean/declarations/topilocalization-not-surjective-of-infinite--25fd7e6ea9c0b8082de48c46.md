# toPiLocalization_not_surjective_of_infinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f0f42fb2b767cda39bab581085ef117a8e0a895d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 120,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/83/833fd899088f7f238a2b722816c974d322dccfa0e8ff0f2be5b8404aa5c7a72b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a7c9822e-adb8-c9d8-fa0a-32d22715204a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:de6dd68f-1a2f-fa6a-1050-0e39ab2b224f",
  "kind": "theorem",
  "lexical_name": "toPiLocalization_not_surjective_of_infinite",
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
  "slug": "topilocalization-not-surjective-of-infinite--25fd7e6ea9c0b8082de48c46",
  "source": {
    "blob": "f0f42fb2b767cda39bab581085ef117a8e0a895d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 120,
    "path": "GRWTSK/Algebra/Localization/Variant833fd899088f7f238a2b722816c974d322dccfa0e8ff0f2be5b8404aa5c7a72b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25fd7e6ea9c0b8082de48c46a2adeec212d4df4f0c9a91028a780f52022861ab",
  "verification": {
    "reference": "docs/verification/Algebra/Localization/Variant833fd899088f7f238a2b722816c974d322dccfa0e8ff0f2be5b8404aa5c7a72b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de6dd68f-1a2f-fa6a-1050-0e39ab2b224f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toPiLocalization_not_surjective_of_infinite [Infinite ι] :
    ¬ Function.Surjective (toPiLocalization (Π i, R i)) := fun surj ↦ by
  classical
  have ⟨J, max, notMem⟩ := PrimeSpectrum.exists_maximal_notMem_range_sigmaToPi_of_infinite R
  obtain ⟨r, hr⟩ := surj (Function.update 0 ⟨J, max⟩ 1)
  have : r = 0 := funext fun i ↦ toPiLocalization_injective _ <| funext fun I ↦ by
    replace hr := congr_fun hr ⟨_, I.2.comap_piEvalRingHom⟩
    dsimp only [toPiLocalization_apply_apply, Subtype.coe_mk] at hr
    simp_rw [toPiLocalization_apply_apply,
      ← Localization.AtPrime.mapPiEvalRingHom_algebraMap_apply, hr]
    rw [Function.update_of_ne]; · simp_rw [Pi.zero_apply, map_zero]
    exact fun h ↦ notMem ⟨⟨i, I.1, I.2.isPrime⟩, PrimeSpectrum.ext congr($h.1)⟩
  replace hr := congr_fun hr ⟨J, max⟩
  rw [this, map_zero, Function.update_self] at hr
  exact zero_ne_one hr

variable {R}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Localization/Variant833fd899088f7f238a2b722816c974d322dccfa0e8ff0f2be5b8404aa5c7a72b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Localization/Variant833fd899088f7f238a2b722816c974d322dccfa0e8ff0f2be5b8404aa5c7a72b.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0f42fb2b767cda39bab581085ef117a8e0a895d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
