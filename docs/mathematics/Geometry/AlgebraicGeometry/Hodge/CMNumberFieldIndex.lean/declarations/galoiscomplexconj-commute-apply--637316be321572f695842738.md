# galoisComplexConj_commute_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:51d221b3-3808-bfe9-8965-fd1c5b40af5b",
  "kind": "theorem",
  "lexical_name": "galoisComplexConj_commute_apply",
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
  "slug": "galoiscomplexconj-commute-apply--637316be321572f695842738",
  "source": {
    "blob": "a9dbe5c48cd998a9aa118094f15c7408b3af406f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 51,
    "path": "GRWTSK/AlgebraicGeometry/Hodge/CMNumberFieldIndex.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:637316be321572f695842738ff591dadb4c1c8693bccaf8336d36fa476bc3892",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Hodge/CMNumberFieldIndex.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51d221b3-3808-bfe9-8965-fd1c5b40af5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem galoisComplexConj_commute_apply
    (σ : E ≃ₐ[ℚ] E) (x : E) :
    galoisComplexConj E (σ x) =
      σ (galoisComplexConj E x) := by
  let φ : E →+* ℂ := Classical.choice (inferInstance : Nonempty (E →+* ℂ))
  apply φ.injective
  change φ (IsCMField.complexConj E (σ x)) =
    φ (σ (IsCMField.complexConj E x))
  calc
    φ (IsCMField.complexConj E (σ x)) =
        conj (φ (σ x)) := by
          exact IsCMField.complexEmbedding_complexConj E φ (σ x)
    _ = conj ((φ.comp σ.toRingHom) x) := rfl
    _ = (φ.comp σ.toRingHom) (IsCMField.complexConj E x) := by
          symm
          exact IsCMField.complexEmbedding_complexConj
            E (φ.comp σ.toRingHom) x
    _ = φ (σ (IsCMField.complexConj E x)) := rfl

/-- The canonical central involution on the rational Galois group of a Galois
CM number field. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Hodge/CMNumberFieldIndex.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/Hodge/CMNumberFieldIndex.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9dbe5c48cd998a9aa118094f15c7408b3af406f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
