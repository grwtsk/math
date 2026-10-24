# disjoint_iInf_maxGenEigenspace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0a92cb82-84e5-ec3e-4d3d-4c58521996df",
  "kind": "lemma",
  "lexical_name": "disjoint_iInf_maxGenEigenspace",
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
  "slug": "disjoint-iinf-maxgeneigenspace--6967318892fdcaba1274f02f",
  "source": {
    "blob": "9289ca1c15ece3d2ed9ad1a2a87a4e8107b1a844",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 81,
    "path": "GRWTSK/Algebra/LinearAlgebra/Pi/Variant3d4428451604004363331ce940199c5b5c06fdbc19b04dc003da44cf0f311f10.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6967318892fdcaba1274f02fee0ee65cad87cee92edb4264deebbd92127cb3d8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Pi/Variant3d4428451604004363331ce940199c5b5c06fdbc19b04dc003da44cf0f311f10.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a92cb82-84e5-ec3e-4d3d-4c58521996df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma disjoint_iInf_maxGenEigenspace {χ₁ χ₂ : ι → R} (h : χ₁ ≠ χ₂) :
    Disjoint (⨅ i, (f i).maxGenEigenspace (χ₁ i)) (⨅ i, (f i).maxGenEigenspace (χ₂ i)) := by
  obtain ⟨j, hj⟩ : ∃ j, χ₁ j ≠ χ₂ j := Function.ne_iff.mp h
  exact (End.disjoint_genEigenspace (f j) hj ⊤ ⊤).mono (iInf_le _ j) (iInf_le _ j)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Pi/Variant3d4428451604004363331ce940199c5b5c06fdbc19b04dc003da44cf0f311f10.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Pi/Variant3d4428451604004363331ce940199c5b5c06fdbc19b04dc003da44cf0f311f10.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9289ca1c15ece3d2ed9ad1a2a87a4e8107b1a844` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
