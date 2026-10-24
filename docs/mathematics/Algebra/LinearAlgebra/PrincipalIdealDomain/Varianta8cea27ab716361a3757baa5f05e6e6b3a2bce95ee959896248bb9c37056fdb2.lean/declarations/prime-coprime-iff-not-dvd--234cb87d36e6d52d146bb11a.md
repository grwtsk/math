# Prime.coprime_iff_not_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aae2986c-207e-f00d-d8ab-c8ef1df3d331",
  "kind": "theorem",
  "lexical_name": "Prime.coprime_iff_not_dvd",
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
  "slug": "prime-coprime-iff-not-dvd--234cb87d36e6d52d146bb11a",
  "source": {
    "blob": "92b6faec08b7cdb6943889243bb06324001f23bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 451,
    "line": 448,
    "path": "GRWTSK/Algebra/LinearAlgebra/PrincipalIdealDomain/Varianta8cea27ab716361a3757baa5f05e6e6b3a2bce95ee959896248bb9c37056fdb2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:234cb87d36e6d52d146bb11a7ca13a7385756d848486444890421db9dd37a238",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PrincipalIdealDomain/Varianta8cea27ab716361a3757baa5f05e6e6b3a2bce95ee959896248bb9c37056fdb2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aae2986c-207e-f00d-d8ab-c8ef1df3d331`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 448–451.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Prime.coprime_iff_not_dvd {p n : R} (pp : Prime p) : IsCoprime p n ↔ ¬p ∣ n :=
  pp.irreducible.coprime_iff_not_dvd
#align prime.coprime_iff_not_dvd Prime.coprime_iff_not_dvd

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PrincipalIdealDomain/Varianta8cea27ab716361a3757baa5f05e6e6b3a2bce95ee959896248bb9c37056fdb2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PrincipalIdealDomain/Varianta8cea27ab716361a3757baa5f05e6e6b3a2bce95ee959896248bb9c37056fdb2.lean#L448).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92b6faec08b7cdb6943889243bb06324001f23bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
