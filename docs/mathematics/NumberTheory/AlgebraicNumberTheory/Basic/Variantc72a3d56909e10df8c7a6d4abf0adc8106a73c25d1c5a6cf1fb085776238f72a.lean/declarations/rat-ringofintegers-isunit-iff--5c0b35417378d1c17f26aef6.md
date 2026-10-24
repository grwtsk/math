# Rat.RingOfIntegers.isUnit_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec87116f-24ca-d835-a539-ab9c4ffeb92d",
  "kind": "theorem",
  "lexical_name": "Rat.RingOfIntegers.isUnit_iff",
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
  "slug": "rat-ringofintegers-isunit-iff--5c0b35417378d1c17f26aef6",
  "source": {
    "blob": "f7d9b20501a74e34ea166f3bcf8b79ff55210daa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 48,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantc72a3d56909e10df8c7a6d4abf0adc8106a73c25d1c5a6cf1fb085776238f72a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c0b35417378d1c17f26aef658fc0176b049cdce117259b3aa603a57bde30633",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variantc72a3d56909e10df8c7a6d4abf0adc8106a73c25d1c5a6cf1fb085776238f72a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec87116f-24ca-d835-a539-ab9c4ffeb92d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Rat.RingOfIntegers.isUnit_iff {x : 𝓞 ℚ} : IsUnit x ↔ (x : ℚ) = 1 ∨ (x : ℚ) = -1 := by
  simp_rw [(isUnit_map_iff (Rat.ringOfIntegersEquiv : 𝓞 ℚ →+* ℤ) x).symm, Int.isUnit_iff,
    RingEquiv.coe_toRingHom, RingEquiv.map_eq_one_iff, RingEquiv.map_eq_neg_one_iff, ←
    Subtype.coe_injective.eq_iff]; rfl

end Rat

variable (K : Type*) [Field K]

section IsUnit

variable {K}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variantc72a3d56909e10df8c7a6d4abf0adc8106a73c25d1c5a6cf1fb085776238f72a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantc72a3d56909e10df8c7a6d4abf0adc8106a73c25d1c5a6cf1fb085776238f72a.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7d9b20501a74e34ea166f3bcf8b79ff55210daa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
