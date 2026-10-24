# invertibleOfInvertibleFst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8976950bc2b7dbaa6aa5f1b610b03e7ae1df6943da66c7ea69a2d8f32f08836a",
  "kind": "abbrev",
  "lexical_name": "invertibleOfInvertibleFst",
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
  "slug": "invertibleofinvertiblefst--65a0f636495531f24cfb84eb",
  "source": {
    "blob": "b5dd863ad3b4b556472a3901a746fab5290d4bb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 747,
    "line": 739,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant1c56966449f3f0925d313dd5c3970a61234b19ea4936eab8502ff3bc99bddcb5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:65a0f636495531f24cfb84eb029573330ede84259f9c0143d299c6beb34afef5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant1c56966449f3f0925d313dd5c3970a61234b19ea4936eab8502ff3bc99bddcb5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8976950bc2b7dbaa6aa5f1b610b03e7ae1df6943da66c7ea69a2d8f32f08836a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 739–747.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev invertibleOfInvertibleFst (x : tsze R M) [Invertible x.fst] : Invertible x where
  invOf := (⅟x.fst, -(⅟x.fst •> x.snd <• ⅟x.fst))
  invOf_mul_self := by
    convert! mul_left_eq_one _ _ (invOf_mul_self x.fst)
    ext <;> simp
  mul_invOf_self := by
    convert! mul_right_eq_one _ _ (mul_invOf_self x.fst)
    ext <;> simp [smul_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant1c56966449f3f0925d313dd5c3970a61234b19ea4936eab8502ff3bc99bddcb5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant1c56966449f3f0925d313dd5c3970a61234b19ea4936eab8502ff3bc99bddcb5.lean#L739).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5dd863ad3b4b556472a3901a746fab5290d4bb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
