# LinearMap.linearIndepOn_iff_of_injOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0913aafb-e26f-e78a-8b31-675d669564f5",
  "kind": "theorem",
  "lexical_name": "LinearMap.linearIndepOn_iff_of_injOn",
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
  "slug": "linearmap-linearindepon-iff-of-injon--6d1ace825b7522763f811dbd",
  "source": {
    "blob": "2ae3d68d4194746108d192c5bb94dadb0aa991dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 351,
    "line": 345,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variante3fd62d85f5b91bef66e31dfcfee3547cfb523a13920aa2866cd1eb28e24f537.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d1ace825b7522763f811dbd15902a16918294b995e612c80aaf7e5f5efb210f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variante3fd62d85f5b91bef66e31dfcfee3547cfb523a13920aa2866cd1eb28e24f537.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0913aafb-e26f-e78a-8b31-675d669564f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 345–351.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem LinearMap.linearIndepOn_iff_of_injOn (f : M →ₗ[R] M')
    (hf_inj : Set.InjOn f (span R (v '' s))) :
    LinearIndepOn R (f ∘ v) s ↔ LinearIndepOn R v s :=
  f.linearIndependent_iff_of_injOn (by rwa [← image_eq_range]) (v := fun i : s ↦ v i)

-- TODO : Rename this `LinearIndependent.of_subsingleton`.
@[nontriviality]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variante3fd62d85f5b91bef66e31dfcfee3547cfb523a13920aa2866cd1eb28e24f537.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variante3fd62d85f5b91bef66e31dfcfee3547cfb523a13920aa2866cd1eb28e24f537.lean#L345).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ae3d68d4194746108d192c5bb94dadb0aa991dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
