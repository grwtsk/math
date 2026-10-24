# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ec82dc11eb350ae2fd01fde1a45e51cccd14a5cb717efd9f4959ce8ff2ae1fee",
  "kind": "example",
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
  "slug": "example--d055eda2ced40fd420c699f7",
  "source": {
    "blob": "eaeb7f73fad1480758e155dde57f130ca597d370",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 478,
    "line": 477,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RootOperatorStatements/Variant646d823d50c7f037ac3762ff26ba9c1a2701dad0d26a8b3341b3ef2c7e74abd8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d055eda2ced40fd420c699f7da73b0bc73dee883ae6581897174d612c0ee1529",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RootOperatorStatements/Variant646d823d50c7f037ac3762ff26ba9c1a2701dad0d26a8b3341b3ef2c7e74abd8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ec82dc11eb350ae2fd01fde1a45e51cccd14a5cb717efd9f4959ce8ff2ae1fee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 477–478.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (g : ℝ → ℝ) (f : FullH) : vector g f = ∫ a : ℝ, (g a : ℂ) • fullShift a f := rfl
-- 07
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RootOperatorStatements/Variant646d823d50c7f037ac3762ff26ba9c1a2701dad0d26a8b3341b3ef2c7e74abd8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RootOperatorStatements/Variant646d823d50c7f037ac3762ff26ba9c1a2701dad0d26a8b3341b3ef2c7e74abd8.lean#L477).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eaeb7f73fad1480758e155dde57f130ca597d370` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
