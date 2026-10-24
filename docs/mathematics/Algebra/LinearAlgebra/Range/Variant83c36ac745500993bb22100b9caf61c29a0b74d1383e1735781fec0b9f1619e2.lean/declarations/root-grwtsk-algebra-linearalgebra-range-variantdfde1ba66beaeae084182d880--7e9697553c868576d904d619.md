# _root_.GRWTSK.Algebra.LinearAlgebra.Range.Variantdfde1ba66beaeae084182d880e917e1a3969a487208ac1eda5088e2204ae7b9f.Submodule.map_comap_eq_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:39416d15-b793-0e2f-0458-40a9b91b1982",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.Range.Variantdfde1ba66beaeae084182d880e917e1a3969a487208ac1eda5088e2204ae7b9f.Submodule.map_comap_eq_self",
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
  "slug": "root-grwtsk-algebra-linearalgebra-range-variantdfde1ba66beaeae084182d880--7e9697553c868576d904d619",
  "source": {
    "blob": "edacd255fc4f091227e0b8beace7baead20dcae0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 184,
    "path": "GRWTSK/Algebra/LinearAlgebra/Range/Variant83c36ac745500993bb22100b9caf61c29a0b74d1383e1735781fec0b9f1619e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e9697553c868576d904d61983f7f855684c6877192945c3ce94737546a278bd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Range/Variant83c36ac745500993bb22100b9caf61c29a0b74d1383e1735781fec0b9f1619e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39416d15-b793-0e2f-0458-40a9b91b1982`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.LinearAlgebra.Range.Variantdfde1ba66beaeae084182d880e917e1a3969a487208ac1eda5088e2204ae7b9f.Submodule.map_comap_eq_self [RingHomSurjective τ₁₂] {f : M →ₛₗ[τ₁₂] M₂}
    {q : Submodule R₂ M₂} (h : q ≤ range f) :
    map f (comap f q) = q := by
  rwa [Submodule.map_comap_eq, inf_eq_right]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Range/Variant83c36ac745500993bb22100b9caf61c29a0b74d1383e1735781fec0b9f1619e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Range/Variant83c36ac745500993bb22100b9caf61c29a0b74d1383e1735781fec0b9f1619e2.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edacd255fc4f091227e0b8beace7baead20dcae0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
