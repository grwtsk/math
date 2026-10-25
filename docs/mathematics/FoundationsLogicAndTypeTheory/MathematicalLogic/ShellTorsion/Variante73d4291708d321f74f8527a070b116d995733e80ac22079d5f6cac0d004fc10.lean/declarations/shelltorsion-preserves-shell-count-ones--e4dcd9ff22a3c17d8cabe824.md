# shellTorsion_preserves_shell_count_ones

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8de7214f-b2a7-4a96-773d-84eee2abd24d",
  "kind": "theorem",
  "lexical_name": "shellTorsion_preserves_shell_count_ones",
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
  "slug": "shelltorsion-preserves-shell-count-ones--e4dcd9ff22a3c17d8cabe824",
  "source": {
    "blob": "93f13f1df2a4a5a448aa0d4203cde27fc0167082",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 56,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellTorsion/Variante73d4291708d321f74f8527a070b116d995733e80ac22079d5f6cac0d004fc10.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4dcd9ff22a3c17d8cabe824490496317a18b49678c1c1ca856b6d81580e457f",
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

Occurrence: `result:8de7214f-b2a7-4a96-773d-84eee2abd24d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shellTorsion_preserves_shell_count_ones {s : GridShape}
    (τ : ShellTorsion s)
    (F : ShellFiber s) :
    ShellFiber.countOnes (act τ F) = ShellFiber.countOnes F := by
  unfold ShellFiber.countOnes act
  have e :
      {c : {c : Cell (expandedShape s) // IsShellCell c} //
          F.value (τ.perm.symm c) = 1} ≃
      {c : {c : Cell (expandedShape s) // IsShellCell c} //
          F.value c = 1} := by
    refine
      { toFun := ?toFun
        invFun := ?invFun
        left_inv := ?left_inv
        right_inv := ?right_inv }
    · intro c
      exact ⟨τ.perm.symm c.1, c.2⟩
    · intro c
      exact ⟨τ.perm c.1, by simpa using c.2⟩
    · intro c
      apply Subtype.ext
      simp
    · intro c
      apply Subtype.ext
      simp
  simpa [ShellFiber.countOnes, act] using Fintype.card_congr e

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellTorsion/Variante73d4291708d321f74f8527a070b116d995733e80ac22079d5f6cac0d004fc10.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellTorsion/Variante73d4291708d321f74f8527a070b116d995733e80ac22079d5f6cac0d004fc10.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93f13f1df2a4a5a448aa0d4203cde27fc0167082` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
