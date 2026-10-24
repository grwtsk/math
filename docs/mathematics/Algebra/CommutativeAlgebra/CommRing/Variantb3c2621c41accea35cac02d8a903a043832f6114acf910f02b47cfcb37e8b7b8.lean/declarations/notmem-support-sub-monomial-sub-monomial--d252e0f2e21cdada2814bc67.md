# notMem_support_sub_monomial_sub_monomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b79c7051cb9d53af7bf276e38d4d4cd339857d8a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 85,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b3/b3c2621c41accea35cac02d8a903a043832f6114acf910f02b47cfcb37e8b7b8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f390a59e-3d5c-2581-dc87-396c6b5ce087",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a3f9bd9d-773b-5285-1317-fc0a5d9bd320",
  "kind": "theorem",
  "lexical_name": "notMem_support_sub_monomial_sub_monomial",
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
  "slug": "notmem-support-sub-monomial-sub-monomial--d252e0f2e21cdada2814bc67",
  "source": {
    "blob": "b79c7051cb9d53af7bf276e38d4d4cd339857d8a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 85,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/CommRing/Variantb3c2621c41accea35cac02d8a903a043832f6114acf910f02b47cfcb37e8b7b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d252e0f2e21cdada2814bc6709679edcb5f092f891084ca258aeb0a9aea11c1f",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/CommRing/Variantb3c2621c41accea35cac02d8a903a043832f6114acf910f02b47cfcb37e8b7b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3f9bd9d-773b-5285-1317-fc0a5d9bd320`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem notMem_support_sub_monomial_sub_monomial (d d' : σ →₀ ℕ) (c : R)
    (hdd' : d ≠ d') (hc : p.coeff d = c) :
    d ∉ (p - (monomial d c - monomial d' c)).support := by
  classical
  rw [notMem_support_iff, coeff_sub, coeff_sub, coeff_monomial, coeff_monomial,
    ite_eq_left rfl, ite_eq_right hdd'.symm, sub_zero, hc, sub_self]

/-- Subtracting `monomial d c - monomial d' c` from `p`, where `c = coeff d p` and `d ≠ d'`,
leaves the support inside `p.support.erase d ∪ {d'}`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/CommRing/Variantb3c2621c41accea35cac02d8a903a043832f6114acf910f02b47cfcb37e8b7b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/CommRing/Variantb3c2621c41accea35cac02d8a903a043832f6114acf910f02b47cfcb37e8b7b8.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b79c7051cb9d53af7bf276e38d4d4cd339857d8a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
