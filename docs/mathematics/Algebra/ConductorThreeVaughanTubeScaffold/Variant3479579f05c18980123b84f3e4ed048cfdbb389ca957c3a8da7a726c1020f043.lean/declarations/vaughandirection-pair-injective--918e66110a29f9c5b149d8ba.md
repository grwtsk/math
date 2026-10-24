# vaughanDirection_pair_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fc9d2080-12dc-9386-31f1-27934b890eec",
  "kind": "theorem",
  "lexical_name": "vaughanDirection_pair_injective",
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
  "slug": "vaughandirection-pair-injective--918e66110a29f9c5b149d8ba",
  "source": {
    "blob": "fbb8479620a4a9317f8799a4c1254abb3190bf07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 141,
    "path": "GRWTSK/Algebra/ConductorThreeVaughanTubeScaffold/Variant3479579f05c18980123b84f3e4ed048cfdbb389ca957c3a8da7a726c1020f043.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:918e66110a29f9c5b149d8ba1d543706d2169c13c59958a8378fed8b43a5f62b",
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

Occurrence: `result:fc9d2080-12dc-9386-31f1-27934b890eec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem vaughanDirection_pair_injective (N : ℕ) :
    Function.Injective
      (fun pair : ℕ × ℕ ↦ vaughanDirection N pair.1 pair.2) := by
  intro pair pair' hpair
  change vaughanDirection N pair.1 pair.2 =
    vaughanDirection N pair'.1 pair'.2 at hpair
  have hcoord := congrArg (fun x : SpatialPoint ↦ x (2 : Fin 3)) hpair
  simp [vaughanDirection, NormedSpace.normalize, vaughanRawDirection] at hcoord
  have hnorm : ‖vaughanRawDirection N pair.1 pair.2‖ =
      ‖vaughanRawDirection N pair'.1 pair'.2‖ := by
    simpa [vaughanRawDirection] using hcoord
  apply vaughanRawDirection_pair_injective N
  calc
    vaughanRawDirection N pair.1 pair.2 =
        ‖vaughanRawDirection N pair.1 pair.2‖ •
          vaughanDirection N pair.1 pair.2 :=
      (NormedSpace.norm_smul_normalize _).symm
    _ = ‖vaughanRawDirection N pair'.1 pair'.2‖ •
          vaughanDirection N pair'.1 pair'.2 := by rw [hnorm, hpair]
    _ = vaughanRawDirection N pair'.1 pair'.2 :=
      NormedSpace.norm_smul_normalize _

/-! ## Centered unit segments and closed tubes -/

/-- The basepoint `-ω/2`; the other endpoint is `+ω/2`. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ConductorThreeVaughanTubeScaffold/Variant3479579f05c18980123b84f3e4ed048cfdbb389ca957c3a8da7a726c1020f043.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ConductorThreeVaughanTubeScaffold/Variant3479579f05c18980123b84f3e4ed048cfdbb389ca957c3a8da7a726c1020f043.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbb8479620a4a9317f8799a4c1254abb3190bf07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
