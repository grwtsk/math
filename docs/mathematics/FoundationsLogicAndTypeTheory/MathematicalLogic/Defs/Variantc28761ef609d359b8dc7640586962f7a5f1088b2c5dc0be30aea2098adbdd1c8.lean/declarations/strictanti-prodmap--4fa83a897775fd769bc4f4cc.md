# StrictAnti.prodMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:11533061-1ac3-a61b-c751-6ba465004d0f",
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
  "slug": "strictanti-prodmap--4fa83a897775fd769bc4f4cc",
  "source": {
    "blob": "aa8b157e1ac3b670016cfd28f61c9bab097f6690",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 520,
    "line": 504,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantc28761ef609d359b8dc7640586962f7a5f1088b2c5dc0be30aea2098adbdd1c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4fa83a897775fd769bc4f4cc9e9b25a0cc310de1a613d4d27f651fa50057bacd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantc28761ef609d359b8dc7640586962f7a5f1088b2c5dc0be30aea2098adbdd1c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11533061-1ac3-a61b-c751-6ba465004d0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 504–520.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantc28761ef609d359b8dc7640586962f7a5f1088b2c5dc0be30aea2098adbdd1c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantc28761ef609d359b8dc7640586962f7a5f1088b2c5dc0be30aea2098adbdd1c8.lean#L504).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa8b157e1ac3b670016cfd28f61c9bab097f6690` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
