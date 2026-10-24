# getInvFn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7d8086dd66761c1e0f368a7c8e033921a9a3232b060c0ca2c89bca7f95684025",
  "kind": "def",
  "lexical_name": "getInvFn",
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
  "slug": "getinvfn--cef5ea176af0536940d140aa",
  "source": {
    "blob": "a1804ff2ade472bc55394881cdba5a6189fadcdc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 132,
    "path": "GRWTSK/Algebra/Functions/Variantde37e9984bf68213ac9a5cc95daba6ca773afb221265b38b5eee9af5c14178a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cef5ea176af0536940d140aa3944cbb179554f5ed10411a1b749bcbe8956d0ba",
  "verification": {
    "reference": "docs/verification/Algebra/Functions/Variantde37e9984bf68213ac9a5cc95daba6ca773afb221265b38b5eee9af5c14178a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7d8086dd66761c1e0f368a7c8e033921a9a3232b060c0ca2c89bca7f95684025`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getInvFn : m Expr := do
  let ring ← getCommRing
  let some fieldInst := ring.fieldInst?
    | throwError "internal error: type is not a field{indentExpr ring.type}"
  if let some invFn := ring.invFn? then return invFn
  let expectedInst := mkApp2 (mkConst ``Grind.Field.toInv [ring.u]) ring.type fieldInst
  let invFn ← mkUnaryFn ring.type ring.u ``Inv ``Inv.inv expectedInst
  modifyCommRing fun s => { s with invFn? := some invFn }
  return invFn

end CommRingFns

section SemiringFns
variable [MonadSemiring m]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Functions/Variantde37e9984bf68213ac9a5cc95daba6ca773afb221265b38b5eee9af5c14178a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Functions/Variantde37e9984bf68213ac9a5cc95daba6ca773afb221265b38b5eee9af5c14178a2.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1804ff2ade472bc55394881cdba5a6189fadcdc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
