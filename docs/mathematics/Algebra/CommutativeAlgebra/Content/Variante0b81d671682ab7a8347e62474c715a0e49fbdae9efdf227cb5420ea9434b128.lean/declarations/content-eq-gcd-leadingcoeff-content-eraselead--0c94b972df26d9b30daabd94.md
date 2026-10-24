# content_eq_gcd_leadingCoeff_content_eraseLead

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2b0c0c4365333350b69021e1d108f5ae1d277c6a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 186,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ad0e650f-daa4-9af3-f562-d8eb902a90da",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a9afcf20-96a5-3418-dec3-2d0dc8432082",
  "kind": "theorem",
  "lexical_name": "content_eq_gcd_leadingCoeff_content_eraseLead",
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
  "slug": "content-eq-gcd-leadingcoeff-content-eraselead--0c94b972df26d9b30daabd94",
  "source": {
    "blob": "2b0c0c4365333350b69021e1d108f5ae1d277c6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 186,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Content/Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c94b972df26d9b30daabd946acbbd52b74b6c6b422ceb5d2059a4442b9750ae",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Content/Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a9afcf20-96a5-3418-dec3-2d0dc8432082`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem content_eq_gcd_leadingCoeff_content_eraseLead (p : R[X]) :
    p.content = GCDMonoid.gcd p.leadingCoeff (eraseLead p).content := by
  by_cases h : p = 0
  · simp [h]
  rw [← leadingCoeff_eq_zero, leadingCoeff, ← Ne, ← mem_support_iff] at h
  rw [content, ← Finset.insert_erase h, Finset.gcd_insert, leadingCoeff, content,
    eraseLead_support]
  refine congr rfl (Finset.gcd_congr rfl fun i hi => ?_)
  rw [Finset.mem_erase] at hi
  rw [eraseLead_coeff, if_neg hi.1]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Content/Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Content/Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b0c0c4365333350b69021e1d108f5ae1d277c6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
