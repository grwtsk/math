# projectiveFamilyFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2a0d7706711f14ee96e0e03afb6647720c6770313ac7d3c63ce2cef6df513110",
  "kind": "def",
  "lexical_name": "projectiveFamilyFun",
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
  "slug": "projectivefamilyfun--158a3ea5b7b0d84e2a44f2a0",
  "source": {
    "blob": "4dd1a3da3cf6ca0c3938b43332b34cba7df200be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 79,
    "path": "GRWTSK/Analysis/MeasureTheory/ProjectiveFamilyContent/Varianta5654e27a7aeb7e28f6913726a376c45bc792025ae828261782d3fbeb3bb7687.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:158a3ea5b7b0d84e2a44f2a0f59c23d5072bc4ede703539a3ad86e134fb3524b",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/ProjectiveFamilyContent/Varianta5654e27a7aeb7e28f6913726a376c45bc792025ae828261782d3fbeb3bb7687.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2a0d7706711f14ee96e0e03afb6647720c6770313ac7d3c63ce2cef6df513110`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def projectiveFamilyFun (P : ∀ J : Finset ι, Measure (Π j : J, α j))
    (s : Set (Π i, α i)) : ℝ≥0∞ :=
  if hs : s ∈ measurableCylinders α
    then P (measurableCylinders.finset hs) (measurableCylinders.set hs) else 0

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/ProjectiveFamilyContent/Varianta5654e27a7aeb7e28f6913726a376c45bc792025ae828261782d3fbeb3bb7687.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/ProjectiveFamilyContent/Varianta5654e27a7aeb7e28f6913726a376c45bc792025ae828261782d3fbeb3bb7687.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4dd1a3da3cf6ca0c3938b43332b34cba7df200be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
