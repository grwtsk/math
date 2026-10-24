# adjoin_eq_top_of_gen_mem_adjoin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:afb37a9a-d8ec-2dd4-c581-984f4b7d2c86",
  "kind": "theorem",
  "lexical_name": "adjoin_eq_top_of_gen_mem_adjoin",
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
  "slug": "adjoin-eq-top-of-gen-mem-adjoin--45132968652fade0d0d9a9f7",
  "source": {
    "blob": "b63784ec36c83f49f337f05881089cdeab597c4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 491,
    "line": 483,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45132968652fade0d0d9a9f7d7815605a684acf79054d7c1293cec68141c3c91",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:afb37a9a-d8ec-2dd4-c581-984f4b7d2c86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 483–491.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem adjoin_eq_top_of_gen_mem_adjoin {B : PowerBasis R S} {x : S}
    (hx : B.gen ∈ adjoin R ({x} : Set S)) : adjoin R ({x} : Set S) = ⊤ := by
  rw [_root_.eq_top_iff, ← B.adjoin_gen_eq_top]
  refine adjoin_le ?_
  simp [hx]

end Adjoin

end PowerBasis
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean#L483).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b63784ec36c83f49f337f05881089cdeab597c4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
