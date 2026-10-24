# ncard_primesOver_mul_ramificationIdxIn_mul_inertiaDegIn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b26a43c-732e-dd2b-e6be-d4a01defbb6a",
  "kind": "theorem",
  "lexical_name": "ncard_primesOver_mul_ramificationIdxIn_mul_inertiaDegIn",
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
  "slug": "ncard-primesover-mul-ramificationidxin-mul-inertiadegin--8fefcc0c925706428c2fca4f",
  "source": {
    "blob": "8c89b4a440226e6a070fd925a209d45476953946",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 230,
    "path": "GRWTSK/Algebra/Galois/Variant61d1f756eab390340e44ef64e08aa14a3ec1356a15e735b86b0047e74c02177f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8fefcc0c925706428c2fca4f71d417db7b85705e4a8e821b1aac2d74207bf129",
  "verification": {
    "reference": "docs/verification/Algebra/Galois/Variant61d1f756eab390340e44ef64e08aa14a3ec1356a15e735b86b0047e74c02177f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b26a43c-732e-dd2b-e6be-d4a01defbb6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ncard_primesOver_mul_ramificationIdxIn_mul_inertiaDegIn :
    (primesOver p B).ncard * (ramificationIdxIn p B * inertiaDegIn p B) = Nat.card G := by
  have : Fintype (primesOver p B) := (QuasiFinite.finite_primesOver p).fintype
  rw [← smul_eq_mul, ← Set.fintypeCard_eq_ncard, ← Finset.card_univ, ← Finset.sum_const,
    ← sum_ramification_inertia_eq_card p B]
  apply Finset.sum_congr rfl
  intro P hp
  rw [ramificationIdxIn_eq_ramificationIdx p P G, inertiaDegIn_eq_inertiaDeg p P G]

end fundamental_identity

section tower

variable {A B : Type*} [CommRing A] [CommRing B]
  [Algebra A B] {p : Ideal A} (P : Ideal B)
  [P.IsPrime] [P.LiesOver p] (G : Type*) [Group G] [Finite G] [MulSemiringAction G B]
  [IsGaloisGroup G A B] (C : Type*) [CommRing C] [IsDomain C] [Algebra A C]
  [Algebra B C] [FaithfulSMul B C] [IsScalarTower A B C]
  (GAC : Type*) [Group GAC] [Finite GAC] [MulSemiringAction GAC C] [IsGaloisGroup GAC A C]

include G GAC in
open IsGaloisGroup MulAction in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Galois/Variant61d1f756eab390340e44ef64e08aa14a3ec1356a15e735b86b0047e74c02177f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Galois/Variant61d1f756eab390340e44ef64e08aa14a3ec1356a15e735b86b0047e74c02177f.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c89b4a440226e6a070fd925a209d45476953946` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
