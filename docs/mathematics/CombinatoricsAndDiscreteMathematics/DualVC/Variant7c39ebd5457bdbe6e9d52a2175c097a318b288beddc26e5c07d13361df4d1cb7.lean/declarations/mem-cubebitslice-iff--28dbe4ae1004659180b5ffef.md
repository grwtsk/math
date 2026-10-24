# mem_cubeBitSlice_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "992efd1ac04c80385259834277af1258b9cb235b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 100,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7c39ebd5457bdbe6e9d52a2175c097a318b288beddc26e5c07d13361df4d1cb7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dbb004b5-ed69-d3f5-adad-24d6ca255bd0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:48c823cf-d2e4-3117-748a-69cc849f8ba4",
  "kind": "lemma",
  "lexical_name": "mem_cubeBitSlice_iff",
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
  "slug": "mem-cubebitslice-iff--28dbe4ae1004659180b5ffef",
  "source": {
    "blob": "992efd1ac04c80385259834277af1258b9cb235b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 100,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DualVC/Variant7c39ebd5457bdbe6e9d52a2175c097a318b288beddc26e5c07d13361df4d1cb7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28dbe4ae1004659180b5ffefb85e8988cebd8b3b1b824f72a020ecb0c8c774cf",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DualVC/Variant7c39ebd5457bdbe6e9d52a2175c097a318b288beddc26e5c07d13361df4d1cb7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48c823cf-d2e4-3117-748a-69cc849f8ba4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma mem_cubeBitSlice_iff {n : ℕ} {S : Finset (Finset α)}
    (cube : (Fin n → Bool) ↪ ↥S) (b : Fin n → Bool) (k : Fin n) :
    (cube b).val ∈ cubeBitSlice cube k ↔ b k = true := by
  simp only [cubeBitSlice, mem_image, mem_filter, mem_univ, true_and]
  refine ⟨fun ⟨b', hb'k, hb'eq⟩ ↦ ?_, fun hk ↦ ⟨b, hk, rfl⟩⟩
  rwa [cube.injective (Subtype.ext hb'eq)] at hb'k

/-- **Bitstring coding (Assouad 1983, Theorem 2.13).** If `𝒜.dualFamily X`
shatters a subfamily `S` of size at least `2 ^ n`, then `𝒜` shatters
some `n`-element subset of `X`.

This is the combinatorial side of the dual VC bound: embed the `2 ^ n`
bit-patterns of length `n` into `S`; for each coordinate, shattering
provides a ground-set element distinguishing the patterns with that bit set;
these `n` elements are then shattered by `𝒜`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DualVC/Variant7c39ebd5457bdbe6e9d52a2175c097a318b288beddc26e5c07d13361df4d1cb7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DualVC/Variant7c39ebd5457bdbe6e9d52a2175c097a318b288beddc26e5c07d13361df4d1cb7.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `992efd1ac04c80385259834277af1258b9cb235b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
