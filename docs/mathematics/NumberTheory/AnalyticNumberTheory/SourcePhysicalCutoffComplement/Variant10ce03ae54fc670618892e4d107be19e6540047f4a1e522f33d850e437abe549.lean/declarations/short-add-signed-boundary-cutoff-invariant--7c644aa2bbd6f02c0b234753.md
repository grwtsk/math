# short_add_signed_boundary_cutoff_invariant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "641bb64c045774eb1f82262a5b27329e1c44fe81",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 95,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/10/10ce03ae54fc670618892e4d107be19e6540047f4a1e522f33d850e437abe549.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b372062f-902e-491a-e47a-7cc82de96c34",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a40e6ab0-6e2a-5529-cebf-3358392bff31",
  "kind": "theorem",
  "lexical_name": "short_add_signed_boundary_cutoff_invariant",
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
  "slug": "short-add-signed-boundary-cutoff-invariant--7c644aa2bbd6f02c0b234753",
  "source": {
    "blob": "641bb64c045774eb1f82262a5b27329e1c44fe81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 95,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourcePhysicalCutoffComplement/Variant10ce03ae54fc670618892e4d107be19e6540047f4a1e522f33d850e437abe549.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c644aa2bbd6f02c0b23475392fc2788c9953afafa57f65f11e5b077187bb048",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourcePhysicalCutoffComplement/Variant10ce03ae54fc670618892e4d107be19e6540047f4a1e522f33d850e437abe549.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a40e6ab0-6e2a-5529-cebf-3358392bff31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem short_add_signed_boundary_cutoff_invariant (A : ℝ) (hA : 1 ≤ A)
    (U V : ℕ) (hU : 1 ≤ U) (hV : 1 ≤ V) :
    (∑ m ∈ Finset.Icc 1 U, vonMangoldt m * sourcePlainWeight A (m : ℝ)) +
      (∑ d ∈ Finset.Icc 1 U, realMoebius d *
        (shortColumnPlainRowsAt A d U - quotientStripRowsAt A d U)) =
    (∑ m ∈ Finset.Icc 1 V, vonMangoldt m * sourcePlainWeight A (m : ℝ)) +
      (∑ d ∈ Finset.Icc 1 V, realMoebius d *
        (shortColumnPlainRowsAt A d V - quotientStripRowsAt A d V)) := by
  rw [short_add_signed_boundary_eq_mertensResidual A hA U hU,
    short_add_signed_boundary_eq_mertensResidual A hA V hV]

/-- Beyond the closed support cutoff, the complete signed physical boundary vanishes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourcePhysicalCutoffComplement/Variant10ce03ae54fc670618892e4d107be19e6540047f4a1e522f33d850e437abe549.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourcePhysicalCutoffComplement/Variant10ce03ae54fc670618892e4d107be19e6540047f4a1e522f33d850e437abe549.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `641bb64c045774eb1f82262a5b27329e1c44fe81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
