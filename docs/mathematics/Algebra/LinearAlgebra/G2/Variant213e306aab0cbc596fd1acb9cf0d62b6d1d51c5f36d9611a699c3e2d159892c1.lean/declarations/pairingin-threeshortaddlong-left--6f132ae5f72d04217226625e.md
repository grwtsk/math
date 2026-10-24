# pairingIn_threeShortAddLong_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:586fb4d0-27e1-8bfe-2b40-9282aa07a813",
  "kind": "lemma",
  "lexical_name": "pairingIn_threeShortAddLong_left",
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
  "slug": "pairingin-threeshortaddlong-left--6f132ae5f72d04217226625e",
  "source": {
    "blob": "b94f8da98fba941335109439534b52b3a154c78c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 364,
    "line": 352,
    "path": "GRWTSK/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f132ae5f72d04217226625e9182eebb5e6661e752475fd68a6f8141c1e7d953",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:586fb4d0-27e1-8bfe-2b40-9282aa07a813`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 352–364.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma pairingIn_threeShortAddLong_left :
    P.pairingIn ℤ (threeShortAddLong P) i =
      3 * P.pairingIn ℤ (short P) i + P.pairingIn ℤ (long P) i := by
  suffices P.pairing (threeShortAddLong P) i =
      3 * P.pairing (short P) i + P.pairing (long P) i from
    algebraMap_injective ℤ R <| by simpa only [algebraMap_pairingIn, map_add, map_mul, map_ofNat]
  have : Fintype ι := Fintype.ofFinite ι
  have B := (P.posRootForm ℤ).toInvariantForm
  apply mul_right_cancel₀ (B.ne_zero i)
  rw [← B.two_mul_apply_root_root]
  simp [threeShortAddLongRoot_eq, mul_add, B.two_mul_apply_root_root, mul_left_comm (2 : R) (3 : R)]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean#L352).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b94f8da98fba941335109439534b52b3a154c78c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
