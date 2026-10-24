# foil_to_trunc_remainder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0f24d0e3165301f536c019c4032127a6854d8a77",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1220,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fd/fdb2b21d5ea869156d55fb6e5694075bf2e4a969131747449ad1713f43c7916d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6301a551-a7b6-f843-66ba-5e3909045553",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ad010acd-d702-b9ff-2b07-b81ca8255b60",
  "kind": "theorem",
  "lexical_name": "foil_to_trunc_remainder",
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
  "slug": "foil-to-trunc-remainder--c13f79c3c4213ccaff56cfcf",
  "source": {
    "blob": "0f24d0e3165301f536c019c4032127a6854d8a77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1245,
    "line": 1220,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Core/Variantfdb2b21d5ea869156d55fb6e5694075bf2e4a969131747449ad1713f43c7916d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c13f79c3c4213ccaff56cfcf6631982e74fa9422e66e6755dfd399977c5f8ded",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Core/Variantfdb2b21d5ea869156d55fb6e5694075bf2e4a969131747449ad1713f43c7916d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad010acd-d702-b9ff-2b07-b81ca8255b60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1220–1245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem foil_to_trunc_remainder {p1 p2 : Polynomial ℚ} {r1 r2 y : ℝ} {degree : ℕ}
    (hsplit : Polynomial.aeval y (p1 * p2) =
              Polynomial.aeval y (truncPoly (p1 * p2) degree) +
              Polynomial.aeval y (tailPoly (p1 * p2) degree)) :
    (Polynomial.aeval y p1 + r1) * (Polynomial.aeval y p2 + r2) =
    Polynomial.aeval y (truncPoly (p1 * p2) degree) +
      (Polynomial.aeval y (tailPoly (p1 * p2) degree) +
       Polynomial.aeval y p1 * r2 + Polynomial.aeval y p2 * r1 + r1 * r2) := by
  have hpoly_mul : Polynomial.aeval y p1 * Polynomial.aeval y p2 =
                   Polynomial.aeval y (p1 * p2) :=
    ((Polynomial.aeval y).map_mul p1 p2).symm
  calc
    (Polynomial.aeval y p1 + r1) * (Polynomial.aeval y p2 + r2)
      = Polynomial.aeval y p1 * Polynomial.aeval y p2 +
        Polynomial.aeval y p1 * r2 + Polynomial.aeval y p2 * r1 + r1 * r2 := by ring
    _ = Polynomial.aeval y (p1 * p2) +
        Polynomial.aeval y p1 * r2 + Polynomial.aeval y p2 * r1 + r1 * r2 := by rw [hpoly_mul]
    _ = (Polynomial.aeval y (truncPoly (p1 * p2) degree) +
         Polynomial.aeval y (tailPoly (p1 * p2) degree)) +
        Polynomial.aeval y p1 * r2 + Polynomial.aeval y p2 * r1 + r1 * r2 := by rw [hsplit]
    _ = Polynomial.aeval y (truncPoly (p1 * p2) degree) +
        (Polynomial.aeval y (tailPoly (p1 * p2) degree) +
         Polynomial.aeval y p1 * r2 + Polynomial.aeval y p2 * r1 + r1 * r2) := by ring

/-- Four-term remainder membership: tail + p1r2 + p2r1 + r1r2 ∈ totalRemainder.
This extracts the nested interval addition pattern from mul_evalSet_correct. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Core/Variantfdb2b21d5ea869156d55fb6e5694075bf2e4a969131747449ad1713f43c7916d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Core/Variantfdb2b21d5ea869156d55fb6e5694075bf2e4a969131747449ad1713f43c7916d.lean#L1220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f24d0e3165301f536c019c4032127a6854d8a77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
