# StrictAnti.prodMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3bd90c2a60a0397aa39590274d1d028ef22b95c3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 496,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d0/d0ef3c1bcbcc6bc78a8664c64e6b6e12ad72d80b42f3a44c7d83a05975aa778f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bd10059e-bb14-d9d3-c908-cf758de6974f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9dcb33c1-c3cf-3ab3-2826-44f84f65d2dd",
  "kind": "theorem",
  "lexical_name": "StrictAnti.prodMap",
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
  "slug": "strictanti-prodmap--4e893d85630e1c60cf7048bb",
  "source": {
    "blob": "3bd90c2a60a0397aa39590274d1d028ef22b95c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 512,
    "line": 496,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantd0ef3c1bcbcc6bc78a8664c64e6b6e12ad72d80b42f3a44c7d83a05975aa778f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e893d85630e1c60cf7048bb576367779c6651f17f4171c379bcd37d0cdcc7b4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantd0ef3c1bcbcc6bc78a8664c64e6b6e12ad72d80b42f3a44c7d83a05975aa778f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9dcb33c1-c3cf-3ab3-2826-44f84f65d2dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 496–512.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem StrictAnti.prodMap (hf : StrictAnti f) (hg : StrictAnti g) : StrictAnti (Prod.map f g) :=
  fun a b ↦ by
  simp only [Prod.lt_iff]
  exact Or.imp (And.imp hf.imp hg.antitone.imp) (And.imp hf.antitone.imp hg.imp)

@[deprecated (since := "2025-04-18")]
alias StrictAnti.prod_map := StrictAnti.prodMap

end PartialOrder

/-! ### Pi types -/

namespace Function

variable [Preorder α] [DecidableEq ι] [∀ i, Preorder (π i)] {f : ∀ i, π i} {i : ι}

-- Porting note: Dot notation breaks in `f.update i`
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantd0ef3c1bcbcc6bc78a8664c64e6b6e12ad72d80b42f3a44c7d83a05975aa778f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantd0ef3c1bcbcc6bc78a8664c64e6b6e12ad72d80b42f3a44c7d83a05975aa778f.lean#L496).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3bd90c2a60a0397aa39590274d1d028ef22b95c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
