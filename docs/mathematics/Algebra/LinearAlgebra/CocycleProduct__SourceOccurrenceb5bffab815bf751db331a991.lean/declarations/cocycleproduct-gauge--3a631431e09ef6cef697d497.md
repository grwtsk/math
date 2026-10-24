# cocycleProduct_gauge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b2fcbb91-5fcf-86f4-df1b-1703957eb86f",
  "kind": "theorem",
  "lexical_name": "cocycleProduct_gauge",
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
  "slug": "cocycleproduct-gauge--3a631431e09ef6cef697d497",
  "source": {
    "blob": "1bc42c586526a55c7feb86b1df86a48ad18e82ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 100,
    "path": "GRWTSK/Algebra/LinearAlgebra/CocycleProduct.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a631431e09ef6cef697d4975f32c3b5c928e35fd852428a1caeb93295dfc328",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CocycleProduct__SourceOccurrenceb5bffab815bf751db331a991.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2fcbb91-5fcf-86f4-df1b-1703957eb86f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cocycleProduct_gauge {S : Type u} {G : Type v} [Group G]
    (T : S → S) (A B : S → G) (n : ℕ) (x : S) :
    cocycleProduct T (cocycleGaugeTransfer T A B) n x =
      (B (T^[n] x))⁻¹ * cocycleProduct T A n x * B x := by
  induction n with
  | zero => simp
  | succ n ih =>
    simp [cocycleProduct_succ, cocycleGaugeTransfer, ih,
      Function.iterate_succ_apply', mul_assoc]




end GRWTSK.LinearAlgebra.CocycleProduct
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LinearAlgebra/CocycleProduct__SourceOccurrenceb5bffab815bf751db331a991.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CocycleProduct.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bc42c586526a55c7feb86b1df86a48ad18e82ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
