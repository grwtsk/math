# _root_.GRWTSK.Algebra.LinearAlgebra.MatrixToLinearMapPrimeAux.Variant4c452b093c7e19028193ada213285306e845722af63737490768deae87e48658.Matrix.separatingLeft_toLinearMap₂_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d748690-1145-82c7-bc17-36abdb0e0a4c",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.MatrixToLinearMapPrimeAux.Variant4c452b093c7e19028193ada213285306e845722af63737490768deae87e48658.Matrix.separatingLeft_toLinearMap₂_iff",
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
  "slug": "root-grwtsk-algebra-linearalgebra-matrixtolinearmapprimeaux-variant4c452--c31de8d8cef6f1725f78a800",
  "source": {
    "blob": "42bae6dc806fc117d684dd10ca0235f0250a36f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 769,
    "line": 764,
    "path": "GRWTSK/Algebra/LinearAlgebra/SesquilinearForm/Variant1146797e26d0e4ae21d16f955fda0e1f0ac99fecb09368f1b12faa093536a1d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c31de8d8cef6f1725f78a800f612d85969c1f6920b3bca74662523085026f7a8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SesquilinearForm/Variant1146797e26d0e4ae21d16f955fda0e1f0ac99fecb09368f1b12faa093536a1d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d748690-1145-82c7-bc17-36abdb0e0a4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 764–769.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.LinearAlgebra.MatrixToLinearMapPrimeAux.Variant4c452b093c7e19028193ada213285306e845722af63737490768deae87e48658.Matrix.separatingLeft_toLinearMap₂_iff :
    (toLinearMap₂ b₁ b₂ M).SeparatingLeft ↔ M.SeparatingLeft := by
  rw [← separatingLeft_toLinearMap₂'_iff_separatingLeft_toLinearMap₂,
    separatingLeft_toLinearMap₂'_iff]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SesquilinearForm/Variant1146797e26d0e4ae21d16f955fda0e1f0ac99fecb09368f1b12faa093536a1d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SesquilinearForm/Variant1146797e26d0e4ae21d16f955fda0e1f0ac99fecb09368f1b12faa093536a1d2.lean#L764).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42bae6dc806fc117d684dd10ca0235f0250a36f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
