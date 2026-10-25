# rothNumberNat_isBigOWith_id

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f7b1f131-2b7d-bb80-2750-f815c486ecb1",
  "kind": "theorem",
  "lexical_name": "rothNumberNat_isBigOWith_id",
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
  "slug": "rothnumbernat-isbigowith-id--e1b2d21698078172a2335fc9",
  "source": {
    "blob": "a9a1992b5170adbb81fc9366a26d254779be038f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 526,
    "line": 520,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SalemSpencer/Variant0e414eeb002a7392c83d5c415b313ece2d27c1c60aeab6befcc5f9ec02c8b4a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1b2d21698078172a2335fc915a08915e7f8a218b73dde2ca91a0946ddd3285d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SalemSpencer/Variant0e414eeb002a7392c83d5c415b313ece2d27c1c60aeab6befcc5f9ec02c8b4a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7b1f131-2b7d-bb80-2750-f815c486ecb1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 520–526.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rothNumberNat_isBigOWith_id :
    IsBigOWith 1 atTop (fun N => (rothNumberNat N : ℝ)) fun N => (N : ℝ) :=
  isBigOWith_of_le _ <| by simpa only [Real.norm_coe_nat, Nat.cast_le] using rothNumberNat_le
set_option linter.uppercaseLean3 false in
#align roth_number_nat_is_O_with_id rothNumberNat_isBigOWith_id

/-- The Roth number has the trivial bound `rothNumberNat N = O(N)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SalemSpencer/Variant0e414eeb002a7392c83d5c415b313ece2d27c1c60aeab6befcc5f9ec02c8b4a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SalemSpencer/Variant0e414eeb002a7392c83d5c415b313ece2d27c1c60aeab6befcc5f9ec02c8b4a8.lean#L520).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9a1992b5170adbb81fc9366a26d254779be038f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
