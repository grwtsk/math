# _root_.GRWTSK.Algebra.LinearAlgebra.PosSemidef.Variantb6a2226f7da4d3eeb6df0e589a69ed2a6b4c202c6279bacda5914c808053201b.Matrix.posDef_diagonal_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:844de078-1cbb-d1ac-2599-b892df68b9f6",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.PosSemidef.Variantb6a2226f7da4d3eeb6df0e589a69ed2a6b4c202c6279bacda5914c808053201b.Matrix.posDef_diagonal_iff",
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
  "slug": "root-grwtsk-algebra-linearalgebra-possemidef-variantb6a2226f7da4d3eeb6df--ca1decc63239e451c9a04b74",
  "source": {
    "blob": "8a073a067a25a3cba971bb00baffda86dafe8e1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 428,
    "line": 420,
    "path": "GRWTSK/Algebra/LinearAlgebra/PosDef/Variant8f6d1529db1144edc5c289621848b970a3ebe1f35198a9232ac0c88fba263a48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca1decc63239e451c9a04b742219973305e60091cb5f54129ff36cdfdfb133a5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PosDef/Variant8f6d1529db1144edc5c289621848b970a3ebe1f35198a9232ac0c88fba263a48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:844de078-1cbb-d1ac-2599-b892df68b9f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 420–428.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.LinearAlgebra.PosSemidef.Variantb6a2226f7da4d3eeb6df0e589a69ed2a6b4c202c6279bacda5914c808053201b.Matrix.posDef_diagonal_iff
    [StarOrderedRing R] [DecidableEq n] [NoZeroDivisors R] [Nontrivial R] {d : n → R} :
    PosDef (diagonal d) ↔ ∀ i, 0 < d i := by
  refine ⟨fun h i => ?_, .diagonal⟩
  have := h.2 (Pi.single i 1)
  simp_rw [mulVec_single_one, ← Pi.single_star, star_one, single_dotProduct, one_mul,
    col_apply, diagonal_apply_eq, Function.ne_iff] at this
  exact this ⟨i, by simp⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PosDef/Variant8f6d1529db1144edc5c289621848b970a3ebe1f35198a9232ac0c88fba263a48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PosDef/Variant8f6d1529db1144edc5c289621848b970a3ebe1f35198a9232ac0c88fba263a48.lean#L420).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a073a067a25a3cba971bb00baffda86dafe8e1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
