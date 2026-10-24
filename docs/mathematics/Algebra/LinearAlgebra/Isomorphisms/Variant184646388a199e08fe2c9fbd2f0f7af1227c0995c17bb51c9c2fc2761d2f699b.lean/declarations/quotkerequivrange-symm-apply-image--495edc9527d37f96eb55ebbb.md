# quotKerEquivRange_symm_apply_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ffd4f3fabb0eabe06bdc324835b48abed22c2dc2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/18/184646388a199e08fe2c9fbd2f0f7af1227c0995c17bb51c9c2fc2761d2f699b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ff5d194e-4040-2d98-5777-d9ce4203ec4f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eb38b730-80db-367f-e2b2-b110967740eb",
  "kind": "theorem",
  "lexical_name": "quotKerEquivRange_symm_apply_image",
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
  "slug": "quotkerequivrange-symm-apply-image--495edc9527d37f96eb55ebbb",
  "source": {
    "blob": "ffd4f3fabb0eabe06bdc324835b48abed22c2dc2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 58,
    "path": "GRWTSK/Algebra/LinearAlgebra/Isomorphisms/Variant184646388a199e08fe2c9fbd2f0f7af1227c0995c17bb51c9c2fc2761d2f699b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:495edc9527d37f96eb55ebbbac6c690b93124dbd50c2004afc1e6c6d741d686e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Isomorphisms/Variant184646388a199e08fe2c9fbd2f0f7af1227c0995c17bb51c9c2fc2761d2f699b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb38b730-80db-367f-e2b2-b110967740eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quotKerEquivRange_symm_apply_image (x : M) (h : f x ∈ LinearMap.range f) :
    f.quotKerEquivRange.symm ⟨f x, h⟩ = f.ker.mkQ x :=
  f.quotKerEquivRange.symm_apply_apply (f.ker.mkQ x)
#align linear_map.quot_ker_equiv_range_symm_apply_image LinearMap.quotKerEquivRange_symm_apply_image

-- Porting note: breaking up original definition of quotientInfToSupQuotient to avoid timing out
/-- Linear map from `p` to `p+p'/p'` where `p p'` are submodules of `R` -/
@[reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Isomorphisms/Variant184646388a199e08fe2c9fbd2f0f7af1227c0995c17bb51c9c2fc2761d2f699b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Isomorphisms/Variant184646388a199e08fe2c9fbd2f0f7af1227c0995c17bb51c9c2fc2761d2f699b.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffd4f3fabb0eabe06bdc324835b48abed22c2dc2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
