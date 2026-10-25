# Retract.hasInjectiveDimensionLT

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:09a340a2-5035-69e5-77a5-d2a95bbe6f1f",
  "kind": "lemma",
  "lexical_name": "Retract.hasInjectiveDimensionLT",
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
  "slug": "retract-hasinjectivedimensionlt--da6610f3fa1d3daac67ca43d",
  "source": {
    "blob": "1411411a6997a92ee1cea1cf719a7666e4b3c85d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 172,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variantf3b88db7743173faf8da9df1204e4db94906731e8651ccebe4cda50db7c11092.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da6610f3fa1d3daac67ca43dc99e4689bc548081a5a4b77f753f299eed32188c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variantf3b88db7743173faf8da9df1204e4db94906731e8651ccebe4cda50db7c11092.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09a340a2-5035-69e5-77a5-d2a95bbe6f1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Retract.hasInjectiveDimensionLT {X Y : C} (h : Retract X Y) (n : ℕ)
    [HasInjectiveDimensionLT Y n] :
    HasInjectiveDimensionLT X n := by
  let := HasExt.standard C
  rw [hasInjectiveDimensionLT_iff]
  intro i hi T x
  rw [← x.comp_mk₀_id, ← h.retract, ← Ext.mk₀_comp_mk₀, ← Ext.comp_assoc_of_second_deg_zero,
    (x.comp (Ext.mk₀ h.i) (add_zero i)).eq_zero_of_hasInjectiveDimensionLT n hi, Ext.zero_comp]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variantf3b88db7743173faf8da9df1204e4db94906731e8651ccebe4cda50db7c11092.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variantf3b88db7743173faf8da9df1204e4db94906731e8651ccebe4cda50db7c11092.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1411411a6997a92ee1cea1cf719a7666e4b3c85d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
