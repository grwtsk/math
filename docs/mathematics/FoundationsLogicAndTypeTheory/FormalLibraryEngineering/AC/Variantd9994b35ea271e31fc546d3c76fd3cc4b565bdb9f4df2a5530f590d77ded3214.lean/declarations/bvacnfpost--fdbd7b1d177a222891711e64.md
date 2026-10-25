# bvAcNfpost

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b0c1f621ee7248c522afa6e915484116aff690d649b30a90452461aaf2935b7d",
  "kind": "def",
  "lexical_name": "bvAcNfpost",
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
  "slug": "bvacnfpost--fdbd7b1d177a222891711e64",
  "source": {
    "blob": "6a9994eafd980f68b3c9d54be33bec8eda1599be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 332,
    "line": 312,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variantd9994b35ea271e31fc546d3c76fd3cc4b565bdb9f4df2a5530f590d77ded3214.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fdbd7b1d177a222891711e641d2d592f9442ff796688929ba30c07e2cb2f9bf0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variantd9994b35ea271e31fc546d3c76fd3cc4b565bdb9f4df2a5530f590d77ded3214.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b0c1f621ee7248c522afa6e915484116aff690d649b30a90452461aaf2935b7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 312–332.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def bvAcNfpost : Simp.Simproc := fun e => do
  match_expr e with
  | BEq.beq ty inst lhs rhs =>
      trace[Meta.Tactic.bv] "bv_ac_nf {checkEmoji} found `BEq.beq`."
      let uLvl ← getDecLevel ty
      let P := mkApp2 (.const ``BEq.beq [uLvl]) ty inst
      let out ← canonicalizeWithSharing P lhs rhs
      return out
  | Eq ty lhs rhs =>
      trace[Meta.Tactic.bv] "bv_ac_nf {checkEmoji} found `Eq`."
      let uLvl ← getLevel ty
      let P := mkApp (.const ``Eq [uLvl]) ty
      let out ← canonicalizeWithSharing P lhs rhs
      return out
  | _ =>
    return .continue

/-! ## Tactic Boilerplate -/

open Tactic

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variantd9994b35ea271e31fc546d3c76fd3cc4b565bdb9f4df2a5530f590d77ded3214.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variantd9994b35ea271e31fc546d3c76fd3cc4b565bdb9f4df2a5530f590d77ded3214.lean#L312).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a9994eafd980f68b3c9d54be33bec8eda1599be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
