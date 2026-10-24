# dlookup_append

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
      "line": 316,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1a/1a8e95cf64b47a1ac680ab3adcd5a32e889be98b9b6edcba8e03f496c8cbce10.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6683b207-415e-d0ba-f412-5d83e7e82975",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9586eb8e-03d5-dfdd-26f5-fc526e3726cb",
  "kind": "theorem",
  "lexical_name": "dlookup_append",
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
  "slug": "dlookup-append--75aff7029bea83ab586393c1",
  "source": {
    "blob": "e178af735009ba0e14a550bc67d8fba8774fb148",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 316,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sigma/Variant1a8e95cf64b47a1ac680ab3adcd5a32e889be98b9b6edcba8e03f496c8cbce10.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75aff7029bea83ab586393c14fa0a2674688e03684c74c6d3db2f359d8ace92a",
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

Occurrence: `result:9586eb8e-03d5-dfdd-26f5-fc526e3726cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 316–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dlookup_append (l₁ l₂ : List (Sigma β)) (a : α) :
    (l₁ ++ l₂).dlookup a = (l₁.dlookup a).or (l₂.dlookup a) := by
  induction l₁ with
  | nil => rfl
  | cons x l₁ IH =>
    rw [cons_append]
    obtain rfl | hb := Decidable.eq_or_ne a x.1
    · rw [dlookup_cons_eq, dlookup_cons_eq, Option.or]
    · rw [dlookup_cons_ne _ _ hb, dlookup_cons_ne _ _ hb, IH]

/-! ### `kreplace` -/


/-- Replaces the first value with key `a` by `b`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sigma/Variant1a8e95cf64b47a1ac680ab3adcd5a32e889be98b9b6edcba8e03f496c8cbce10.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sigma/Variant1a8e95cf64b47a1ac680ab3adcd5a32e889be98b9b6edcba8e03f496c8cbce10.lean#L316).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e178af735009ba0e14a550bc67d8fba8774fb148` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
