# noncommCoprod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:07d0a978fcc69971fa4f0609f3ccb418142a974d0ac41c40e02c192526c2f5f8",
  "kind": "def",
  "lexical_name": "noncommCoprod",
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
  "slug": "noncommcoprod--85c05a6ec25886eee0cc104f",
  "source": {
    "blob": "6e6893eb3d1b523f69455a607bffde5d5b33fc18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 86,
    "path": "GRWTSK/Algebra/GroupTheory/NoncommCoprod/Variant3c3328d98f28bd81f0c1c3adaecd049324ed9b9647874ecf7cbb91920135ffc2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:85c05a6ec25886eee0cc104f2191d80eec25f368fd0475becb1920340893f645",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/NoncommCoprod/Variant3c3328d98f28bd81f0c1c3adaecd049324ed9b9647874ecf7cbb91920135ffc2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:07d0a978fcc69971fa4f0609f3ccb418142a974d0ac41c40e02c192526c2f5f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def noncommCoprod : M × N →* P where
  toFun := fun mn ↦ (f mn.fst) * (g mn.snd)
  map_one' := by simp only [Prod.fst_one, Prod.snd_one, map_one, mul_one]
  __ := f.toMulHom.noncommCoprod g.toMulHom comm

/-- Variant of `MonoidHom.noncommCoprod_apply` with the product written in the other direction. -/
@[to_additive
  /-- Variant of `AddMonoidHom.noncommCoprod_apply` with the sum written in the other direction -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/NoncommCoprod/Variant3c3328d98f28bd81f0c1c3adaecd049324ed9b9647874ecf7cbb91920135ffc2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/NoncommCoprod/Variant3c3328d98f28bd81f0c1c3adaecd049324ed9b9647874ecf7cbb91920135ffc2.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e6893eb3d1b523f69455a607bffde5d5b33fc18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
