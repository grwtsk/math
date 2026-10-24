# _root_.GRWTSK.Algebra.LinearAlgebra.IffRankLtAleph0.Variant05316f2a785ab572626eabca5545306095b329a9ad19e305d740c83e83a6ac00.Module.card_eq_pow_finrank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8fe4c6c0-aae9-2112-9140-5c99be77d756",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.IffRankLtAleph0.Variant05316f2a785ab572626eabca5545306095b329a9ad19e305d740c83e83a6ac00.Module.card_eq_pow_finrank",
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
  "slug": "root-grwtsk-algebra-linearalgebra-iffrankltaleph0-variant05316f2a785ab57--f132f65c26c1c77248e38319",
  "source": {
    "blob": "fa83780036cc7b8bfa0322c7c3048c23a6725c81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 99,
    "path": "GRWTSK/Algebra/LinearAlgebra/Finiteness/Variant4d28dbe63b40ccb243c4847bec71eb464fae4405203244594f69aa13299e8802.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f132f65c26c1c77248e3831913623cd47f2d8816893538c8efc1f3f9238246bc",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Finiteness/Variant4d28dbe63b40ccb243c4847bec71eb464fae4405203244594f69aa13299e8802.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8fe4c6c0-aae9-2112-9140-5c99be77d756`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.LinearAlgebra.IffRankLtAleph0.Variant05316f2a785ab572626eabca5545306095b329a9ad19e305d740c83e83a6ac00.Module.card_eq_pow_finrank [Fintype K] [Fintype V] :
    Fintype.card V = Fintype.card K ^ Module.finrank K V := by
  let b := IsNoetherian.finsetBasis K V
  rw [Module.card_fintype b, ← Module.finrank_eq_card_basis b]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Finiteness/Variant4d28dbe63b40ccb243c4847bec71eb464fae4405203244594f69aa13299e8802.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Finiteness/Variant4d28dbe63b40ccb243c4847bec71eb464fae4405203244594f69aa13299e8802.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa83780036cc7b8bfa0322c7c3048c23a6725c81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
