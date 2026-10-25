# IsPRadical.comap_pNilradical

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d30a9c4362575777d6abe34180d3505fb3f9b6cc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 153,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dc/dc049498fbaa8382e277240fd5af58e9490cfdeba6741330b0cd59b1a27eb4ab.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:85ba987b-f8d6-1bea-df21-2a7d499c430b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e10ce78f-7419-df07-a1e3-06b6dc397514",
  "kind": "theorem",
  "lexical_name": "IsPRadical.comap_pNilradical",
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
  "slug": "ispradical-comap-pnilradical--1b212aa6c441f6627e0359a3",
  "source": {
    "blob": "d30a9c4362575777d6abe34180d3505fb3f9b6cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 153,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/IsPerfectClosure/Variantdc049498fbaa8382e277240fd5af58e9490cfdeba6741330b0cd59b1a27eb4ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b212aa6c441f6627e0359a3860b3a6f68fd39c842d9102212418eb0761a2767",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/IsPerfectClosure/Variantdc049498fbaa8382e277240fd5af58e9490cfdeba6741330b0cd59b1a27eb4ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e10ce78f-7419-df07-a1e3-06b6dc397514`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPRadical.comap_pNilradical [IsPRadical i p] :
    (pNilradical L p).comap i = pNilradical K p := by
  refine le_antisymm (fun x h ↦ mem_pNilradical.2 ?_) (fun x h ↦ ?_)
  · obtain ⟨n, h⟩ := mem_pNilradical.1 <| Ideal.mem_comap.1 h
    obtain ⟨m, h⟩ := mem_pNilradical.1 <| ker_le i p ((map_pow i x _).symm ▸ h)
    exact ⟨n + m, by rwa [pow_add, pow_mul]⟩
  simp only [Ideal.mem_comap, mem_pNilradical] at h ⊢
  obtain ⟨n, h⟩ := h
  exact ⟨n, by simpa only [map_pow, map_zero] using congr(i $h)⟩

variable (K) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/IsPerfectClosure/Variantdc049498fbaa8382e277240fd5af58e9490cfdeba6741330b0cd59b1a27eb4ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/IsPerfectClosure/Variantdc049498fbaa8382e277240fd5af58e9490cfdeba6741330b0cd59b1a27eb4ab.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d30a9c4362575777d6abe34180d3505fb3f9b6cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
