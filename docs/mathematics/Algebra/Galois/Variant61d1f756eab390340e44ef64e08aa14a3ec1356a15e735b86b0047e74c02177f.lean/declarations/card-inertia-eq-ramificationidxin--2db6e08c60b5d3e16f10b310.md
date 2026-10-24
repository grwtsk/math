# card_inertia_eq_ramificationIdxIn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:61e61553-dd77-c37a-971a-8dc3aa4328ed",
  "kind": "lemma",
  "lexical_name": "card_inertia_eq_ramificationIdxIn",
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
  "slug": "card-inertia-eq-ramificationidxin--2db6e08c60b5d3e16f10b310",
  "source": {
    "blob": "8c89b4a440226e6a070fd925a209d45476953946",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 337,
    "line": 325,
    "path": "GRWTSK/Algebra/Galois/Variant61d1f756eab390340e44ef64e08aa14a3ec1356a15e735b86b0047e74c02177f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2db6e08c60b5d3e16f10b3108666ae1b83c939e7a54dd65fbfdc983b698ca2c5",
  "verification": {
    "reference": "docs/verification/Algebra/Galois/Variant61d1f756eab390340e44ef64e08aa14a3ec1356a15e735b86b0047e74c02177f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61e61553-dd77-c37a-971a-8dc3aa4328ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 325–337.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma card_inertia_eq_ramificationIdxIn [IsDomain R] [IsDomain S] [Module.Finite R S] [Flat R S]
    (p : Ideal R) (P : Ideal S) [P.LiesOver p] [p.IsPrime] [P.IsPrime]
    [Algebra.HasSeparableResidueFieldsAt R S p] :
    Nat.card (P.inertia G) = Ideal.ramificationIdxIn p S := by
  have H := ncard_primesOver_mul_card_inertia_mul_finrank (G := G) p P
  rw [← inertiaDegIn_eq_inertiaDeg p P G] at H
  have h1 : (p.primesOver S).ncard ≠ 0 := by grind [Nat.card_pos]
  have h2 : p.inertiaDegIn S ≠ 0 := by grind [Nat.card_pos]
  rwa [← ncard_primesOver_mul_ramificationIdxIn_mul_inertiaDegIn p S G,
    mul_assoc, mul_right_inj' h1, mul_left_inj' h2] at H

/-- The cardinality of the decomposition group is equal to the ramification index times the
inertia degree. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Galois/Variant61d1f756eab390340e44ef64e08aa14a3ec1356a15e735b86b0047e74c02177f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Galois/Variant61d1f756eab390340e44ef64e08aa14a3ec1356a15e735b86b0047e74c02177f.lean#L325).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c89b4a440226e6a070fd925a209d45476953946` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
