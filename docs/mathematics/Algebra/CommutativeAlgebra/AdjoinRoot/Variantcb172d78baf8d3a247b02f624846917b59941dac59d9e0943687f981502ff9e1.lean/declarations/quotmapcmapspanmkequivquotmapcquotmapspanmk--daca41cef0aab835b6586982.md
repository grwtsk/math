# quotMapCMapSpanMkEquivQuotMapCQuotMapSpanMk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8d7bcf408868a7406675b0bf382a829970c13490060331b95bfa34dd9fbea906",
  "kind": "def",
  "lexical_name": "quotMapCMapSpanMkEquivQuotMapCQuotMapSpanMk",
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
  "slug": "quotmapcmapspanmkequivquotmapcquotmapspanmk--daca41cef0aab835b6586982",
  "source": {
    "blob": "30ac02ac2ad92d33765b0ebb6d36bbeb2383fd1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 762,
    "line": 754,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/AdjoinRoot/Variantcb172d78baf8d3a247b02f624846917b59941dac59d9e0943687f981502ff9e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:daca41cef0aab835b6586982d0030404d5bf348b61e826db4428cb891c9fe056",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/AdjoinRoot/Variantcb172d78baf8d3a247b02f624846917b59941dac59d9e0943687f981502ff9e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8d7bcf408868a7406675b0bf382a829970c13490060331b95bfa34dd9fbea906`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 754–762.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def quotMapCMapSpanMkEquivQuotMapCQuotMapSpanMk :
    AdjoinRoot f ⧸ (I.map (C : R →+* R[X])).map (Ideal.Quotient.mk (span ({f} : Set R[X]))) ≃+*
      (R[X] ⧸ I.map (C : R →+* R[X])) ⧸
        (span ({f} : Set R[X])).map (Ideal.Quotient.mk (I.map (C : R →+* R[X]))) :=
  quotQuotEquivComm (Ideal.span ({f} : Set R[X])) (I.map (C : R →+* R[X]))
set_option linter.uppercaseLean3 false in
#align adjoin_root.quot_map_C_map_span_mk_equiv_quot_map_C_quot_map_span_mk AdjoinRoot.quotMapCMapSpanMkEquivQuotMapCQuotMapSpanMk

-- This lemma should have the simp tag but this causes a lint issue.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/AdjoinRoot/Variantcb172d78baf8d3a247b02f624846917b59941dac59d9e0943687f981502ff9e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/AdjoinRoot/Variantcb172d78baf8d3a247b02f624846917b59941dac59d9e0943687f981502ff9e1.lean#L754).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30ac02ac2ad92d33765b0ebb6d36bbeb2383fd1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
