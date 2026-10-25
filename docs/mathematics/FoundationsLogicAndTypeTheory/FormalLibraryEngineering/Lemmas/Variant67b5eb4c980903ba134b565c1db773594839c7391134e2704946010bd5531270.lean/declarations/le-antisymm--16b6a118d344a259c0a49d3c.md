# le_antisymm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dfb02294-08b0-1bb6-f78f-9106907856bb",
  "kind": "theorem",
  "lexical_name": "le_antisymm",
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
  "slug": "le-antisymm--16b6a118d344a259c0a49d3c",
  "source": {
    "blob": "9905598baeed6a230b75dfce7bf15cd3695d9f80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 763,
    "line": 757,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant67b5eb4c980903ba134b565c1db773594839c7391134e2704946010bd5531270.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16b6a118d344a259c0a49d3c780054480a11ad3a5b1ead771a54a6da0cdab567",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant67b5eb4c980903ba134b565c1db773594839c7391134e2704946010bd5531270.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dfb02294-08b0-1bb6-f78f-9106907856bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 757–763.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem le_antisymm {a b : Rat} (hab : a ≤ b) (hba : b ≤ a) : a = b := by
  rw [Rat.le_iff_sub_nonneg] at hab hba
  rw [Rat.sub_eq_add_neg] at hba
  rw [← Rat.neg_sub, Rat.sub_eq_add_neg] at hab
  have := congrArg (· + b) (Rat.nonneg_antisymm hba hab)
  simpa only [Rat.add_assoc, Rat.neg_add_cancel, Rat.zero_add, Rat.add_zero] using this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant67b5eb4c980903ba134b565c1db773594839c7391134e2704946010bd5531270.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant67b5eb4c980903ba134b565c1db773594839c7391134e2704946010bd5531270.lean#L757).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9905598baeed6a230b75dfce7bf15cd3695d9f80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
