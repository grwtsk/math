# mem_of_isSMulRegular_on_quot_of_smul_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca0b8585-2b91-875e-6f53-e7df22ebe0ed",
  "kind": "lemma",
  "lexical_name": "mem_of_isSMulRegular_on_quot_of_smul_mem",
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
  "slug": "mem-of-issmulregular-on-quot-of-smul-mem--25ba46ecdc140d1f245e3330",
  "source": {
    "blob": "bcbd439b44ceca0025401486d8b285095c426c5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 117,
    "path": "GRWTSK/Algebra/LinearAlgebra/IsSMulRegular/Variant34793011684a19b01a2e5f79b27fc0e114e1667b5bc1465f9bc25c8f8787e7cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25ba46ecdc140d1f245e3330e9002805c4373c8501af5230bb8197917e99c058",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/IsSMulRegular/Variant34793011684a19b01a2e5f79b27fc0e114e1667b5bc1465f9bc25c8f8787e7cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca0b8585-2b91-875e-6f53-e7df22ebe0ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_of_isSMulRegular_on_quot_of_smul_mem (h1 : IsSMulRegular (M ⧸ N) r)
    {x : M} (h2 : r • x ∈ N) : x ∈ N :=
  (isSMulRegular_on_quot_iff_smul_mem_implies_mem N r).mp h1 x h2

/-- Given a left exact sequence `0 → M → M' → M''`, if `r` is regular on both
`M` and `M''` it's regular `M'` too. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IsSMulRegular/Variant34793011684a19b01a2e5f79b27fc0e114e1667b5bc1465f9bc25c8f8787e7cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IsSMulRegular/Variant34793011684a19b01a2e5f79b27fc0e114e1667b5bc1465f9bc25c8f8787e7cf.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcbd439b44ceca0025401486d8b285095c426c5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
