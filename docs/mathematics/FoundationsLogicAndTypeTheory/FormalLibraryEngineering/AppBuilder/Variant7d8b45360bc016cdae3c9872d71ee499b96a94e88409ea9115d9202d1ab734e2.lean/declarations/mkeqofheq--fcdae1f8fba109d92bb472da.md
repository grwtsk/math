# mkEqOfHEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:128ff063c3ef804ee94bad462398638409a3246967b300db6b3ee7dac229904c",
  "kind": "def",
  "lexical_name": "mkEqOfHEq",
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
  "slug": "mkeqofheq--fcdae1f8fba109d92bb472da",
  "source": {
    "blob": "badc98ea274a8f09f3678220a28462f71e927671",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 193,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AppBuilder/Variant7d8b45360bc016cdae3c9872d71ee499b96a94e88409ea9115d9202d1ab734e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fcdae1f8fba109d92bb472dac0e34ed3fc99b321b79de73fc67c8f791a83d63f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AppBuilder/Variant7d8b45360bc016cdae3c9872d71ee499b96a94e88409ea9115d9202d1ab734e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:128ff063c3ef804ee94bad462398638409a3246967b300db6b3ee7dac229904c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkEqOfHEq (h : Expr) (check := true) : MetaM Expr := do
  let hType ← infer h
  match hType.heq? with
  | some (α, a, β, b) =>
    if check then
      unless (← isDefEq α β) do
        throwAppBuilderException ``eq_of_heq m!"heterogeneous equality types are not definitionally equal{indentExpr α}\nis not definitionally equal to{indentExpr β}"
    let u ← getLevel α
    return mkApp4 (mkConst ``eq_of_heq [u]) α a b h
  | _ =>
    throwAppBuilderException ``eq_of_heq m!"heterogeneous equality proof expected{indentExpr h}"

/-- Given `h : a = b`, returns a proof of `a ≍ b`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AppBuilder/Variant7d8b45360bc016cdae3c9872d71ee499b96a94e88409ea9115d9202d1ab734e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AppBuilder/Variant7d8b45360bc016cdae3c9872d71ee499b96a94e88409ea9115d9202d1ab734e2.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `badc98ea274a8f09f3678220a28462f71e927671` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
