# toPiLocalization_not_surjective_of_infinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5f2b789877c0a1cea5b60d95236acd848a3c1188",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 125,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/51/512e81b991c70117c38cc32d96f82fde001486339a10c8eec4f1ffad793ef58c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:84f87019-37ca-6d00-1935-a4953258375c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:425afae6-516c-9c27-186a-384286b638fe",
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
  "slug": "topilocalization-not-surjective-of-infinite--de788380581badcd760b8184",
  "source": {
    "blob": "5f2b789877c0a1cea5b60d95236acd848a3c1188",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 125,
    "path": "GRWTSK/Algebra/Localization/Variant512e81b991c70117c38cc32d96f82fde001486339a10c8eec4f1ffad793ef58c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de788380581badcd760b81840c392e1dcc313a9dd5589f853917d0d24791ba1d",
  "verification": {
    "reference": "docs/verification/Algebra/Localization/Variant512e81b991c70117c38cc32d96f82fde001486339a10c8eec4f1ffad793ef58c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:425afae6-516c-9c27-186a-384286b638fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–142.

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

[Verification target and public status](../../../../../verification/Algebra/Localization/Variant512e81b991c70117c38cc32d96f82fde001486339a10c8eec4f1ffad793ef58c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Localization/Variant512e81b991c70117c38cc32d96f82fde001486339a10c8eec4f1ffad793ef58c.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f2b789877c0a1cea5b60d95236acd848a3c1188` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
