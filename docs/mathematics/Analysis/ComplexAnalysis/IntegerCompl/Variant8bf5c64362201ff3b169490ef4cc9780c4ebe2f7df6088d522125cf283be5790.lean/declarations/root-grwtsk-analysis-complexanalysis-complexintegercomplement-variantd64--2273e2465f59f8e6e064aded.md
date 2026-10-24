# _root_.GRWTSK.Analysis.ComplexAnalysis.ComplexIntegerComplement.Variantd64382667f04e1b88d67573fb7de297179945946e16e5d7a671264d184923f48.UpperHalfPlane.int_div_mem_integerComplement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd424ab6-4b54-11e3-1727-bac6ec44c2e4",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Analysis.ComplexAnalysis.ComplexIntegerComplement.Variantd64382667f04e1b88d67573fb7de297179945946e16e5d7a671264d184923f48.UpperHalfPlane.int_div_mem_integerComplement",
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
  "slug": "root-grwtsk-analysis-complexanalysis-complexintegercomplement-variantd64--2273e2465f59f8e6e064aded",
  "source": {
    "blob": "a91fbe653d5c2ad4b08b47ee0307273977aec435",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 70,
    "path": "GRWTSK/Analysis/ComplexAnalysis/IntegerCompl/Variant8bf5c64362201ff3b169490ef4cc9780c4ebe2f7df6088d522125cf283be5790.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2273e2465f59f8e6e064aded4c0a051c480294f9b336cb8b374e8af14c6bdcad",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/IntegerCompl/Variant8bf5c64362201ff3b169490ef4cc9780c4ebe2f7df6088d522125cf283be5790.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd424ab6-4b54-11e3-1727-bac6ec44c2e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Analysis.ComplexAnalysis.ComplexIntegerComplement.Variantd64382667f04e1b88d67573fb7de297179945946e16e5d7a671264d184923f48.UpperHalfPlane.int_div_mem_integerComplement (z : ℍ) {n : ℤ} (hn : n ≠ 0) :
    n / (z : ℂ) ∈ ℂ_ℤ := by
  rintro ⟨_, hm⟩
  have : (n / (z : ℂ)).im ≠ 0 := by simp [div_im, z.ne_zero, hn, z.im_ne_zero]
  simpa [← hm]

end Complex
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/IntegerCompl/Variant8bf5c64362201ff3b169490ef4cc9780c4ebe2f7df6088d522125cf283be5790.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/IntegerCompl/Variant8bf5c64362201ff3b169490ef4cc9780c4ebe2f7df6088d522125cf283be5790.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a91fbe653d5c2ad4b08b47ee0307273977aec435` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
