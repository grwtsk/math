# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f77b9ea6770fd3770feb3d97c7bd4f81aa82c20eed506365c214c586b9081990",
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
  "slug": "example--ad5b099d819f0f99d8d2fd42",
  "source": {
    "blob": "f1fc284021061e06bfe799daacc45ee816565bb4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 546,
    "line": 526,
    "path": "GRWTSK/Algebra/NormNum/Variant6b44e3aaec4605d5ba6ae0c5aa71bf659e7b7c24197e4d2afc1a1c31369a29b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ad5b099d819f0f99d8d2fd4248b1ff65753cb1ab90795fa50e5765f35c1c203e",
  "verification": {
    "reference": "docs/verification/Algebra/NormNum/Variant6b44e3aaec4605d5ba6ae0c5aa71bf659e7b7c24197e4d2afc1a1c31369a29b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f77b9ea6770fd3770feb3d97c7bd4f81aa82c20eed506365c214c586b9081990`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 526–546.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example : 1 = 1 := by norm_num1
-- #norm_num 2^4-1 ∣ 2^16-1
-- example : 2^4-1 ∣ 2^16-1 := by norm_num1
-- #norm_num (3 : Real) ^ (-2 : ℤ) = 1/9
-- example : (3 : Real) ^ (-2 : ℤ) = 1/9 := by norm_num1

section norm_num_cmd_variable

-- [fixme] obsolete?
-- variables (x y : ℕ)
-- #norm_num bit0 x < bit0 (y + x) ↔ 0 < y
-- example : bit0 x < bit0 (y + x) ↔ 0 < y := by norm_num1
-- #norm_num bit0 x < bit0 (y + (2^10%11 - 1) + x) ↔ 0 < y
-- example : bit0 x < bit0 (y + (2^10%11 - 1) + x) ↔ 0 < y := by norm_num1
-- #norm_num bit0 x < bit0 (y + (2^10%11 - 1) + x) + 3*2-6 ↔ 0 < y
-- example : bit0 x < bit0 (y + (2^10%11 - 1) + x) + 3*2-6 ↔ 0 < y := by norm_num1

end norm_num_cmd_variable

section norm_num_erase

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/NormNum/Variant6b44e3aaec4605d5ba6ae0c5aa71bf659e7b7c24197e4d2afc1a1c31369a29b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/NormNum/Variant6b44e3aaec4605d5ba6ae0c5aa71bf659e7b7c24197e4d2afc1a1c31369a29b7.lean#L526).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1fc284021061e06bfe799daacc45ee816565bb4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
