# content_eq_gcd_leadingCoeff_content_eraseLead

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bc591b897f746325bac6c20eb86c99d71263ff84",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 203,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f0/f0b1e6af4336fe2b343871f979403b153d00d3f3a6bd83cd5b50b8d7dd7c9978.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b517e443-e5e2-5050-7207-7faca282bfcb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b70c1f83-8c41-18b6-6a96-b58845f62b54",
  "kind": "theorem",
  "lexical_name": "content_eq_gcd_leadingCoeff_content_eraseLead",
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
  "slug": "content-eq-gcd-leadingcoeff-content-eraselead--488e8c614f05826b42a149d9",
  "source": {
    "blob": "bc591b897f746325bac6c20eb86c99d71263ff84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 203,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Content/Variantf0b1e6af4336fe2b343871f979403b153d00d3f3a6bd83cd5b50b8d7dd7c9978.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:488e8c614f05826b42a149d9f7e355b7939aca62ede4171b183195f6c099cc36",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Content/Variantf0b1e6af4336fe2b343871f979403b153d00d3f3a6bd83cd5b50b8d7dd7c9978.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b70c1f83-8c41-18b6-6a96-b58845f62b54`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem content_eq_gcd_leadingCoeff_content_eraseLead (p : R[X]) :
    p.content = GCDMonoid.gcd p.leadingCoeff (eraseLead p).content := by
  by_cases h : p = 0
  · simp [h]
  rw [← leadingCoeff_eq_zero, leadingCoeff, ← Ne.def, ← mem_support_iff] at h
  rw [content, ← Finset.insert_erase h, Finset.gcd_insert, leadingCoeff, content,
    eraseLead_support]
  refine' congr rfl (Finset.gcd_congr rfl fun i hi => _)
  rw [Finset.mem_erase] at hi
  rw [eraseLead_coeff, if_neg hi.1]
#align polynomial.content_eq_gcd_leading_coeff_content_erase_lead Polynomial.content_eq_gcd_leadingCoeff_content_eraseLead

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Content/Variantf0b1e6af4336fe2b343871f979403b153d00d3f3a6bd83cd5b50b8d7dd7c9978.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Content/Variantf0b1e6af4336fe2b343871f979403b153d00d3f3a6bd83cd5b50b8d7dd7c9978.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc591b897f746325bac6c20eb86c99d71263ff84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
