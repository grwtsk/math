# findFinIdx?_eq_some_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9067dab78972b411b755074f9c0f682b9b49a8f5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 649,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/03/035dcf1c655b1efd8ae520ef5a6af6ef2a9b0e0bbd10e5a25bceec80f2cfaf82.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:823e8734-400e-2237-1cb3-5432befa616b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:85b04ccf-2c01-86df-2c18-07f6e08bdada",
  "kind": "theorem",
  "lexical_name": "findFinIdx?_eq_some_iff",
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
  "slug": "findfinidx-eq-some-iff--7f69aa1e07e9c8a12d26deb6",
  "source": {
    "blob": "9067dab78972b411b755074f9c0f682b9b49a8f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 660,
    "line": 649,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant035dcf1c655b1efd8ae520ef5a6af6ef2a9b0e0bbd10e5a25bceec80f2cfaf82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f69aa1e07e9c8a12d26deb63cfc77f16a98897ae93fc8268a4232ac8122b8a8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant035dcf1c655b1efd8ae520ef5a6af6ef2a9b0e0bbd10e5a25bceec80f2cfaf82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85b04ccf-2c01-86df-2c18-07f6e08bdada`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 649–660.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem findFinIdx?_eq_some_iff {xs : Array α} {p : α → Bool} {i : Fin xs.size} :
    xs.findFinIdx? p = some i ↔
      p xs[i] ∧ ∀ j (hji : j < i), ¬p (xs[j]'(Nat.lt_trans hji i.2)) := by
  simp only [findFinIdx?_eq_pmap_findIdx?, Option.pmap_eq_some_iff, findIdx?_eq_some_iff_getElem,
    Bool.not_eq_true, exists_and_left, and_exists_self, Fin.getElem_fin]
  constructor
  · rintro ⟨a, ⟨h, w₁, w₂⟩, rfl⟩
    exact ⟨w₁, fun j hji => by simpa using w₂ j hji⟩
  · rintro ⟨h, w⟩
    exact ⟨i, ⟨i.2, h, fun j hji => w ⟨j, by omega⟩ hji⟩, rfl⟩

@[grind =]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant035dcf1c655b1efd8ae520ef5a6af6ef2a9b0e0bbd10e5a25bceec80f2cfaf82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant035dcf1c655b1efd8ae520ef5a6af6ef2a9b0e0bbd10e5a25bceec80f2cfaf82.lean#L649).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9067dab78972b411b755074f9c0f682b9b49a8f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
