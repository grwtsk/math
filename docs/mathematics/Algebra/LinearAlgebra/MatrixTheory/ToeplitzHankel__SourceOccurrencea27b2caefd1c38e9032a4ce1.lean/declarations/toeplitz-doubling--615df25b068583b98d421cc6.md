# toeplitz_doubling

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2fd03220-d6c4-4e79-02f5-0e98932be2b2",
  "kind": "theorem",
  "lexical_name": "toeplitz_doubling",
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
  "slug": "toeplitz-doubling--615df25b068583b98d421cc6",
  "source": {
    "blob": "34b83ba36bdd11d4052f123b8f60a8e986d92d11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 53,
    "path": "GRWTSK/LinearAlgebra/Matrix/ToeplitzHankel.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:615df25b068583b98d421cc649c540f0f214addbb28b12b76961b52aac336e39",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixTheory/ToeplitzHankel__SourceOccurrencea27b2caefd1c38e9032a4ce1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2fd03220-d6c4-4e79-02f5-0e98932be2b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toeplitz_doubling [Zero K] (c : ℕ → K) (n : ℕ) :
    (toeplitz c (2*n)).submatrix (joinIndex n) (joinIndex n) =
      Matrix.fromBlocks (toeplitz c n) 0 (crossBlock c n) (toeplitz c n) := by
  ext i j
  rcases i with i | i <;> rcases j with j | j
  · rfl
  · have h : ¬ n+j.val ≤ i.val := by omega
    simp [toeplitz, joinIndex, Matrix.fromBlocks, h]
  · have h : j.val ≤ n+i.val := by omega
    simp [toeplitz, joinIndex, crossBlock, Matrix.fromBlocks, h]
  · have h : n+j.val ≤ n+i.val ↔ j.val ≤ i.val := by omega
    have he : n+i.val-(n+j.val) = i.val-j.val := by omega
    simp [toeplitz, joinIndex, Matrix.fromBlocks, h, he]

section Ring
variable [Ring K]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixTheory/ToeplitzHankel__SourceOccurrencea27b2caefd1c38e9032a4ce1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/LinearAlgebra/Matrix/ToeplitzHankel.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34b83ba36bdd11d4052f123b8f60a8e986d92d11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
