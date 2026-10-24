# _root_.GRWTSK.Analysis.ComplexAnalysis.ComplexIntegerComplement.Variantd64382667f04e1b88d67573fb7de297179945946e16e5d7a671264d184923f48.UpperHalfPlane.coe_mem_integerComplement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d9bb3150-fef3-7a14-88b9-9b3fb7dda41d",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Analysis.ComplexAnalysis.ComplexIntegerComplement.Variantd64382667f04e1b88d67573fb7de297179945946e16e5d7a671264d184923f48.UpperHalfPlane.coe_mem_integerComplement",
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
  "slug": "root-grwtsk-analysis-complexanalysis-complexintegercomplement-variantd64--7f3064d1b0add78c6f4a2974",
  "source": {
    "blob": "a91fbe653d5c2ad4b08b47ee0307273977aec435",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 42,
    "path": "GRWTSK/Analysis/ComplexAnalysis/IntegerCompl/Variant8bf5c64362201ff3b169490ef4cc9780c4ebe2f7df6088d522125cf283be5790.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f3064d1b0add78c6f4a2974183794d203bac6a867436a0013c16c298dcb6ca8",
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

Occurrence: `result:d9bb3150-fef3-7a14-88b9-9b3fb7dda41d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Analysis.ComplexAnalysis.ComplexIntegerComplement.Variantd64382667f04e1b88d67573fb7de297179945946e16e5d7a671264d184923f48.UpperHalfPlane.coe_mem_integerComplement (z : ℍ) : ↑z ∈ ℂ_ℤ :=
  not_exists.mpr fun x hx ↦ ne_intCast z x hx.symm

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/IntegerCompl/Variant8bf5c64362201ff3b169490ef4cc9780c4ebe2f7df6088d522125cf283be5790.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/IntegerCompl/Variant8bf5c64362201ff3b169490ef4cc9780c4ebe2f7df6088d522125cf283be5790.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a91fbe653d5c2ad4b08b47ee0307273977aec435` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
