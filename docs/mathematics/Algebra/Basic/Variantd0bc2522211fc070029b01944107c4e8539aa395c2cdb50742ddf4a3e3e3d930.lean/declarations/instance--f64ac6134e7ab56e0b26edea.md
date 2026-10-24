# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2f24cc86fc66a34984b1be4a75467cec81e3bf3282bb25ece8b0e2338f64c1de",
  "kind": "instance",
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
  "slug": "instance--f64ac6134e7ab56e0b26edea",
  "source": {
    "blob": "8bbdcd156ad997001ba42e2c17c88758308b3382",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 173,
    "path": "GRWTSK/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f64ac6134e7ab56e0b26edead4414251d7ca1a50ae40c01ff145508a2561f2c6",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2f24cc86fc66a34984b1be4a75467cec81e3bf3282bb25ece8b0e2338f64c1de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) Field.toGrindField : Lean.Grind.Field K :=
  { CommRing.toGrindCommRing K, ‹Field K› with
    zpow := ⟨fun a n => a^n⟩
    zpow_zero a := by simp
    zpow_succ a n := by
      by_cases h : a = 0
      · rw [← Int.natCast_add_one, zpow_natCast, zpow_natCast, pow_succ]
      · rw [zpow_add_one₀ h]
    zpow_neg a n := by simp
    zero_ne_one := zero_ne_one }

attribute [local simp] mul_assoc mul_comm mul_left_comm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bbdcd156ad997001ba42e2c17c88758308b3382` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
