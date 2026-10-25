# reducedProductLT_wellFounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba819611-a3c2-7a51-23d5-1e9b253f5970",
  "kind": "theorem",
  "lexical_name": "reducedProductLT_wellFounded",
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
  "slug": "reducedproductlt-wellfounded--767cedba52121a6159aa1529",
  "source": {
    "blob": "36d237243ba4791c956bfa2f6d12edb9dc9a6c19",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 65,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/ReducedProduct/Variant06f8ee2f990672d3411f7ec431069db5dedb93251f6aeb16f866d04a57e7c856.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:767cedba52121a6159aa15291f59ae40dd4d8459262642cb89b7e69fb8c1fa22",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/ReducedProduct/Variant06f8ee2f990672d3411f7ec431069db5dedb93251f6aeb16f866d04a57e7c856.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba819611-a3c2-7a51-23d5-1e9b253f5970`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reducedProductLT_wellFounded {I : Type u} (F : Filter I)
    [NeBot F] [CountableInterFilter F] : WellFounded (@ReducedProductLT.{u, v} I F) := by
  classical
  apply (InvImage.wf (fun q : ReducedOrdinalProduct.{u, v} F ↦ q.out)
    (reducedOrdinalLT_wellFounded F)).mono
  intro x y h
  change ReducedOrdinalLT F x.out y.out
  change ReducedProductLT F (Quotient.mk _ x.out) (Quotient.mk _ y.out)
  simpa only [Quotient.out_eq] using h

end FormalResearch.MathematicalTooling.Coverage
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/ReducedProduct/Variant06f8ee2f990672d3411f7ec431069db5dedb93251f6aeb16f866d04a57e7c856.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/ReducedProduct/Variant06f8ee2f990672d3411f7ec431069db5dedb93251f6aeb16f866d04a57e7c856.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36d237243ba4791c956bfa2f6d12edb9dc9a6c19` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
