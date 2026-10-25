# cornerCycle_bottomLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2a976f9c-4bac-7642-143d-d243c5268268",
  "kind": "theorem",
  "lexical_name": "cornerCycle_bottomLeft",
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
  "slug": "cornercycle-bottomleft--b7195798bd1c5fbce80a584b",
  "source": {
    "blob": "93f13f1df2a4a5a448aa0d4203cde27fc0167082",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 185,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellTorsion/Variante73d4291708d321f74f8527a070b116d995733e80ac22079d5f6cac0d004fc10.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7195798bd1c5fbce80a584ba9c531ec98f4aa20e10b5ad55f20c0b5cce2959a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellTorsion/Variante73d4291708d321f74f8527a070b116d995733e80ac22079d5f6cac0d004fc10.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a976f9c-4bac-7642-143d-d243c5268268`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cornerCycle_bottomLeft (s : GridShape) :
    (cornerCycleTorsion s).perm (cornerBottomLeft s) = cornerBottomRight s := by
  simp only [cornerCycleTorsion]
  rw [Equiv.trans_apply, Equiv.trans_apply]
  rw [Equiv.swap_apply_of_ne_of_ne
    (cornerBottomLeft_ne_topLeft s) (cornerBottomLeft_ne_topRight s)]
  rw [Equiv.swap_apply_of_ne_of_ne
    (cornerBottomLeft_ne_topRight s) (cornerBottomLeft_ne_bottomRight s)]
  rw [Equiv.swap_apply_right]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellTorsion/Variante73d4291708d321f74f8527a070b116d995733e80ac22079d5f6cac0d004fc10.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellTorsion/Variante73d4291708d321f74f8527a070b116d995733e80ac22079d5f6cac0d004fc10.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93f13f1df2a4a5a448aa0d4203cde27fc0167082` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
