# eventually_lt_add_pos_of_limsup_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e3af1db-ff63-8e13-91d4-4f8c0545564c",
  "kind": "theorem",
  "lexical_name": "eventually_lt_add_pos_of_limsup_le",
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
  "slug": "eventually-lt-add-pos-of-limsup-le--91ed701a435826b14a973344",
  "source": {
    "blob": "c0c5a8bc2d9b27dfadc6b87b00f4c1d767d29a57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 640,
    "line": 630,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LiminfLimsup/Variantd3a4f458546b16d3cb9bdebffdc15bf746f979d361197f94e31ec424cb04c402.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:91ed701a435826b14a973344edd52b4f521e5ec352f22a44c159aca59195453c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LiminfLimsup/Variantd3a4f458546b16d3cb9bdebffdc15bf746f979d361197f94e31ec424cb04c402.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e3af1db-ff63-8e13-91d4-4f8c0545564c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 630–640.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventually_lt_add_pos_of_limsup_le [Preorder β] [AddZeroClass α] [AddLeftStrictMono α]
    {x ε : α} {u : β → α} (hu_bdd : IsBoundedUnder (· ≤ ·) atTop u) (hu : Filter.limsup u atTop ≤ x)
    (hε : 0 < ε) :
    ∀ᶠ b : β in atTop, u b < x + ε :=
  eventually_lt_of_limsup_lt (lt_of_le_of_lt hu (lt_add_of_pos_right x hε)) hu_bdd

/-- If `Filter.limsup u atTop ≤ x`, then for all `ε > 0`, there exists a positive natural
number `n` such that `u n < x + ε`. -/
@[to_dual exists_lt_of_le_liminf
/-- If `x ≤ Filter.liminf u atTop`, then for all `ε < 0`, there exists a positive natural
number `n` such that ` x + ε < u n`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LiminfLimsup/Variantd3a4f458546b16d3cb9bdebffdc15bf746f979d361197f94e31ec424cb04c402.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LiminfLimsup/Variantd3a4f458546b16d3cb9bdebffdc15bf746f979d361197f94e31ec424cb04c402.lean#L630).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0c5a8bc2d9b27dfadc6b87b00f4c1d767d29a57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
