# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:77b7201f513fe8c27a250103b3633d0b2038b7eb428d63c9ff36fcf2f7db7a15",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--b7f3dc6b3b2c3c47b75bc33f",
  "source": {
    "blob": "02e5f881947fef2b44892ea2db997205708cabf3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 361,
    "line": 354,
    "path": "GRWTSK/Algebra/ClassGroup/Variantc82a9d4a650b1f849aaf362754a2ed4086c06820b9950e276a5d3e1174c6e16a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b7f3dc6b3b2c3c47b75bc33f5eb9ee2008a4967c5fa5b1ba1572310b31d31d5b",
  "verification": {
    "reference": "docs/verification/Algebra/ClassGroup/Variantc82a9d4a650b1f849aaf362754a2ed4086c06820b9950e276a5d3e1174c6e16a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:77b7201f513fe8c27a250103b3633d0b2038b7eb428d63c9ff36fcf2f7db7a15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 354–361.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance [IsPrincipalIdealRing R] : Fintype (ClassGroup R) where
  elems := {1}
  complete := by
    refine ClassGroup.induction (R := R) (FractionRing R) (fun I => ?_)
    rw [Finset.mem_singleton]
    exact ClassGroup.mk_eq_one_iff.mpr (I : FractionalIdeal R⁰ (FractionRing R)).isPrincipal

/-- The class number of a principal ideal domain is `1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ClassGroup/Variantc82a9d4a650b1f849aaf362754a2ed4086c06820b9950e276a5d3e1174c6e16a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ClassGroup/Variantc82a9d4a650b1f849aaf362754a2ed4086c06820b9950e276a5d3e1174c6e16a.lean#L354).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02e5f881947fef2b44892ea2db997205708cabf3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
