# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c1f4b8c82d783332d67683fee01e4150c63abe1dc8ef9ef522d8d2ab4a327d90",
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
  "slug": "instance--c0947e1ad7a211e2dbd8fc1b",
  "source": {
    "blob": "8fe752ee06ac972ea7a212019451b2c51ca8902c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 71,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Varianta60b075afe97f39840a561d17469ffe273168ddedb991e92d8b365d8d73c429a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c0947e1ad7a211e2dbd8fc1b7cee6e6bfeb6f693c443d074e3e446cabe18ce8a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Varianta60b075afe97f39840a561d17469ffe273168ddedb991e92d8b365d8d73c429a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c1f4b8c82d783332d67683fee01e4150c63abe1dc8ef9ef522d8d2ab4a327d90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [CharZero R] : CharZero (MvPolynomial σ R) where
  cast_injective x y hxy := by rwa [← C_eq_coe_nat, ← C_eq_coe_nat, C_inj, Nat.cast_inj] at hxy

end CharZero

section Homomorphism

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Varianta60b075afe97f39840a561d17469ffe273168ddedb991e92d8b365d8d73c429a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Varianta60b075afe97f39840a561d17469ffe273168ddedb991e92d8b365d8d73c429a.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8fe752ee06ac972ea7a212019451b2c51ca8902c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
