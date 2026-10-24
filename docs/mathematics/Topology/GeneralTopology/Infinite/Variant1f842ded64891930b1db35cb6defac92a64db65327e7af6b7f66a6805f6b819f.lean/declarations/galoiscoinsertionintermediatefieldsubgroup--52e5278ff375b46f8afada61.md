# GaloisCoinsertionIntermediateFieldSubgroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3971cd4d5f3a76116edc6596db71d301d362263ee2cd310e4c0961e8c4520de0",
  "kind": "def",
  "lexical_name": "GaloisCoinsertionIntermediateFieldSubgroup",
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
  "slug": "galoiscoinsertionintermediatefieldsubgroup--52e5278ff375b46f8afada61",
  "source": {
    "blob": "f9523833f551d886ec45d137d31d72c4f83cbbea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 217,
    "path": "GRWTSK/Topology/GeneralTopology/Infinite/Variant1f842ded64891930b1db35cb6defac92a64db65327e7af6b7f66a6805f6b819f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:52e5278ff375b46f8afada61c1e3fb9259a7228551bc20b17bc58e3daaef2065",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Infinite/Variant1f842ded64891930b1db35cb6defac92a64db65327e7af6b7f66a6805f6b819f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3971cd4d5f3a76116edc6596db71d301d362263ee2cd310e4c0961e8c4520de0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def GaloisCoinsertionIntermediateFieldSubgroup [IsGalois k K] :
    GaloisCoinsertion (OrderDual.toDual ∘ fun (E : IntermediateField k K) ↦ E.fixingSubgroup)
      ((fun (H : Subgroup Gal(K/k)) ↦ IntermediateField.fixedField H) ∘ OrderDual.toDual) where
  choice H _ := IntermediateField.fixedField H
  gc E H := (IntermediateField.le_iff_le H E).symm
  u_l_le K := le_of_eq (fixedField_fixingSubgroup K)
  choice_eq _ _ := rfl

open IntermediateField in
/-- If `H` is a closed normal subgroup of `Gal(K / k)`,
then `Gal(fixedField H / k)` is isomorphic to `Gal(K / k) ⧸ H`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Infinite/Variant1f842ded64891930b1db35cb6defac92a64db65327e7af6b7f66a6805f6b819f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Infinite/Variant1f842ded64891930b1db35cb6defac92a64db65327e7af6b7f66a6805f6b819f.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9523833f551d886ec45d137d31d72c4f83cbbea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
