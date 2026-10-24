# associatesNonZeroDivisorsMulEquivIsPrincipal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:13ac2f4a6a349486b11c131f3a1635b636fd8bff6deb21e99120216b33e7d7e3",
  "kind": "def",
  "lexical_name": "associatesNonZeroDivisorsMulEquivIsPrincipal",
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
  "slug": "associatesnonzerodivisorsmulequivisprincipal--8473dd902ee81dae68d7cf24",
  "source": {
    "blob": "b4b21780be013d09b7499cabc2e5d6a65b35e85e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 148,
    "path": "GRWTSK/Algebra/IsPrincipal/Variant46034827c03843b31f9b10d407c41b6e7c579feda05a898a9f9adcb1b1e0c998.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8473dd902ee81dae68d7cf24774ac7c57481ca6ef9dba29a5518e6799688701d",
  "verification": {
    "reference": "docs/verification/Algebra/IsPrincipal/Variant46034827c03843b31f9b10d407c41b6e7c579feda05a898a9f9adcb1b1e0c998.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:13ac2f4a6a349486b11c131f3a1635b636fd8bff6deb21e99120216b33e7d7e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def associatesNonZeroDivisorsMulEquivIsPrincipal :
    Associates R⁰ ≃* (isPrincipalNonZeroDivisorsSubmonoid R) where
  __ := associatesNonZeroDivisorsEquivIsPrincipal R
  map_mul' _ _ := by
    rw [Subtype.ext_iff, Subtype.ext_iff]
    erw [associatesNonZeroDivisorsEquivIsPrincipal_mul]
    rfl

end Ideal
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/IsPrincipal/Variant46034827c03843b31f9b10d407c41b6e7c579feda05a898a9f9adcb1b1e0c998.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IsPrincipal/Variant46034827c03843b31f9b10d407c41b6e7c579feda05a898a9f9adcb1b1e0c998.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4b21780be013d09b7499cabc2e5d6a65b35e85e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
