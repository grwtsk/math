# invTransform

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5b27d5e30de734472cfc819a1e836eccc8dafab55a73106ce9dc4a1642c2dde3",
  "kind": "def",
  "lexical_name": "invTransform",
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
  "slug": "invtransform--900bd9e8ddb6c52934ec5048",
  "source": {
    "blob": "3a5faaabb7b804788d21dbfeeb5da9ab6af5faf6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 137,
    "path": "GRWTSK/NumberTheory/AmiceTransform/Variantd2d22de897e576faf9bab674737b718a9a596d65877e6249735489a570c8c5b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:900bd9e8ddb6c52934ec5048fe677f546a57cd9b56f5420d884e8c8833d8b789",
  "verification": {
    "reference": "docs/verification/NumberTheory/AmiceTransform/Variantd2d22de897e576faf9bab674737b718a9a596d65877e6249735489a570c8c5b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5b27d5e30de734472cfc819a1e836eccc8dafab55a73106ce9dc4a1642c2dde3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def invTransform (F : ℤ_[p]⟦X⟧) : D(ℤ_[p], ℤ_[p]) :=
  AbstractMeasure.toCLMEquiv.symm <| (invTransformₗ F).mkContinuous 1 <| by
    intro f
    apply IsUltrametricDist.norm_tsum_le_of_forall_le
    intro i
    grw [norm_mul, (F.coeff i).norm_le_one, mul_one, one_mul, ← ge_iff_le]
    calc ‖f‖ = ‖PadicInt.mahlerEquiv ℤ_[p] f‖ := by rw [← (PadicInt.mahlerEquiv ℤ_[p]).norm_map]
      _ = ‖(PadicInt.mahlerEquiv ℤ_[p] f).toBCF‖ := by
        rw [← ZeroAtInftyContinuousMap.norm_toBCF_eq_norm]
      _ ≥ _ := BoundedContinuousFunction.norm_coe_le_norm ..

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/AmiceTransform/Variantd2d22de897e576faf9bab674737b718a9a596d65877e6249735489a570c8c5b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AmiceTransform/Variantd2d22de897e576faf9bab674737b718a9a596d65877e6249735489a570c8c5b7.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a5faaabb7b804788d21dbfeeb5da9ab6af5faf6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
