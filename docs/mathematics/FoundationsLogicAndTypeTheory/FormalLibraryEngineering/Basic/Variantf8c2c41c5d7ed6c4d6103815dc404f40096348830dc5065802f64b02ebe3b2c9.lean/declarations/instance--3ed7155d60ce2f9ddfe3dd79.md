# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:50c449b0765afc47d438d05df584582ee25cf9fbfbf7b49b48a4d48a8de776c3",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--3ed7155d60ce2f9ddfe3dd79",
  "source": {
    "blob": "7aeabed2c4e3218f70b9584fb182a068d77b464b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 298,
    "line": 289,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf8c2c41c5d7ed6c4d6103815dc404f40096348830dc5065802f64b02ebe3b2c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3ed7155d60ce2f9ddfe3dd791ef4a9ee7c2c3efc9c21b726059ff6c1748ba54d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf8c2c41c5d7ed6c4d6103815dc404f40096348830dc5065802f64b02ebe3b2c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:50c449b0765afc47d438d05df584582ee25cf9fbfbf7b49b48a4d48a8de776c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 289–298.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [ToInt α (IntInterval.co lo hi)] [AddCommGroup α] [ToInt.Zero α (IntInterval.co lo hi)] [ToInt.Add α (IntInterval.co lo hi)] : ToInt.Neg α (IntInterval.co lo hi) where
  toInt_neg x := by
    have := (ToInt.Add.toInt_add (-x) x).symm
    rw [AddCommGroup.neg_add_cancel, ToInt.Zero.toInt_zero, ← ToInt.Zero.wrap_zero (α := α)] at this
    rw [IntInterval.wrap_eq_wrap_iff] at this
    simp at this
    rw [← ToInt.wrap_toInt]
    rw [IntInterval.wrap_eq_wrap_iff]
    simpa

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf8c2c41c5d7ed6c4d6103815dc404f40096348830dc5065802f64b02ebe3b2c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf8c2c41c5d7ed6c4d6103815dc404f40096348830dc5065802f64b02ebe3b2c9.lean#L289).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7aeabed2c4e3218f70b9584fb182a068d77b464b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
