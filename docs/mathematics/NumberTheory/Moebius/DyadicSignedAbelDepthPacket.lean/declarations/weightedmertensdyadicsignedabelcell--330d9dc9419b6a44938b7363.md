# weightedMertensDyadicSignedAbelCell

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2427fdd6c7aeabde2a11f3867000a6ae9d8fbc3e3df72ae328dbdce46e0a164b",
  "kind": "def",
  "lexical_name": "weightedMertensDyadicSignedAbelCell",
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
  "slug": "weightedmertensdyadicsignedabelcell--330d9dc9419b6a44938b7363",
  "source": {
    "blob": "17c231f572462f054985fb3e8bebd8ab7985e3a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 24,
    "line": 19,
    "path": "GRWTSK/NumberTheory/Moebius/DyadicSignedAbelDepthPacket.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:330d9dc9419b6a44938b73633b5c6ac270e7e77b5b11a254213c789d713b637c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/DyadicSignedAbelDepthPacket.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2427fdd6c7aeabde2a11f3867000a6ae9d8fbc3e3df72ae328dbdce46e0a164b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–24.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def weightedMertensDyadicSignedAbelCell (j h t : ℕ) : ℝ :=
  if 1 ≤ h ∧ h < 2 ^ (j + 1) ∧ t < 2 ^ (j + 1) - h - 1 then
    2 * mertensTwoPointPrefix h (t + 1) *
      dyadicMertensShiftWeightDrop j h t
  else 0

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/DyadicSignedAbelDepthPacket.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/DyadicSignedAbelDepthPacket.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17c231f572462f054985fb3e8bebd8ab7985e3a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
