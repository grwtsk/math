# RightOrderedNonnegative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c49ce0106ecf53bbc689c1a0b18bca4060e151a816f208af312d7c12e45481d4",
  "kind": "def",
  "lexical_name": "RightOrderedNonnegative",
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
  "slug": "rightorderednonnegative--ee5480ffb628991be3dfd886",
  "source": {
    "blob": "561e649f5b6c5854d9a8bba1047a7cd94c90b8fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 26,
    "path": "GRWTSK/Algebra/LinearAlgebra/PositiveLift/Varianta7568422408230c1ce736695e9385b4e642456f5d835b75ceea7a7e4e6761139.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ee5480ffb628991be3dfd886f6f6556acfd8f10d842854b3a331487bf4fcf465",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PositiveLift/Varianta7568422408230c1ce736695e9385b4e642456f5d835b75ceea7a7e4e6761139.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c49ce0106ecf53bbc689c1a0b18bca4060e151a816f208af312d7c12e45481d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def RightOrderedNonnegative {k N : ℕ}
    (B : Matrix (Fin N) (Fin k) ℝ) : Prop :=
  ∀ I : Fin k ↪o Fin N, 0 ≤ Matrix.det (B.submatrix I id)

/-- Rectangular Cauchy--Binet is a positive lift when both ordered-minor
families have compatible nonnegative orientation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PositiveLift/Varianta7568422408230c1ce736695e9385b4e642456f5d835b75ceea7a7e4e6761139.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PositiveLift/Varianta7568422408230c1ce736695e9385b4e642456f5d835b75ceea7a7e4e6761139.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `561e649f5b6c5854d9a8bba1047a7cd94c90b8fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
