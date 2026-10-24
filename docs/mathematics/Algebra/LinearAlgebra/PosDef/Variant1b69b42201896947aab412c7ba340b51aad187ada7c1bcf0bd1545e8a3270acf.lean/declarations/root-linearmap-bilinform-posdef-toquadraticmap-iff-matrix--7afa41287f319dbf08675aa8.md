# _root_.LinearMap.BilinForm.posDef_toQuadraticMap_iff_matrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d85277376a28a5c2265aad6e21472b1fec73185a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 512,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1b/1b69b42201896947aab412c7ba340b51aad187ada7c1bcf0bd1545e8a3270acf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e34ee031-b736-c442-014a-fb49339148a8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3a60ad79-47a7-96d3-9023-7b76a828f53c",
  "kind": "theorem",
  "lexical_name": "_root_.LinearMap.BilinForm.posDef_toQuadraticMap_iff_matrix",
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
  "slug": "root-linearmap-bilinform-posdef-toquadraticmap-iff-matrix--7afa41287f319dbf08675aa8",
  "source": {
    "blob": "d85277376a28a5c2265aad6e21472b1fec73185a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 526,
    "line": 512,
    "path": "GRWTSK/Algebra/LinearAlgebra/PosDef/Variant1b69b42201896947aab412c7ba340b51aad187ada7c1bcf0bd1545e8a3270acf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7afa41287f319dbf08675aa828a1cf1d68244feee7ba9631a3b3f9dd7e7c2469",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PosDef/Variant1b69b42201896947aab412c7ba340b51aad187ada7c1bcf0bd1545e8a3270acf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a60ad79-47a7-96d3-9023-7b76a828f53c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 512–526.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.LinearMap.BilinForm.posDef_toQuadraticMap_iff_matrix
    {R M : Type*} [CommRing R] [PartialOrder R] [StarRing R] [TrivialStar R]
    [AddCommGroup M] [Module R M] [DecidableEq n]
    (b : Module.Basis n R M) (B : LinearMap.BilinForm R M) (hB_symm : B.IsSymm) :
    B.toQuadraticMap.PosDef ↔ (B.toMatrix b).PosDef := by
  have aux (i j : n) (s t : R) : t * B (b i) (b j) * s = t * (s * B (b j) (b i)) := by
    grind [hB_symm.eq (b i) (b j)]
  refine ⟨fun h ↦ ⟨?_, fun v hv ↦ ?_⟩, fun h v hv ↦ ?_⟩
  · simp [isHermitian_iff_isSymm, IsSymm.ext_iff, hB_symm.eq (b _) (b _)]
  · simpa [Finsupp.linearCombination_apply, map_finsuppSum, Finsupp.mul_sum, ← aux] using
      h _ (b.repr.symm.map_ne_zero_iff.mpr hv)
  · rw [B.toQuadraticMap_apply, ← b.linearCombination_repr (x := v)]
    simpa [Finsupp.linearCombination_apply, map_finsuppSum, Finsupp.mul_sum, aux]
      using h.2 (b.repr.map_ne_zero_iff.mpr hv)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PosDef/Variant1b69b42201896947aab412c7ba340b51aad187ada7c1bcf0bd1545e8a3270acf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PosDef/Variant1b69b42201896947aab412c7ba340b51aad187ada7c1bcf0bd1545e8a3270acf.lean#L512).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d85277376a28a5c2265aad6e21472b1fec73185a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
