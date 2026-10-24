# find?_flatten_eq_some_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:df1a454d-23b6-eb20-1e1c-30b7015f49af",
  "kind": "theorem",
  "lexical_name": "find?_flatten_eq_some_iff",
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
  "slug": "find-flatten-eq-some-iff--819e2176bfd254192a159068",
  "source": {
    "blob": "da3e7cd62ee7298d6fa5c0523884fb122ea0717d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 311,
    "line": 292,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant15c89330a62034e6c54afd8a1b64dc2f266defde012657d7cf38934277ab619a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:819e2176bfd254192a15906891c50ff04c6982ad93fad66f7df45b76e0ebbc37",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant15c89330a62034e6c54afd8a1b64dc2f266defde012657d7cf38934277ab619a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df1a454d-23b6-eb20-1e1c-30b7015f49af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–311.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem find?_flatten_eq_some_iff {xss : Array (Array α)} {p : α → Bool} {a : α} :
    xss.flatten.find? p = some a ↔
      p a ∧ ∃ (as : Array (Array α)) (ys zs : Array α) (bs : Array (Array α)),
        xss = as.push (ys.push a ++ zs) ++ bs ∧
        (∀ ws ∈ as, ∀ x ∈ ws, !p x) ∧ (∀ x ∈ ys, !p x) := by
  cases xss using array₂_induction
  simp only [flatten_toArray_map_toArray, List.find?_toArray, List.find?_flatten_eq_some_iff]
  simp only [Bool.not_eq_eq_eq_not, Bool.not_true, exists_and_right, and_congr_right_iff]
  intro w
  constructor
  · rintro ⟨as, ys, ⟨⟨zs, bs, rfl⟩, h₁, h₂⟩⟩
    exact ⟨as.toArray.map List.toArray, ys.toArray,
      ⟨zs.toArray, bs.toArray.map List.toArray, by simp⟩, by simpa using h₁, by simpa using h₂⟩
  · rintro ⟨as, ys, ⟨⟨zs, bs, h⟩, h₁, h₂⟩⟩
    replace h := congrArg (·.map Array.toList) (congrArg Array.toList h)
    simp [Function.comp_def] at h
    exact ⟨as.toList.map Array.toList, ys.toList,
      ⟨zs.toList, bs.toList.map Array.toList, by simpa using h⟩,
        by simpa using h₁, by simpa using h₂⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant15c89330a62034e6c54afd8a1b64dc2f266defde012657d7cf38934277ab619a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant15c89330a62034e6c54afd8a1b64dc2f266defde012657d7cf38934277ab619a.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da3e7cd62ee7298d6fa5c0523884fb122ea0717d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
