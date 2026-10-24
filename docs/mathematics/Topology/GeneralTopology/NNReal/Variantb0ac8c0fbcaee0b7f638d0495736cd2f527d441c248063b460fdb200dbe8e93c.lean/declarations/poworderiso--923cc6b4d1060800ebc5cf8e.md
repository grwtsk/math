# powOrderIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4330d2b7d4bf60d4a992fce065a23b37eb961d04c4b9c7938261b8340d7b5d70",
  "kind": "def",
  "lexical_name": "powOrderIso",
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
  "slug": "poworderiso--923cc6b4d1060800ebc5cf8e",
  "source": {
    "blob": "9c0da48c4ccc71fa99973a41e66746de24100ee8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 255,
    "path": "GRWTSK/Topology/GeneralTopology/NNReal/Variantb0ac8c0fbcaee0b7f638d0495736cd2f527d441c248063b460fdb200dbe8e93c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:923cc6b4d1060800ebc5cf8ee0ee5ab8dad051852117b36b43c0955131cd4e4f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NNReal/Variantb0ac8c0fbcaee0b7f638d0495736cd2f527d441c248063b460fdb200dbe8e93c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4330d2b7d4bf60d4a992fce065a23b37eb961d04c4b9c7938261b8340d7b5d70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def powOrderIso (n : ℕ) (hn : n ≠ 0) : ℝ≥0 ≃o ℝ≥0 :=
  StrictMono.orderIsoOfSurjective (fun x ↦ x ^ n) (fun x y h =>
      strictMonoOn_pow hn.bot_lt (zero_le x) (zero_le y) h) <|
    (continuous_id.pow _).surjective (tendsto_pow_atTop hn) <| by
      simpa [OrderBot.atBot_eq, pos_iff_ne_zero]
#align nnreal.pow_order_iso NNReal.powOrderIso

end NNReal
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NNReal/Variantb0ac8c0fbcaee0b7f638d0495736cd2f527d441c248063b460fdb200dbe8e93c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NNReal/Variantb0ac8c0fbcaee0b7f638d0495736cd2f527d441c248063b460fdb200dbe8e93c.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c0da48c4ccc71fa99973a41e66746de24100ee8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
