# toBlock_inverse_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "44ac81479012621f8c9392f74d4b4b77ff43dc22",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 286,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bb/bb3720d77b0d5481fb56d09390a2fb552884fd28ef315d4f4270494d79a43afe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a58be8a0-a1cd-54e1-8dfd-5884a04fdc83",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ab74c4bd-e4bc-5a6a-1772-7ddef23254fd",
  "kind": "theorem",
  "lexical_name": "toBlock_inverse_eq_zero",
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
  "slug": "toblock-inverse-eq-zero--042b176edb7f802e1b17d000",
  "source": {
    "blob": "44ac81479012621f8c9392f74d4b4b77ff43dc22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 286,
    "path": "GRWTSK/Algebra/LinearAlgebra/Block/Variantbb3720d77b0d5481fb56d09390a2fb552884fd28ef315d4f4270494d79a43afe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:042b176edb7f802e1b17d000274d304902bfcf8116add6fc883660a35b2e86b3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Block/Variantbb3720d77b0d5481fb56d09390a2fb552884fd28ef315d4f4270494d79a43afe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab74c4bd-e4bc-5a6a-1772-7ddef23254fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 286–306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toBlock_inverse_eq_zero [LinearOrder α] [Invertible M] (hM : BlockTriangular M b) (k : α) :
    (M⁻¹.toBlock (fun i => k ≤ b i) fun i => b i < k) = 0 := by
  let p i := b i < k
  let q i := ¬b i < k
  have h_sum : M⁻¹.toBlock q p * M.toBlock p p + M⁻¹.toBlock q q * M.toBlock q p = 0 := by
    rw [← toBlock_mul_eq_add, inv_mul_of_invertible M, toBlock_one_disjoint]
    rw [disjoint_iff_inf_le]
    exact fun i h => h.1 h.2
  have h_zero : M.toBlock q p = 0 := by
    ext i j
    simpa using hM (lt_of_lt_of_le j.2 <| le_of_not_lt i.2)
  have h_mul_eq_zero : M⁻¹.toBlock q p * M.toBlock p p = 0 := by simpa [h_zero] using h_sum
  haveI : Invertible (M.toBlock p p) := hM.invertibleToBlock k
  have : (fun i => k ≤ b i) = q := by
    ext
    exact not_lt.symm
  rw [this, ← Matrix.zero_mul (M.toBlock p p)⁻¹, ← h_mul_eq_zero,
    mul_inv_cancel_right_of_invertible]
#align matrix.to_block_inverse_eq_zero Matrix.toBlock_inverse_eq_zero

/-- The inverse of a block-triangular matrix is block-triangular. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Block/Variantbb3720d77b0d5481fb56d09390a2fb552884fd28ef315d4f4270494d79a43afe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Block/Variantbb3720d77b0d5481fb56d09390a2fb552884fd28ef315d4f4270494d79a43afe.lean#L286).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44ac81479012621f8c9392f74d4b4b77ff43dc22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
