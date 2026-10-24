# jacobiSum_eq_gaussSum_mul_gaussSum_div_gaussSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6b2c5a59f4c30ec3302b7391a511ca2b0aa1255e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 189,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1d/1dccafd6c96146a73c0f929cef5c7c787d80363df6f6ed274a7ac52c959c6946.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3dee3d70-15af-6bff-642e-0d522ff537eb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bb8f5ac4-34c3-003e-4572-aa58a0855d8a",
  "kind": "theorem",
  "lexical_name": "jacobiSum_eq_gaussSum_mul_gaussSum_div_gaussSum",
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
  "slug": "jacobisum-eq-gausssum-mul-gausssum-div-gausssum--7a98df636792ca03642d9966",
  "source": {
    "blob": "6b2c5a59f4c30ec3302b7391a511ca2b0aa1255e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 189,
    "path": "GRWTSK/NumberTheory/Basic/Variant1dccafd6c96146a73c0f929cef5c7c787d80363df6f6ed274a7ac52c959c6946.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a98df636792ca03642d996688029f2627387f68cfa75715b6312e187f91d6af",
  "verification": {
    "reference": "docs/verification/NumberTheory/Basic/Variant1dccafd6c96146a73c0f929cef5c7c787d80363df6f6ed274a7ac52c959c6946.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb8f5ac4-34c3-003e-4572-aa58a0855d8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jacobiSum_eq_gaussSum_mul_gaussSum_div_gaussSum (h : (Fintype.card F : F') ≠ 0)
    {χ φ : MulChar F F'} (hχφ : χ * φ ≠ 1) {ψ : AddChar F F'} (hψ : ψ.IsPrimitive) :
    jacobiSum χ φ = gaussSum χ ψ * gaussSum φ ψ / gaussSum (χ * φ) ψ := by
  rw [eq_div_iff <| gaussSum_ne_zero_of_nontrivial h hχφ hψ, mul_comm]
  exact jacobiSum_mul_nontrivial hχφ ψ

open AddChar MulChar in
/-- If `χ` and `φ` are multiplicative characters on a finite field `F` with values in another
field `F'` such that `χ`, `φ` and `χφ` are all nontrivial and `char F' ≠ char F`, then
`J(χ,φ) * J(χ⁻¹,φ⁻¹) = #F` (in `F'`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Basic/Variant1dccafd6c96146a73c0f929cef5c7c787d80363df6f6ed274a7ac52c959c6946.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Basic/Variant1dccafd6c96146a73c0f929cef5c7c787d80363df6f6ed274a7ac52c959c6946.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b2c5a59f4c30ec3302b7391a511ca2b0aa1255e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
