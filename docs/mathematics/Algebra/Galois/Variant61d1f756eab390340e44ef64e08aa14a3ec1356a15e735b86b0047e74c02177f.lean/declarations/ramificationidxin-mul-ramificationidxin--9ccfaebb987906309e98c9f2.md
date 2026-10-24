# ramificationIdxIn_mul_ramificationIdxIn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5cdf6ac6-4714-f276-cabc-98886df17ff7",
  "kind": "theorem",
  "lexical_name": "ramificationIdxIn_mul_ramificationIdxIn",
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
  "slug": "ramificationidxin-mul-ramificationidxin--9ccfaebb987906309e98c9f2",
  "source": {
    "blob": "8c89b4a440226e6a070fd925a209d45476953946",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 209,
    "path": "GRWTSK/Algebra/Galois/Variant61d1f756eab390340e44ef64e08aa14a3ec1356a15e735b86b0047e74c02177f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ccfaebb987906309e98c9f263bc119c5f086b0bf6cf36a0a0ceeef0f472efa5",
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

Occurrence: `result:5cdf6ac6-4714-f276-cabc-98886df17ff7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ramificationIdxIn_mul_ramificationIdxIn [Flat B C] :
    p.ramificationIdxIn B * P.ramificationIdxIn C = p.ramificationIdxIn C := by
  obtain ⟨⟨Q, _, hQ⟩⟩ := (inferInstance : Nonempty (primesOver P C))
  have : Q.LiesOver p := LiesOver.trans Q P p
  rw [ramificationIdxIn_eq_ramificationIdx p P G, ramificationIdxIn_eq_ramificationIdx p Q GAC,
    ramificationIdxIn_eq_ramificationIdx P Q GBC, ← ramificationIdx_tower P Q]

@[deprecated (since := "2026-06-18")] alias ramificationIdxIn_mul_ramificationIdxIn' :=
  ramificationIdxIn_mul_ramificationIdxIn

end tower

end RamificationInertia

section fundamental_identity

variable {A : Type*} [CommRing A] [IsDomain A] (p : Ideal A) [p.IsPrime]
  (B : Type*) [CommRing B] [IsDomain B] [Algebra A B] [Module.Finite A B] [Flat A B]
  (G : Type*) [Group G] [Finite G] [MulSemiringAction G B] [IsGaloisGroup G A B]

/-- The form of the **fundamental identity** in the case of Galois extension. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Galois/Variant61d1f756eab390340e44ef64e08aa14a3ec1356a15e735b86b0047e74c02177f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Galois/Variant61d1f756eab390340e44ef64e08aa14a3ec1356a15e735b86b0047e74c02177f.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c89b4a440226e6a070fd925a209d45476953946` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
