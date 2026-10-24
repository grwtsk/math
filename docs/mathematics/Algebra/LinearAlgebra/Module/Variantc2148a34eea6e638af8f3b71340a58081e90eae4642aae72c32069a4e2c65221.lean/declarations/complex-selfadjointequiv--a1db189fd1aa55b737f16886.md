# Complex.selfAdjointEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5f34ca589f345ae6db8a5133247f89373774ea0db2ab635cad39bc18c8dc2539",
  "kind": "def",
  "lexical_name": "Complex.selfAdjointEquiv",
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
  "slug": "complex-selfadjointequiv--a1db189fd1aa55b737f16886",
  "source": {
    "blob": "2888e10ff4f8a035a78d19ff1064404f9950fa7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 537,
    "line": 531,
    "path": "GRWTSK/Algebra/LinearAlgebra/Module/Variantc2148a34eea6e638af8f3b71340a58081e90eae4642aae72c32069a4e2c65221.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a1db189fd1aa55b737f16886afe69a1907f652921b4a87a1f34e70165594575a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Module/Variantc2148a34eea6e638af8f3b71340a58081e90eae4642aae72c32069a4e2c65221.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5f34ca589f345ae6db8a5133247f89373774ea0db2ab635cad39bc18c8dc2539`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 531–537.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Complex.selfAdjointEquiv : selfAdjoint ℂ ≃ₗ[ℝ] ℝ where
  toFun := fun z ↦ (z : ℂ).re
  invFun := fun x ↦ ⟨x, conj_ofReal x⟩
  left_inv := fun z ↦ Subtype.ext <| conj_eq_iff_re.mp z.property.star_eq
  map_add' := by simp
  map_smul' := by simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Module/Variantc2148a34eea6e638af8f3b71340a58081e90eae4642aae72c32069a4e2c65221.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Module/Variantc2148a34eea6e638af8f3b71340a58081e90eae4642aae72c32069a4e2c65221.lean#L531).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2888e10ff4f8a035a78d19ff1064404f9950fa7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
