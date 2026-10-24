# coe_to_intFractPair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "82b0538c00ca9b94476e726449951c0d688bd802",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 111,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c5/c54df0f08dd50e9631b9b4875dd8d04c55845fd675237779ab6040bebbfe2b8e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a87e1b74-2bde-5b09-f6d5-e999e53fa54b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:74e824af-2cce-dc27-6ac5-084b369a5ed0",
  "kind": "theorem",
  "lexical_name": "coe_to_intFractPair",
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
  "slug": "coe-to-intfractpair--820eb1209d0f288ebff84e38",
  "source": {
    "blob": "82b0538c00ca9b94476e726449951c0d688bd802",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 111,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variantc54df0f08dd50e9631b9b4875dd8d04c55845fd675237779ab6040bebbfe2b8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:820eb1209d0f288ebff84e38170de1b4265410d0b7ecb1eaf79c7b2d14579617",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variantc54df0f08dd50e9631b9b4875dd8d04c55845fd675237779ab6040bebbfe2b8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74e824af-2cce-dc27-6ac5-084b369a5ed0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_to_intFractPair {b : ℤ} {fr : K} :
    (↑(IntFractPair.mk b fr) : IntFractPair β) = IntFractPair.mk b (↑fr : β) :=
  rfl

end coe

-- Fix a discrete linear ordered division ring with `floor` function.
variable [DivisionRing K] [LinearOrder K] [FloorRing K]

/-- Creates the integer and fractional part of a value `v`, i.e. `⟨⌊v⌋, v - ⌊v⌋⟩`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variantc54df0f08dd50e9631b9b4875dd8d04c55845fd675237779ab6040bebbfe2b8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variantc54df0f08dd50e9631b9b4875dd8d04c55845fd675237779ab6040bebbfe2b8e.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82b0538c00ca9b94476e726449951c0d688bd802` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
