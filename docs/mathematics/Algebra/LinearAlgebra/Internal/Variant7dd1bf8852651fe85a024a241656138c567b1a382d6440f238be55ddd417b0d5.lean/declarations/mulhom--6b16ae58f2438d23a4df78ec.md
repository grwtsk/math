# mulHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:48d422a557d8a4f5f20bbafa490be9c97477b2b0cb22d9d0ffb751185f49b88e",
  "kind": "def",
  "lexical_name": "mulHom",
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
  "slug": "mulhom--6b16ae58f2438d23a4df78ec",
  "source": {
    "blob": "f12e182084cd98129f0c79cb428c1330a2ac4f9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 149,
    "path": "GRWTSK/Algebra/LinearAlgebra/Internal/Variant7dd1bf8852651fe85a024a241656138c567b1a382d6440f238be55ddd417b0d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6b16ae58f2438d23a4df78ece0ff681ad0286a09cb2824a5920a26745c4870a9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Internal/Variant7dd1bf8852651fe85a024a241656138c567b1a382d6440f238be55ddd417b0d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:48d422a557d8a4f5f20bbafa490be9c97477b2b0cb22d9d0ffb751185f49b88e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def mulHom : (𝒜 ᵍ⊗[R] ℬ) →ₗ[R] (𝒜 ᵍ⊗[R] ℬ) →ₗ[R] (𝒜 ᵍ⊗[R] ℬ) := by
  letI fAB1 := auxEquiv R 𝒜 ℬ
  have := ((gradedMul R (𝒜 ·) (ℬ ·)).compl₁₂ fAB1.toLinearMap fAB1.toLinearMap).compr₂
    fAB1.symm.toLinearMap
  exact this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Internal/Variant7dd1bf8852651fe85a024a241656138c567b1a382d6440f238be55ddd417b0d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Internal/Variant7dd1bf8852651fe85a024a241656138c567b1a382d6440f238be55ddd417b0d5.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f12e182084cd98129f0c79cb428c1330a2ac4f9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
