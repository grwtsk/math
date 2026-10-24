# reduced_isHermitian

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e150dbb-5a8e-78e8-0a53-4950e3d64f64",
  "kind": "theorem",
  "lexical_name": "reduced_isHermitian",
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
  "slug": "reduced-ishermitian--d85713de17f896535ff78893",
  "source": {
    "blob": "c60391766a1de3af7e7fcf2182826acd8c2ae968",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 43,
    "path": "GRWTSK/Algebra/LinearAlgebra/SchurZeroDraft/Variant1e08dcbdc5e6a65ac3c730b821eae6334a7f7f8bb6d916418b5db2d4cf480d9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d85713de17f896535ff78893020116843607b8c89a6a1e90face0cc02aa01095",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SchurZeroDraft/Variant1e08dcbdc5e6a65ac3c730b821eae6334a7f7f8bb6d916418b5db2d4cf480d9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e150dbb-5a8e-78e8-0a53-4950e3d64f64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reduced_isHermitian (A : Matrix m m ℂ) (C : Matrix n m ℂ) (B : Matrix n n ℂ)
    [Invertible B] (hA : A.IsHermitian) (hB : B.IsHermitian) :
    (fromBlocks (Feshbach.schur A Cᴴ C B) (0 : Matrix m n ℂ) (0 : Matrix n m ℂ) B).IsHermitian := by
  have hF := (FeshbachHermitian.isHermitian_iff A C B hB).mp (full_isHermitian A C B hA hB)
  exact hF.fromBlocks (by simp) hB

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SchurZeroDraft/Variant1e08dcbdc5e6a65ac3c730b821eae6334a7f7f8bb6d916418b5db2d4cf480d9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SchurZeroDraft/Variant1e08dcbdc5e6a65ac3c730b821eae6334a7f7f8bb6d916418b5db2d4cf480d9e.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c60391766a1de3af7e7fcf2182826acd8c2ae968` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
