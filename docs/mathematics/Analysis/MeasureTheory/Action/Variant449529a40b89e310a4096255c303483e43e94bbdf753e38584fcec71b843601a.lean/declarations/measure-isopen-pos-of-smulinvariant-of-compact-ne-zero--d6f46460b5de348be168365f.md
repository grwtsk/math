# measure_isOpen_pos_of_smulInvariant_of_compact_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5747e3941b04d464062cd1a57324a0db6586715f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 317,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/44/449529a40b89e310a4096255c303483e43e94bbdf753e38584fcec71b843601a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:da7a5c5a-2bc1-2aac-08c4-4a9df6829608",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:68b75d28-899a-6b62-742e-5920da84667a",
  "kind": "theorem",
  "lexical_name": "measure_isOpen_pos_of_smulInvariant_of_compact_ne_zero",
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
  "slug": "measure-isopen-pos-of-smulinvariant-of-compact-ne-zero--d6f46460b5de348be168365f",
  "source": {
    "blob": "5747e3941b04d464062cd1a57324a0db6586715f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 332,
    "line": 317,
    "path": "GRWTSK/Analysis/MeasureTheory/Action/Variant449529a40b89e310a4096255c303483e43e94bbdf753e38584fcec71b843601a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d6f46460b5de348be168365f218aa9a82fb6e7aa21d3e3d0918ba33ad4193103",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Action/Variant449529a40b89e310a4096255c303483e43e94bbdf753e38584fcec71b843601a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68b75d28-899a-6b62-742e-5920da84667a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 317–332.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_isOpen_pos_of_smulInvariant_of_compact_ne_zero (hK : IsCompact K) (hμK : μ K ≠ 0)
    (hU : IsOpen U) (hne : U.Nonempty) : 0 < μ U :=
  let ⟨t, ht⟩ := hK.exists_finite_cover_smul G hU hne
  pos_iff_ne_zero.2 fun hμU =>
    hμK <|
      measure_mono_null ht <|
        (measure_biUnion_null_iff t.countable_toSet).2 fun _ _ => by rwa [measure_smul]

/-- If measure `μ` is invariant under an additive group action and is nonzero on a compact set `K`,
then it is positive on any nonempty open set. In case of a regular measure, one can assume `μ ≠ 0`
instead of `μ K ≠ 0`, see `MeasureTheory.measure_isOpen_pos_of_vaddInvariant_of_ne_zero`. -/
add_decl_doc measure_isOpen_pos_of_vaddInvariant_of_compact_ne_zero

include G

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Action/Variant449529a40b89e310a4096255c303483e43e94bbdf753e38584fcec71b843601a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Action/Variant449529a40b89e310a4096255c303483e43e94bbdf753e38584fcec71b843601a.lean#L317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5747e3941b04d464062cd1a57324a0db6586715f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
