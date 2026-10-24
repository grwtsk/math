# lexLeIntList_antisymm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7f1fb11d34de52fbbb2206f96aaf1f31fbf53079",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 702,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0f/0f63b337061893a29fadef458639557b0bc7b9c452000d269cd634a090ad9309.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:08de033b-ed24-37cb-24f2-df0e14f461a3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:24424428-35d3-6bbf-5f1e-ba02600772f0",
  "kind": "theorem",
  "lexical_name": "lexLeIntList_antisymm",
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
  "slug": "lexleintlist-antisymm--4acc7665110b69b01f13c3f4",
  "source": {
    "blob": "7f1fb11d34de52fbbb2206f96aaf1f31fbf53079",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 735,
    "line": 702,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorization/Variant0f63b337061893a29fadef458639557b0bc7b9c452000d269cd634a090ad9309.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4acc7665110b69b01f13c3f469925e0f7c7497ce8424a2c1df05656338a11428",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorization/Variant0f63b337061893a29fadef458639557b0bc7b9c452000d269cd634a090ad9309.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24424428-35d3-6bbf-5f1e-ba02600772f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 702–735.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lexLeIntList_antisymm : ∀ {xs ys : List Int},
    lexLeIntList xs ys = true →
    lexLeIntList ys xs = true →
    xs = ys
  | [], [], _, _ => rfl
  | [], _ :: _, _, h2 => by cases h2
  | _ :: _, [], h1, _ => by cases h1
  | a :: as, b :: bs, h1, h2 => by
      by_cases hab : a < b
      · have : lexLeIntList (b :: bs) (a :: as) = false := by
          have hba : ¬ b < a := by omega
          simp [lexLeIntList, hba, hab]
        rw [this] at h2
        cases h2
      · by_cases hba : b < a
        · have : lexLeIntList (a :: as) (b :: bs) = false := by
            simp [lexLeIntList, hab, hba]
          rw [this] at h1
          cases h1
        · have hcase : a = b := by omega
          have h1' : lexLeIntList as bs = true := by
            simpa [lexLeIntList, hab, hba] using h1
          have h2' : lexLeIntList bs as = true := by
            have hba' : ¬ b < a := hba
            have hab' : ¬ a < b := hab
            simpa [lexLeIntList, hcase, Int.lt_irrefl] using h2
          rw [hcase, lexLeIntList_antisymm h1' h2']

/--
A canonical representative certificate for an orbit.

Canonicality is either computed and proved or explicitly certified; the
certificate is finite and Boolean-side, and it is not analytic authority.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorization/Variant0f63b337061893a29fadef458639557b0bc7b9c452000d269cd634a090ad9309.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorization/Variant0f63b337061893a29fadef458639557b0bc7b9c452000d269cd634a090ad9309.lean#L702).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f1fb11d34de52fbbb2206f96aaf1f31fbf53079` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
