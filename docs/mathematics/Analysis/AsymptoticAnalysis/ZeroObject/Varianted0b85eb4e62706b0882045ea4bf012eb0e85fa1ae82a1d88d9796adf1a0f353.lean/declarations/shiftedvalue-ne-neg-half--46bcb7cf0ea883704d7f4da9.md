# shiftedValue_ne_neg_half

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2994d2bed9d51eaff0ce223228f80d3e56b42dc8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 234,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/ed0b85eb4e62706b0882045ea4bf012eb0e85fa1ae82a1d88d9796adf1a0f353.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9990f400-e345-8b27-162f-70a99d084cf0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3aaba1d1-5021-47a5-069e-b35bb4b2b779",
  "kind": "theorem",
  "lexical_name": "shiftedValue_ne_neg_half",
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
  "slug": "shiftedvalue-ne-neg-half--46bcb7cf0ea883704d7f4da9",
  "source": {
    "blob": "2994d2bed9d51eaff0ce223228f80d3e56b42dc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 234,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ZeroObject/Varianted0b85eb4e62706b0882045ea4bf012eb0e85fa1ae82a1d88d9796adf1a0f353.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46bcb7cf0ea883704d7f4da969c4b0aafeb3622204e2ca1cf5f4421fa35e665b",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ZeroObject/Varianted0b85eb4e62706b0882045ea4bf012eb0e85fa1ae82a1d88d9796adf1a0f353.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3aaba1d1-5021-47a5-069e-b35bb4b2b779`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shiftedValue_ne_neg_half (o : ZeroOccurrence) : shiftedValue o ≠ -(1 / 2) := by
  intro h
  have hh := congrArg Complex.re h
  have hs := (shiftedValue_strip o).1
  norm_num at hh
  linarith

/-- The exact remaining real-axis theorem. This declaration is a proposition, not an axiom. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ZeroObject/Varianted0b85eb4e62706b0882045ea4bf012eb0e85fa1ae82a1d88d9796adf1a0f353.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ZeroObject/Varianted0b85eb4e62706b0882045ea4bf012eb0e85fa1ae82a1d88d9796adf1a0f353.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2994d2bed9d51eaff0ce223228f80d3e56b42dc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
