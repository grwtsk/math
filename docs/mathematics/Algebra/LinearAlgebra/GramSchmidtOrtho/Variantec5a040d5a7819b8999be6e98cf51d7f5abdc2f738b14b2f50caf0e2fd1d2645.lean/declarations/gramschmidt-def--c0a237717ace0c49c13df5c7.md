# gramSchmidt_def''

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:02ba1f2a-7f52-583a-076a-1c92afbd1fe2",
  "kind": "theorem",
  "lexical_name": "gramSchmidt_def''",
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
  "slug": "gramschmidt-def--c0a237717ace0c49c13df5c7",
  "source": {
    "blob": "f03bdf8598c16efd66bf9a1cff9cce8ac1824b9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 79,
    "path": "GRWTSK/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantec5a040d5a7819b8999be6e98cf51d7f5abdc2f738b14b2f50caf0e2fd1d2645.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0a237717ace0c49c13df5c797888be27d9f256c60915890d275d38e5c5fb8fe",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantec5a040d5a7819b8999be6e98cf51d7f5abdc2f738b14b2f50caf0e2fd1d2645.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02ba1f2a-7f52-583a-076a-1c92afbd1fe2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gramSchmidt_def'' (f : ι → E) (n : ι) :
    f n = gramSchmidt 𝕜 f n + ∑ i in Iio n,
      (⟪gramSchmidt 𝕜 f i, f n⟫ / (‖gramSchmidt 𝕜 f i‖ : 𝕜) ^ 2) • gramSchmidt 𝕜 f i := by
  convert gramSchmidt_def' 𝕜 f n
  rw [orthogonalProjection_singleton, IsROrC.ofReal_pow]
#align gram_schmidt_def'' gramSchmidt_def''

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantec5a040d5a7819b8999be6e98cf51d7f5abdc2f738b14b2f50caf0e2fd1d2645.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantec5a040d5a7819b8999be6e98cf51d7f5abdc2f738b14b2f50caf0e2fd1d2645.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f03bdf8598c16efd66bf9a1cff9cce8ac1824b9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
