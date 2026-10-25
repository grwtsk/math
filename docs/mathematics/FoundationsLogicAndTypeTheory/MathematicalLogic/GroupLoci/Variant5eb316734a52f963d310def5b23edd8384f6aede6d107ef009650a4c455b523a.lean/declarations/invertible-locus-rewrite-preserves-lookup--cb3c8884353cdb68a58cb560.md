# invertible_locus_rewrite_preserves_lookup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b91c2e87-6fe2-181e-9d57-3737ec621e44",
  "kind": "theorem",
  "lexical_name": "invertible_locus_rewrite_preserves_lookup",
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
  "slug": "invertible-locus-rewrite-preserves-lookup--cb3c8884353cdb68a58cb560",
  "source": {
    "blob": "e5bbf164e59ab857e865db2da09ec4db2344f3c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 169,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/GroupLoci/Variant5eb316734a52f963d310def5b23edd8384f6aede6d107ef009650a4c455b523a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb3c8884353cdb68a58cb560cb67d2387205b17ee3cb28be369af7ac68246039",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/GroupLoci/Variant5eb316734a52f963d310def5b23edd8384f6aede6d107ef009650a4c455b523a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b91c2e87-6fe2-181e-9d57-3737ec621e44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem invertible_locus_rewrite_preserves_lookup {α : Type}
    {source target : CompressedString α}
    (rewrite : InvertibleLocusRewrite source target) :
    PreservesSemanticsAndLookup source target := by
  induction rewrite with
  | refl source =>
      exact preserves_semantics_and_lookup_refl source
  | symm rewrite ih =>
      exact preserves_semantics_and_lookup_symm_for_loci ih
  | trans left right leftIh rightIh =>
      exact preserves_semantics_and_lookup_trans leftIh rightIh

end Think.Compression.Syntax
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/GroupLoci/Variant5eb316734a52f963d310def5b23edd8384f6aede6d107ef009650a4c455b523a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/GroupLoci/Variant5eb316734a52f963d310def5b23edd8384f6aede6d107ef009650a4c455b523a.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5bbf164e59ab857e865db2da09ec4db2344f3c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
