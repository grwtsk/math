# cardinalMk_le_sigma_polynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eef75eac83d8f86952edac058391ba056159a41e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 61,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/62/62599a9a04b4aeec02910eff488dfe6280e4d772a01abb251ebfdb48fd178eea.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:274315c3-e89a-4306-49d5-efbe80200a69",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5d81e538-291d-afa9-6460-7c1326e82999",
  "kind": "theorem",
  "lexical_name": "cardinalMk_le_sigma_polynomial",
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
  "slug": "cardinalmk-le-sigma-polynomial--b541c543b991be79fc7f81be",
  "source": {
    "blob": "eef75eac83d8f86952edac058391ba056159a41e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 61,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Cardinality/Variant62599a9a04b4aeec02910eff488dfe6280e4d772a01abb251ebfdb48fd178eea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b541c543b991be79fc7f81be8dd4f24bcd73dcc2e5c9d79a9198f9b4a3a00abe",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Cardinality/Variant62599a9a04b4aeec02910eff488dfe6280e4d772a01abb251ebfdb48fd178eea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d81e538-291d-afa9-6460-7c1326e82999`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cardinalMk_le_sigma_polynomial :
    #L ≤ #(Σ p : R[X], { x : L // x ∈ p.aroots L }) := by
  simpa only [lift_id] using lift_cardinalMk_le_sigma_polynomial R L

@[deprecated (since := "2024-11-10")]
alias cardinal_mk_le_sigma_polynomial := cardinalMk_le_sigma_polynomial

/-- The cardinality of an algebraic extension is at most the maximum of the cardinality
of the base ring or `ℵ₀`. -/
@[stacks 09GK]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Cardinality/Variant62599a9a04b4aeec02910eff488dfe6280e4d772a01abb251ebfdb48fd178eea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Cardinality/Variant62599a9a04b4aeec02910eff488dfe6280e4d772a01abb251ebfdb48fd178eea.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eef75eac83d8f86952edac058391ba056159a41e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
