# succNthDefiningPoly

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4130231625ab92eb8d45286584575c508963cdbf4cfef76e67a8f87ff9d21043",
  "kind": "def",
  "lexical_name": "succNthDefiningPoly",
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
  "slug": "succnthdefiningpoly--e896d12bc4cfab4b31eaf879",
  "source": {
    "blob": "3137d86a23b33bc309ff646b9c9ffab6f85e6973",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 80,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant45efc517f2a2a1028fd212ed8ac05719d9c7c58ec3e3aa9607563c5287e34c75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e896d12bc4cfab4b31eaf879e2a37e940552fbcbeca156ef6ae40f84092874ea",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant45efc517f2a2a1028fd212ed8ac05719d9c7c58ec3e3aa9607563c5287e34c75.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4130231625ab92eb8d45286584575c508963cdbf4cfef76e67a8f87ff9d21043`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def succNthDefiningPoly (n : ℕ) (a₁ a₂ : 𝕎 k) (bs : Fin (n + 1) → k) : Polynomial k :=
  X ^ p * C (a₁.coeff 0 ^ p ^ (n + 1)) - X * C (a₂.coeff 0 ^ p ^ (n + 1)) +
    C
      (a₁.coeff (n + 1) * (bs 0 ^ p) ^ p ^ (n + 1) +
            nthRemainder p n (fun v => bs v ^ p) (truncateFun (n + 1) a₁) -
          a₂.coeff (n + 1) * bs 0 ^ p ^ (n + 1) -
        nthRemainder p n bs (truncateFun (n + 1) a₂))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant45efc517f2a2a1028fd212ed8ac05719d9c7c58ec3e3aa9607563c5287e34c75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant45efc517f2a2a1028fd212ed8ac05719d9c7c58ec3e3aa9607563c5287e34c75.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3137d86a23b33bc309ff646b9c9ffab6f85e6973` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
