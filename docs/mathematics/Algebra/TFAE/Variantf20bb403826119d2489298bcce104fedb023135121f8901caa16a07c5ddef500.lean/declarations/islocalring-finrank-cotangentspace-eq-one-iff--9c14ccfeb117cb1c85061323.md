# IsLocalRing.finrank_CotangentSpace_eq_one_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fb4f33b8-7035-a2d9-c9a6-07c93ef4c1e5",
  "kind": "lemma",
  "lexical_name": "IsLocalRing.finrank_CotangentSpace_eq_one_iff",
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
  "slug": "islocalring-finrank-cotangentspace-eq-one-iff--9c14ccfeb117cb1c85061323",
  "source": {
    "blob": "21db9888471acfc028f5bff7e67dba94cf6e776b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 237,
    "path": "GRWTSK/Algebra/TFAE/Variantf20bb403826119d2489298bcce104fedb023135121f8901caa16a07c5ddef500.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c14ccfeb117cb1c85061323e534ffd37e6eaad05558e8b933fb5f4c1bb9dd83",
  "verification": {
    "reference": "docs/verification/Algebra/TFAE/Variantf20bb403826119d2489298bcce104fedb023135121f8901caa16a07c5ddef500.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb4f33b8-7035-a2d9-c9a6-07c93ef4c1e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsLocalRing.finrank_CotangentSpace_eq_one_iff [IsNoetherianRing R] [IsLocalRing R]
    [IsDomain R] : finrank (ResidueField R) (CotangentSpace R) = 1 ↔ IsDiscreteValuationRing R := by
  by_cases hR : IsField R
  · let := hR.toField
    simp only [finrank_cotangentSpace_eq_zero, zero_ne_one, false_iff]
    exact fun h ↦ h.3 maximalIdeal_eq_bot
  · exact (IsDiscreteValuationRing.TFAE R hR).out 6 1

variable (R)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/TFAE/Variantf20bb403826119d2489298bcce104fedb023135121f8901caa16a07c5ddef500.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/TFAE/Variantf20bb403826119d2489298bcce104fedb023135121f8901caa16a07c5ddef500.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21db9888471acfc028f5bff7e67dba94cf6e776b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
