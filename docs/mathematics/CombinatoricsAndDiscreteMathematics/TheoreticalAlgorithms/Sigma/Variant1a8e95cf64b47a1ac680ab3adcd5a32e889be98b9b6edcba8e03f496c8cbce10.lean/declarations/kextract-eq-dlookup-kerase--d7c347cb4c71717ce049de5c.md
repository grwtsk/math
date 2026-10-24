# kextract_eq_dlookup_kerase

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e178af735009ba0e14a550bc67d8fba8774fb148",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 580,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1a/1a8e95cf64b47a1ac680ab3adcd5a32e889be98b9b6edcba8e03f496c8cbce10.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:08dd9359-ad85-ea5f-06bb-d705ce749fc7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:908a5ad5-7a02-fd18-1e6d-516cb13e90e3",
  "kind": "theorem",
  "lexical_name": "kextract_eq_dlookup_kerase",
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
  "slug": "kextract-eq-dlookup-kerase--d7c347cb4c71717ce049de5c",
  "source": {
    "blob": "e178af735009ba0e14a550bc67d8fba8774fb148",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 592,
    "line": 580,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sigma/Variant1a8e95cf64b47a1ac680ab3adcd5a32e889be98b9b6edcba8e03f496c8cbce10.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7c347cb4c71717ce049de5c6929992318287bc110c3b961c99bd519b6d1ef50",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sigma/Variant1a8e95cf64b47a1ac680ab3adcd5a32e889be98b9b6edcba8e03f496c8cbce10.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:908a5ad5-7a02-fd18-1e6d-516cb13e90e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 580–592.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem kextract_eq_dlookup_kerase (a : α) :
    ∀ l : List (Sigma β), kextract a l = (dlookup a l, kerase a l)
  | [] => rfl
  | ⟨a', b⟩ :: l => by
    simp only [kextract]; dsimp; split_ifs with h
    · subst a'
      simp [kerase]
    · simp [kextract, Ne.symm h, kextract_eq_dlookup_kerase a l, kerase]

/-! ### `dedupKeys` -/


/-- Remove entries with duplicate keys from `l : List (Sigma β)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sigma/Variant1a8e95cf64b47a1ac680ab3adcd5a32e889be98b9b6edcba8e03f496c8cbce10.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sigma/Variant1a8e95cf64b47a1ac680ab3adcd5a32e889be98b9b6edcba8e03f496c8cbce10.lean#L580).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e178af735009ba0e14a550bc67d8fba8774fb148` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
