# IsPrincipalIdealRing.of_finite_maximals

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dd9c1b39-823a-30f6-ab73-7aceff30815b",
  "kind": "theorem",
  "lexical_name": "IsPrincipalIdealRing.of_finite_maximals",
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
  "slug": "isprincipalidealring-of-finite-maximals--f45e725c9f61885adecf0809",
  "source": {
    "blob": "08f39445e525f0bdb24ee17909794b769e3784b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 165,
    "path": "GRWTSK/Algebra/PID/Variant5cb2caf96257ebce1f42dfb8e1625a3749b71be8a79a4512758cd4e521c45d5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f45e725c9f61885adecf08096d8e150b7c05bcb0269a9f5d2d0916cbf6f22f10",
  "verification": {
    "reference": "docs/verification/Algebra/PID/Variant5cb2caf96257ebce1f42dfb8e1625a3749b71be8a79a4512758cd4e521c45d5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd9c1b39-823a-30f6-ab73-7aceff30815b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPrincipalIdealRing.of_finite_maximals [IsDedekindDomain R]
    (h : {I : Ideal R | I.IsMaximal}.Finite) : IsPrincipalIdealRing R :=
  ⟨fun I => by
    obtain rfl | hI := eq_or_ne I ⊥
    · exact bot_isPrincipal
    apply Ideal.IsPrincipal.of_finite_maximals_of_isUnit h
    exact .of_mul_eq_one _ (FractionalIdeal.coe_ideal_mul_inv I hI)⟩

/-- A Dedekind domain is a PID if its set of primes is finite. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PID/Variant5cb2caf96257ebce1f42dfb8e1625a3749b71be8a79a4512758cd4e521c45d5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PID/Variant5cb2caf96257ebce1f42dfb8e1625a3749b71be8a79a4512758cd4e521c45d5e.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08f39445e525f0bdb24ee17909794b769e3784b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
