# away_fst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:da1dcb6b3f00dec6f8ad5f3402442e7dda148b11d5a5dc33bc15e60ee0c582e6",
  "kind": "instance",
  "lexical_name": "away_fst",
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
  "slug": "away-fst--35ea0d8fd6f3ba86ff3f72cf",
  "source": {
    "blob": "6390d7d1143f17e5b87af7931b03766592d5d8ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 356,
    "line": 350,
    "path": "GRWTSK/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:35ea0d8fd6f3ba86ff3f72cfb40a861f2e5a36179d0994824297ee087bc33ca0",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:da1dcb6b3f00dec6f8ad5f3402442e7dda148b11d5a5dc33bc15e60ee0c582e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 350–356.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance away_fst {R S} [CommSemiring R] [CommSemiring S] :
    letI := (RingHom.fst R S).toAlgebra
    IsLocalization.Away (R := R × S) (1, 0) R :=
  letI := (RingHom.fst R S).toAlgebra
  away_of_isIdempotentElem_of_mul (by ext <;> simp)
    (fun ⟨xR, xS⟩ ⟨yR, yS⟩ ↦ show xR = yR ↔ _ by simp) Prod.fst_surjective

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean#L350).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6390d7d1143f17e5b87af7931b03766592d5d8ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
