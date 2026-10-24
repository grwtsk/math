# vaughanPairTube_pair_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:971eec56-cec5-579e-4a59-8ffff3123b53",
  "kind": "theorem",
  "lexical_name": "vaughanPairTube_pair_injective",
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
  "slug": "vaughanpairtube-pair-injective--8b93a105ae56ab35f9b8ff3b",
  "source": {
    "blob": "fbb8479620a4a9317f8799a4c1254abb3190bf07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 197,
    "path": "GRWTSK/Algebra/ConductorThreeVaughanTubeScaffold/Variant3479579f05c18980123b84f3e4ed048cfdbb389ca957c3a8da7a726c1020f043.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b93a105ae56ab35f9b8ff3b31df39a159c3da6dde93c4eae83385d4d03992af",
  "verification": {
    "reference": "docs/verification/Algebra/ConductorThreeVaughanTubeScaffold/Variant3479579f05c18980123b84f3e4ed048cfdbb389ca957c3a8da7a726c1020f043.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:971eec56-cec5-579e-4a59-8ffff3123b53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem vaughanPairTube_pair_injective (N : ℕ) :
    Function.Injective
      (fun pair : ℕ × ℕ ↦ vaughanPairTube N pair.1 pair.2) := by
  intro pair pair' htube
  apply vaughanDirection_pair_injective N
  change vaughanDirection N pair.1 pair.2 =
    vaughanDirection N pair'.1 pair'.2
  exact congrArg UnitTube3.direction htube

/-- The tube assigned to an effective Type II Vaughan atom. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ConductorThreeVaughanTubeScaffold/Variant3479579f05c18980123b84f3e4ed048cfdbb389ca957c3a8da7a726c1020f043.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ConductorThreeVaughanTubeScaffold/Variant3479579f05c18980123b84f3e4ed048cfdbb389ca957c3a8da7a726c1020f043.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbb8479620a4a9317f8799a4c1254abb3190bf07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
