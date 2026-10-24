# inertiaDegIn_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a50d3cfa-ac7e-f1df-3d3b-d1825ff632ec",
  "kind": "theorem",
  "lexical_name": "inertiaDegIn_ne_zero",
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
  "slug": "inertiadegin-ne-zero--d982b1d8ae0caf880da5d75a",
  "source": {
    "blob": "8c89b4a440226e6a070fd925a209d45476953946",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 186,
    "path": "GRWTSK/Algebra/Galois/Variant61d1f756eab390340e44ef64e08aa14a3ec1356a15e735b86b0047e74c02177f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d982b1d8ae0caf880da5d75ab7edc818918672e12bf1cad73a835928f161ae3c",
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

Occurrence: `result:a50d3cfa-ac7e-f1df-3d3b-d1825ff632ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inertiaDegIn_ne_zero [Module.Finite A B] [FaithfulSMul A B] {p : Ideal A} [p.IsPrime] :
    inertiaDegIn p B ≠ 0 := by
  obtain ⟨P⟩ := (inferInstance : Nonempty (primesOver p B))
  rw [inertiaDegIn_eq_inertiaDeg p P G]
  exact (P.1.inertiaDeg_pos A).ne'

section tower

variable (C : Type*) [CommRing C] [Algebra A C] [Algebra B C]
  [Nonempty (P.primesOver C)] [IsScalarTower A B C]
  (GAC : Type*) [Group GAC] [Finite GAC] [MulSemiringAction GAC C] [IsGaloisGroup GAC A C]
  (GBC : Type*) [Group GBC] [Finite GBC] [MulSemiringAction GBC C] [IsGaloisGroup GBC B C]

include G GAC GBC in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Galois/Variant61d1f756eab390340e44ef64e08aa14a3ec1356a15e735b86b0047e74c02177f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Galois/Variant61d1f756eab390340e44ef64e08aa14a3ec1356a15e735b86b0047e74c02177f.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c89b4a440226e6a070fd925a209d45476953946` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
