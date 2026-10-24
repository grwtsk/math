# sumReceiver

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6a3a5989e2dd436142a9c491fa8c5b2174d4ef910f4090fea1dc19d2d0c22fc6",
  "kind": "def",
  "lexical_name": "sumReceiver",
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
  "slug": "sumreceiver--564ef384baaabd40eb3b942d",
  "source": {
    "blob": "d3e5f2cd27ac072e78a91cc01624faae9c5a9e98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 24,
    "line": 21,
    "path": "GRWTSK/Algebra/LinearAlgebra/AcousticSourceSeparation/Variant82c237ddc0add3d05fdff6a5996cc8675a8e95bc4ecedeb29754f2037311eeb2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:564ef384baaabd40eb3b942d4d7b885879001169db3b593a6fe1037d1648c136",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/AcousticSourceSeparation/Variant82c237ddc0add3d05fdff6a5996cc8675a8e95bc4ecedeb29754f2037311eeb2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6a3a5989e2dd436142a9c491fa8c5b2174d4ef910f4090fea1dc19d2d0c22fc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–24.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def sumReceiver (source : SourceChannels) : ℝ → ℝ :=
  fun t => source.1 t + source.2 t

/-- An independently calibrated receiver measures their difference. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/AcousticSourceSeparation/Variant82c237ddc0add3d05fdff6a5996cc8675a8e95bc4ecedeb29754f2037311eeb2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/AcousticSourceSeparation/Variant82c237ddc0add3d05fdff6a5996cc8675a8e95bc4ecedeb29754f2037311eeb2.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3e5f2cd27ac072e78a91cc01624faae9c5a9e98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
