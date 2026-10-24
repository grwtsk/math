# splits_of_degree_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7ea90c76-9e11-9e5b-1a88-6242cf1e60a9",
  "kind": "theorem",
  "lexical_name": "splits_of_degree_le_one",
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
  "slug": "splits-of-degree-le-one--4062f47d3ba912764f493d29",
  "source": {
    "blob": "50f036bce8c161f2f4ba88c3828f4d107973030b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 99,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Splits/Variant39e8d0c10b6e86fc522b98488016e9e19df3b541c0c852754b9ee4b099b379d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4062f47d3ba912764f493d29497bcee8e5638e54a72f341b786512ecb241fbe5",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Splits/Variant39e8d0c10b6e86fc522b98488016e9e19df3b541c0c852754b9ee4b099b379d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ea90c76-9e11-9e5b-1a88-6242cf1e60a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem splits_of_degree_le_one {f : K[X]} (hf : degree f ≤ 1) : Splits i f :=
  if hif : degree (f.map i) ≤ 0 then splits_of_map_eq_C i (degree_le_zero_iff.mp hif)
  else by
    push_neg at hif
    rw [← Order.succ_le_iff, ← WithBot.coe_zero, WithBot.succ_coe, Nat.succ_eq_succ] at hif
    exact splits_of_map_degree_eq_one i (le_antisymm ((degree_map_le i _).trans hf) hif)
#align polynomial.splits_of_degree_le_one Polynomial.splits_of_degree_le_one

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Splits/Variant39e8d0c10b6e86fc522b98488016e9e19df3b541c0c852754b9ee4b099b379d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Splits/Variant39e8d0c10b6e86fc522b98488016e9e19df3b541c0c852754b9ee4b099b379d8.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50f036bce8c161f2f4ba88c3828f4d107973030b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
