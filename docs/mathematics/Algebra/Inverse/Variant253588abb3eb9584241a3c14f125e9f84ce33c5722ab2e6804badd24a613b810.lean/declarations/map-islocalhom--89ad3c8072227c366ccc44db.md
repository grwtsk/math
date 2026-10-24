# map.isLocalHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:573bcc88-ace6-0d54-f7e7-205d4224b22b",
  "kind": "theorem",
  "lexical_name": "map.isLocalHom",
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
  "slug": "map-islocalhom--89ad3c8072227c366ccc44db",
  "source": {
    "blob": "e84a464384761bdcae11508a1b1eabb328241e9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 180,
    "path": "GRWTSK/Algebra/Inverse/Variant253588abb3eb9584241a3c14f125e9f84ce33c5722ab2e6804badd24a613b810.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89ad3c8072227c366ccc44db0220c4c78532f0f78c55fcb27a57f76b1569f47e",
  "verification": {
    "reference": "docs/verification/Algebra/Inverse/Variant253588abb3eb9584241a3c14f125e9f84ce33c5722ab2e6804badd24a613b810.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:573bcc88-ace6-0d54-f7e7-205d4224b22b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map.isLocalHom : IsLocalHom (map (σ := σ) f) :=
  ⟨by
    rintro φ ⟨ψ, h⟩
    replace h := congr_arg constantCoeff h
    rw [constantCoeff_map] at h
    have : IsUnit (constantCoeff ψ.val) := isUnit_constantCoeff _ ψ.isUnit
    rw [h] at this
    rcases isUnit_of_map_unit f _ this with ⟨c, hc⟩
    exact .of_mul_eq_one (invOfUnit φ c) (mul_invOfUnit φ c hc.symm)⟩

end IsLocalRing

section Field

open MvPowerSeries

variable {k : Type*} [Field k]

/-- The inverse `1/f` of a multivariable power series `f` over a field -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Inverse/Variant253588abb3eb9584241a3c14f125e9f84ce33c5722ab2e6804badd24a613b810.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Inverse/Variant253588abb3eb9584241a3c14f125e9f84ce33c5722ab2e6804badd24a613b810.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e84a464384761bdcae11508a1b1eabb328241e9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
