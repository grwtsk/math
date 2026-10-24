# blockDiagonal'_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f90817cd-31a0-bb6c-bc30-27c4c293bf1e",
  "kind": "theorem",
  "lexical_name": "blockDiagonal'_apply",
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
  "slug": "blockdiagonal-apply--82f211f6e78d0d5bb5e88400",
  "source": {
    "blob": "3c1948477240a9475eecea74b06b4b485f325670",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 596,
    "line": 589,
    "path": "GRWTSK/Algebra/LinearAlgebra/Block/Variantb008adcac019a21085cdbbfb4d79835ded2a39611f14fc15dbfbc85ff7a7c7ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:82f211f6e78d0d5bb5e88400cad1b91fd254a8f3ea849716803e088b50265666",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Block/Variantb008adcac019a21085cdbbfb4d79835ded2a39611f14fc15dbfbc85ff7a7c7ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f90817cd-31a0-bb6c-bc30-27c4c293bf1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 589–596.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem blockDiagonal'_apply (M : ∀ i, Matrix (m' i) (n' i) α) (ik jk) :
    blockDiagonal' M ik jk =
      if h : ik.1 = jk.1 then M ik.1 ik.2 (cast (congr_arg n' h.symm) jk.2) else 0 := by
  cases ik
  cases jk
  rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Block/Variantb008adcac019a21085cdbbfb4d79835ded2a39611f14fc15dbfbc85ff7a7c7ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Block/Variantb008adcac019a21085cdbbfb4d79835ded2a39611f14fc15dbfbc85ff7a7c7ed.lean#L589).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c1948477240a9475eecea74b06b4b485f325670` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
