# NormalExpr.strands

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4388163c7157040c188eb43b3f5dfdcdce1a4cc7f90f8adb04e62f4efe6ffd8a",
  "kind": "def",
  "lexical_name": "NormalExpr.strands",
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
  "slug": "normalexpr-strands--e3580380e7b7b14728523fc2",
  "source": {
    "blob": "9d30be8e22f17eabecd45f9158b593aa56147ab1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 211,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StringDiagram/Variantc9274ec795dfe4aa98e6754210685b46e3ed90caa35d3307230248e7eb579281.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e3580380e7b7b14728523fc2f77545bb6aaeae1e76399ae49a9ce00e3c347fac",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StringDiagram/Variantc9274ec795dfe4aa98e6754210685b46e3ed90caa35d3307230248e7eb579281.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4388163c7157040c188eb43b3f5dfdcdce1a4cc7f90f8adb04e62f4efe6ffd8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def NormalExpr.strands (e : NormalExpr) : CoherenceM ρ (List (List Strand)) := do
  let l ← e.nodes
  (pairs l).mapM fun (x, y) ↦ do
    let xs := (x.map (fun n ↦ n.tarList)).flatten
    let ys := (y.map (fun n ↦ n.srcList)).flatten
    -- sanity check
    if xs.length ≠ ys.length then
      throwError "The number of the start and end points of a string does not match."
    (xs.zip ys).mapIdxM fun k ((n₁, f₁), (n₂, _)) => do
      return ⟨n₁.hPosTar + k, n₁, n₂, f₁⟩

end BicategoryLike

namespace Widget.StringDiagram

/-- A type for Penrose variables. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StringDiagram/Variantc9274ec795dfe4aa98e6754210685b46e3ed90caa35d3307230248e7eb579281.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StringDiagram/Variantc9274ec795dfe4aa98e6754210685b46e3ed90caa35d3307230248e7eb579281.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d30be8e22f17eabecd45f9158b593aa56147ab1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
