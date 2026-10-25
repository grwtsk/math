# mkBoolConst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cff65fdfb21eb16de7375d4a903d9543395147ffdbf38f79a591a706a23b3b7c",
  "kind": "def",
  "lexical_name": "mkBoolConst",
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
  "slug": "mkboolconst--f521a4d3c1753e57523b28aa",
  "source": {
    "blob": "f20e13f8f9e5c66ec6411f4142509302f9142a2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 51,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReifiedBVLogical/Variant018cf99ae15dba3f30411be4fec597ff7ec6e608a291eed3848c91093431b895.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f521a4d3c1753e57523b28aaf683bba5581e27760ccddf33ef36c173dd8d5cc8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReifiedBVLogical/Variant018cf99ae15dba3f30411be4fec597ff7ec6e608a291eed3848c91093431b895.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cff65fdfb21eb16de7375d4a903d9543395147ffdbf38f79a591a706a23b3b7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def mkBoolConst (val : Bool) : M ReifiedBVLogical := do
  let boolExpr := .const val
  let expr := mkApp2 (mkConst ``BoolExpr.const) (mkConst ``BVPred) (toExpr val)
  -- This is safe because this proof always holds definitionally.
  let proof := pure none
  return ⟨boolExpr, toExpr val, proof, expr⟩

/--
Construct the reified version of applying the gate in `gate` to `lhs` and `rhs`.
This function assumes that `lhsExpr` and `rhsExpr` are the corresponding expressions to `lhs`
and `rhs`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReifiedBVLogical/Variant018cf99ae15dba3f30411be4fec597ff7ec6e608a291eed3848c91093431b895.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReifiedBVLogical/Variant018cf99ae15dba3f30411be4fec597ff7ec6e608a291eed3848c91093431b895.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f20e13f8f9e5c66ec6411f4142509302f9142a2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
