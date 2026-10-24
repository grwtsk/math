# addHaarScalarFactor_smul_inv_eq_distribHaarChar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "71f4a4f6d961a074fb550cfd4c205b29ebfe343b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 65,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/05/0508cbda7a238558f75f9f1dcc592719560964cafefc7ce0ad686f5a6b88279d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:68f97d78-e368-f21d-3de7-ebc082739d43",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fe41c7cd-b4f2-faa0-3912-2c041a883ddd",
  "kind": "lemma",
  "lexical_name": "addHaarScalarFactor_smul_inv_eq_distribHaarChar",
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
  "slug": "addhaarscalarfactor-smul-inv-eq-distribhaarchar--706d88657e91d0e8d0b360bb",
  "source": {
    "blob": "71f4a4f6d961a074fb550cfd4c205b29ebfe343b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 65,
    "path": "GRWTSK/Analysis/MeasureTheory/DistribChar/Variant0508cbda7a238558f75f9f1dcc592719560964cafefc7ce0ad686f5a6b88279d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:706d88657e91d0e8d0b360bb370384a695f55592636a21d935482463daf28eb6",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/DistribChar/Variant0508cbda7a238558f75f9f1dcc592719560964cafefc7ce0ad686f5a6b88279d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe41c7cd-b4f2-faa0-3912-2c041a883ddd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma addHaarScalarFactor_smul_inv_eq_distribHaarChar (g : G) :
    addHaarScalarFactor μ ((DomMulAct.mk g)⁻¹ • μ) = distribHaarChar A g := by
  rw [← addHaarScalarFactor_domSMul _ _ (DomMulAct.mk g)]
  simp_rw [← mul_smul, mul_inv_cancel, one_smul]
  exact addHaarScalarFactor_smul_eq_distribHaarChar ..

variable (μ) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/DistribChar/Variant0508cbda7a238558f75f9f1dcc592719560964cafefc7ce0ad686f5a6b88279d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/DistribChar/Variant0508cbda7a238558f75f9f1dcc592719560964cafefc7ce0ad686f5a6b88279d.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71f4a4f6d961a074fb550cfd4c205b29ebfe343b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
