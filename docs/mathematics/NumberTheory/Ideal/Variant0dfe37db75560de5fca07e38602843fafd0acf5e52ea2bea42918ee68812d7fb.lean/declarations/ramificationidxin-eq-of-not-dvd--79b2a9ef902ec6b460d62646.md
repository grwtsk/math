# ramificationIdxIn_eq_of_not_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "61401778d0496dae7af4e4d64dc98a9e9c41ef4f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 336,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0dfe37db75560de5fca07e38602843fafd0acf5e52ea2bea42918ee68812d7fb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:25c714df-4cd3-5de0-efe3-02fbd14d77c8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a2087ebe-29a0-183b-afdc-25d6eeecd5fe",
  "kind": "theorem",
  "lexical_name": "ramificationIdxIn_eq_of_not_dvd",
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
  "slug": "ramificationidxin-eq-of-not-dvd--79b2a9ef902ec6b460d62646",
  "source": {
    "blob": "61401778d0496dae7af4e4d64dc98a9e9c41ef4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 336,
    "path": "GRWTSK/NumberTheory/Ideal/Variant0dfe37db75560de5fca07e38602843fafd0acf5e52ea2bea42918ee68812d7fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79b2a9ef902ec6b460d626468b3b1606bf23969fd25f54197feab0890120056c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Ideal/Variant0dfe37db75560de5fca07e38602843fafd0acf5e52ea2bea42918ee68812d7fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2087ebe-29a0-183b-afdc-25d6eeecd5fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 336–348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ramificationIdxIn_eq_of_not_dvd (hm : ¬ p ∣ m) :
    𝒑.ramificationIdxIn (𝓞 K) = 1 := by
  have : IsGalois ℚ K := isGalois {m} ℚ K
  obtain ⟨⟨P, _, _⟩⟩ := 𝒑.nonempty_primesOver (S := 𝓞 K)
  rw [ramificationIdxIn_eq_ramificationIdx 𝒑 P Gal(K/ℚ), ramificationIdx_eq_of_not_dvd p K P hm]

end notDvd

section general

variable {m p k} [IsCyclotomicExtension {n} ℚ K]

open IntermediateField in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Ideal/Variant0dfe37db75560de5fca07e38602843fafd0acf5e52ea2bea42918ee68812d7fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Ideal/Variant0dfe37db75560de5fca07e38602843fafd0acf5e52ea2bea42918ee68812d7fb.lean#L336).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61401778d0496dae7af4e4d64dc98a9e9c41ef4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
