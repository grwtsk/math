# isIntegrallyClosed_iff_isIntegralClosure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2f0da5f3-71e2-fc6a-21d4-f9b319806b4b",
  "kind": "theorem",
  "lexical_name": "isIntegrallyClosed_iff_isIntegralClosure",
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
  "slug": "isintegrallyclosed-iff-isintegralclosure--4b65013466cd817c5240c16f",
  "source": {
    "blob": "a4d9b5989c1e550d10add75e808b606bd2a8d5e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 74,
    "path": "GRWTSK/Algebra/IntegrallyClosed/Variantff316710a50f52394cc74544b9af90beaa348bd48eca65bcaa9cb36ee9ddb314.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b65013466cd817c5240c16f6c1068ecde004b3f4b12d818dbe6741ed76c0259",
  "verification": {
    "reference": "docs/verification/Algebra/IntegrallyClosed/Variantff316710a50f52394cc74544b9af90beaa348bd48eca65bcaa9cb36ee9ddb314.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f0da5f3-71e2-fc6a-21d4-f9b319806b4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isIntegrallyClosed_iff_isIntegralClosure : IsIntegrallyClosed R ↔ IsIntegralClosure R R K :=
  (isIntegrallyClosed_iff K).trans <| by
    constructor
    · intro cl
      refine' ⟨IsFractionRing.injective R K, ⟨cl, _⟩⟩
      rintro ⟨y, y_eq⟩
      rw [← y_eq]
      exact isIntegral_algebraMap
    · rintro ⟨-, cl⟩ x hx
      exact cl.mp hx
#align is_integrally_closed_iff_is_integral_closure isIntegrallyClosed_iff_isIntegralClosure

end Iff

namespace IsIntegrallyClosed

variable {R : Type*} [CommRing R] [id : IsDomain R] [iic : IsIntegrallyClosed R]

variable {K : Type*} [Field K] [Algebra R K] [ifr : IsFractionRing R K]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/IntegrallyClosed/Variantff316710a50f52394cc74544b9af90beaa348bd48eca65bcaa9cb36ee9ddb314.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IntegrallyClosed/Variantff316710a50f52394cc74544b9af90beaa348bd48eca65bcaa9cb36ee9ddb314.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4d9b5989c1e550d10add75e808b606bd2a8d5e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
