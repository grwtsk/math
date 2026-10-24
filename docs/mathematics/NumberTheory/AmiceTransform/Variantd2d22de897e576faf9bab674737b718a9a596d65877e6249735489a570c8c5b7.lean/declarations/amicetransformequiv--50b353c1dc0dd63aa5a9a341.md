# amiceTransformEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e73cfafa49aa7f23f2b6719db499f9cf0c9311370de474c0c02797963e143173",
  "kind": "def",
  "lexical_name": "amiceTransformEquiv",
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
  "slug": "amicetransformequiv--50b353c1dc0dd63aa5a9a341",
  "source": {
    "blob": "3a5faaabb7b804788d21dbfeeb5da9ab6af5faf6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 165,
    "path": "GRWTSK/NumberTheory/AmiceTransform/Variantd2d22de897e576faf9bab674737b718a9a596d65877e6249735489a570c8c5b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:50b353c1dc0dd63aa5a9a3413bd0f72d3c6b0c543469844e9bcb0006e9b933ca",
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

Occurrence: `declaration:e73cfafa49aa7f23f2b6719db499f9cf0c9311370de474c0c02797963e143173`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def amiceTransformEquiv : D(ℤ_[p], ℤ_[p]) ≃ₗ[ℤ_[p]] ℤ_[p]⟦X⟧ where
  __ := amiceTransform
  invFun := invTransform
  right_inv := amiceTransform_invTransform
  left_inv μ := by simp [← injective_amiceTransform.eq_iff, amiceTransform_invTransform]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/AmiceTransform/Variantd2d22de897e576faf9bab674737b718a9a596d65877e6249735489a570c8c5b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AmiceTransform/Variantd2d22de897e576faf9bab674737b718a9a596d65877e6249735489a570c8c5b7.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a5faaabb7b804788d21dbfeeb5da9ab6af5faf6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
