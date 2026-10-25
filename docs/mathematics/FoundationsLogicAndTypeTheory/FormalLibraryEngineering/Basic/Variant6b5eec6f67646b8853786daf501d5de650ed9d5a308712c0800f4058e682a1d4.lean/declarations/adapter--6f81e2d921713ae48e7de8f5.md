# adapter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dd0f4594f85dddd90d20648e2488e02997e658d48ca68ebe6ed39bf6040d167f",
  "kind": "def",
  "lexical_name": "adapter",
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
  "slug": "adapter--6f81e2d921713ae48e7de8f5",
  "source": {
    "blob": "14a33fe145f99f6f7c4e0ab533a1cb30ffc37aba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 219,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6b5eec6f67646b8853786daf501d5de650ed9d5a308712c0800f4058e682a1d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6f81e2d921713ae48e7de8f5cd19b0986f627adecc468a0cb827fee5d9e3ccec",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6b5eec6f67646b8853786daf501d5de650ed9d5a308712c0800f4058e682a1d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dd0f4594f85dddd90d20648e2488e02997e658d48ca68ebe6ed39bf6040d167f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def adapter (e : Expr) (k : Expr → ToLinear.M (Option (Int.Internal.Linear.Expr × Int.Internal.Linear.Expr))) : MetaM (Option (Int.Internal.Linear.Expr × Int.Internal.Linear.Expr × Array Expr)) := do
  let (some (lhs, rhs), atoms) ← ToLinear.run (k e)
    | return none
  if atoms.size <= 1 then
    return some (lhs, rhs, atoms)
  else
    -- We use `lt := false` because `Poly.norm` sorts variables in decreasing order.
    -- It does that because of the cutsat procedure.
    let (atoms, perm) := sortExprs atoms (lt := false)
    let lhs := lhs.applyPerm perm
    let rhs := rhs.applyPerm perm
    return some (lhs, rhs, atoms)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6b5eec6f67646b8853786daf501d5de650ed9d5a308712c0800f4058e682a1d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6b5eec6f67646b8853786daf501d5de650ed9d5a308712c0800f4058e682a1d4.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14a33fe145f99f6f7c4e0ab533a1cb30ffc37aba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
