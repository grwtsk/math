# Ideal.homogeneousHull_eq_iSup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6e51e945-1bf5-c22b-d884-ce1c7e69752e",
  "kind": "theorem",
  "lexical_name": "Ideal.homogeneousHull_eq_iSup",
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
  "slug": "ideal-homogeneoushull-eq-isup--0a324d480a3ced89d061df4a",
  "source": {
    "blob": "3a7070e50390fa017b0f88248f63222cdb903989",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 541,
    "line": 525,
    "path": "GRWTSK/Algebra/Ideal/Variantde89b7a25dcf02b8f6213366a04e6b6eb16b47d1f18c937922d4b934c1093477.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a324d480a3ced89d061df4a0dfbb25a0df8d8471f517e399df0f68548dec189",
  "verification": {
    "reference": "docs/verification/Algebra/Ideal/Variantde89b7a25dcf02b8f6213366a04e6b6eb16b47d1f18c937922d4b934c1093477.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e51e945-1bf5-c22b-d884-ce1c7e69752e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 525–541.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ideal.homogeneousHull_eq_iSup :
    I.homogeneousHull 𝒜 =
      ⨆ i, ⟨Ideal.span (GradedRing.proj 𝒜 i '' I), Ideal.homogeneous_span 𝒜 _ (by
        rintro _ ⟨x, -, rfl⟩
        apply SetLike.isHomogeneousElem_coe)⟩ := by
  ext1
  rw [Ideal.toIdeal_homogeneousHull_eq_iSup, toIdeal_iSup]

end HomogeneousHull

section GaloisConnection

open HomogeneousIdeal

variable [Semiring A] [DecidableEq ι] [AddMonoid ι]
variable [SetLike σ A] [AddSubmonoidClass σ A] (𝒜 : ι → σ) [GradedRing 𝒜]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Ideal/Variantde89b7a25dcf02b8f6213366a04e6b6eb16b47d1f18c937922d4b934c1093477.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ideal/Variantde89b7a25dcf02b8f6213366a04e6b6eb16b47d1f18c937922d4b934c1093477.lean#L525).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a7070e50390fa017b0f88248f63222cdb903989` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
