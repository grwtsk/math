# toZMod_spec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1e8c5bffb7d64576fd64ffe8636ca79f37af2dbb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 272,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/93/93ea17f628b2bc8e4af8ff25ec38e5d140824d949b6346ad4638181abd961dcf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1c888fed-b7e1-5558-fd46-cc8faf04d0a6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fb2ef9b6-5bcd-893f-d319-20e960a5c755",
  "kind": "theorem",
  "lexical_name": "toZMod_spec",
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
  "slug": "tozmod-spec--f9cbb79908b3b6684e9a12d6",
  "source": {
    "blob": "1e8c5bffb7d64576fd64ffe8636ca79f37af2dbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 272,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/RingHoms/Variant93ea17f628b2bc8e4af8ff25ec38e5d140824d949b6346ad4638181abd961dcf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9cbb79908b3b6684e9a12d65dcd9e2a2c92a55e481707198b4cb5bad25166c3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/RingHoms/Variant93ea17f628b2bc8e4af8ff25ec38e5d140824d949b6346ad4638181abd961dcf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb2ef9b6-5bcd-893f-d319-20e960a5c755`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toZMod_spec : x - (toZMod x : ℤ_[p]) ∈ maximalIdeal ℤ_[p] := by
  convert sub_zmodRepr_mem x using 2
  dsimp [toZMod, toZModHom]
  rcases exists_eq_add_of_lt hp_prime.1.pos with ⟨p', rfl⟩
  change ↑((_ : ZMod (0 + p' + 1)).val) = (_ : ℤ_[0 + p' + 1])
  simp only [ZMod.val_nat_cast, add_zero, add_def, Nat.cast_inj, zero_add]
  apply mod_eq_of_lt
  simpa only [zero_add] using zmodRepr_lt_p x
#align padic_int.to_zmod_spec PadicInt.toZMod_spec

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/RingHoms/Variant93ea17f628b2bc8e4af8ff25ec38e5d140824d949b6346ad4638181abd961dcf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/RingHoms/Variant93ea17f628b2bc8e4af8ff25ec38e5d140824d949b6346ad4638181abd961dcf.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e8c5bffb7d64576fd64ffe8636ca79f37af2dbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
