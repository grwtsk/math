# HasProd.prodMk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "06085734f73fdfbc85c22b70b2d812d357153a11",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 66,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c8/c8e55ecd2474554b61ceb5f3bface452b5c4a09d3e041b83dfc1b1eda41f08e7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8be68350-de14-d01f-1e21-25fdb1f315d8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1d0b8aba-431b-f97d-81ab-cb6d31ba147c",
  "kind": "theorem",
  "lexical_name": "HasProd.prodMk",
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
  "slug": "hasprod-prodmk--b46a1372aff16e70c587a3ec",
  "source": {
    "blob": "06085734f73fdfbc85c22b70b2d812d357153a11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 66,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Constructions/Variantc8e55ecd2474554b61ceb5f3bface452b5c4a09d3e041b83dfc1b1eda41f08e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b46a1372aff16e70c587a3ece1ad331432064fedf1b4e368547e9b76a661296c",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Constructions/Variantc8e55ecd2474554b61ceb5f3bface452b5c4a09d3e041b83dfc1b1eda41f08e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d0b8aba-431b-f97d-81ab-cb6d31ba147c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasProd.prodMk {f : β → α} {g : β → γ} {a : α} {b : γ} (hf : HasProd f a)
    (hg : HasProd g b) : HasProd (fun x ↦ (⟨f x, g x⟩ : α × γ)) ⟨a, b⟩ := by
  simp [HasProd, ← prod_mk_prod, Filter.Tendsto.prodMk_nhds hf hg]

@[deprecated (since := "2025-03-10")]
alias HasSum.prod_mk := HasSum.prodMk

@[to_additive existing HasSum.prodMk, deprecated (since := "2025-03-10")]
alias HasProd.prod_mk := HasProd.prodMk

end ProdCodomain

section ContinuousMul

variable [CommMonoid α] [TopologicalSpace α] [ContinuousMul α]

section Sum

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Constructions/Variantc8e55ecd2474554b61ceb5f3bface452b5c4a09d3e041b83dfc1b1eda41f08e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Constructions/Variantc8e55ecd2474554b61ceb5f3bface452b5c4a09d3e041b83dfc1b1eda41f08e7.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06085734f73fdfbc85c22b70b2d812d357153a11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
