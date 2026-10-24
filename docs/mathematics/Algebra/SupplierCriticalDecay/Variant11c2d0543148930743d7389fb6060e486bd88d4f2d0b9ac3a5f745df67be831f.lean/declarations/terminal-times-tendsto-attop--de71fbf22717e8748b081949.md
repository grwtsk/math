# terminal_times_tendsto_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:45aefd05-6e4f-4880-d3c7-939e560699d7",
  "kind": "theorem",
  "lexical_name": "terminal_times_tendsto_atTop",
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
  "slug": "terminal-times-tendsto-attop--de71fbf22717e8748b081949",
  "source": {
    "blob": "602400a08e5b8a7792355c50773dc002a04f3355",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 128,
    "path": "GRWTSK/Algebra/SupplierCriticalDecay/Variant11c2d0543148930743d7389fb6060e486bd88d4f2d0b9ac3a5f745df67be831f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de71fbf22717e8748b08194962e9940048ea0887c42d6e999f0cd2b068e73e94",
  "verification": {
    "reference": "docs/verification/Algebra/SupplierCriticalDecay/Variant11c2d0543148930743d7389fb6060e486bd88d4f2d0b9ac3a5f745df67be831f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45aefd05-6e4f-4880-d3c7-939e560699d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem terminal_times_tendsto_atTop (T : ℝ) :
    Tendsto (fun n : ℕ ↦ T + (n : ℝ) * criticalStep) atTop atTop :=
  tendsto_atTop_add_const_left _ T (tendsto_natCast_atTop_atTop.atTop_mul_const criticalStep_pos)

/-- A pointwise classical envelope gives an explicit bound for the actual
weighted tail. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SupplierCriticalDecay/Variant11c2d0543148930743d7389fb6060e486bd88d4f2d0b9ac3a5f745df67be831f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SupplierCriticalDecay/Variant11c2d0543148930743d7389fb6060e486bd88d4f2d0b9ac3a5f745df67be831f.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `602400a08e5b8a7792355c50773dc002a04f3355` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
