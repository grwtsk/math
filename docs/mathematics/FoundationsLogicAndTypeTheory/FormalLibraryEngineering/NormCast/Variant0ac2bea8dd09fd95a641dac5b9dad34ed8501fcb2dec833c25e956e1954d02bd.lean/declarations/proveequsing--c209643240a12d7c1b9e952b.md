# proveEqUsing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:856244d2708a3847bfe1303fbc764e7691843b1790c49cb0a122b1c73f8a1eed",
  "kind": "def",
  "lexical_name": "proveEqUsing",
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
  "slug": "proveequsing--c209643240a12d7c1b9e952b",
  "source": {
    "blob": "e8944601062dd50a840761e2fc375a1e3ea0541c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 25,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variant0ac2bea8dd09fd95a641dac5b9dad34ed8501fcb2dec833c25e956e1954d02bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c209643240a12d7c1b9e952bb83991997adb50b5ad85e4b1082a827cc1ccf2ba",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variant0ac2bea8dd09fd95a641dac5b9dad34ed8501fcb2dec833c25e956e1954d02bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:856244d2708a3847bfe1303fbc764e7691843b1790c49cb0a122b1c73f8a1eed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def proveEqUsing (s : SimpTheorems) (a b : Expr) : MetaM (Option Simp.Result) := do
  let go : SimpM (Option Simp.Result) := do
    let methods := Simp.DefaultMethods.methods
    let a' ← Simp.simp a methods
    let b' ← Simp.simp b methods
    unless ← isDefEq a'.expr b'.expr do return none
    mkEqTrans a' (← mkEqSymm b b')
  withReducible do
    (go { simpTheorems := #[s], congrTheorems := ← Meta.getSimpCongrTheorems }).run' {}

/-- Prove `a = b` by simplifying using move and squash lemmas. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variant0ac2bea8dd09fd95a641dac5b9dad34ed8501fcb2dec833c25e956e1954d02bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variant0ac2bea8dd09fd95a641dac5b9dad34ed8501fcb2dec833c25e956e1954d02bd.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8944601062dd50a840761e2fc375a1e3ea0541c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
