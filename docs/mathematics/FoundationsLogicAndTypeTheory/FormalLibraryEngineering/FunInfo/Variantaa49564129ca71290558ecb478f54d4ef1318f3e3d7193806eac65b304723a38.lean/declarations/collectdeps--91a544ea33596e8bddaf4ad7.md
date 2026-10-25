# collectDeps

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:93889d1912033a2f7dfa7d26e27c791ddae891f890cce7b1a3ddac0ef5372454",
  "kind": "def",
  "lexical_name": "collectDeps",
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
  "slug": "collectdeps--91a544ea33596e8bddaf4ad7",
  "source": {
    "blob": "ac4ad43a71bd7e50a2617a86263f967e34a4f670",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 52,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInfo/Variantaa49564129ca71290558ecb478f54d4ef1318f3e3d7193806eac65b304723a38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:91a544ea33596e8bddaf4ad750a251bc6ffc3efe807c039e0a5fcbd9d8c2a967",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInfo/Variantaa49564129ca71290558ecb478f54d4ef1318f3e3d7193806eac65b304723a38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:93889d1912033a2f7dfa7d26e27c791ddae891f890cce7b1a3ddac0ef5372454`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def collectDeps (fvars : Array Expr) (e : Expr) : Array Nat :=
  let rec visit (e : Expr) (deps : Array Nat) : Array Nat :=
    match e with
    | .app f a         => whenHasVar e deps (visit a ∘ visit f)
    | .forallE _ d b _ => whenHasVar e deps (visit b ∘ visit d)
    | .lam _ d b _     => whenHasVar e deps (visit b ∘ visit d)
    | .letE _ t v b _  => whenHasVar e deps (visit b ∘ visit v ∘ visit t)
    | .proj _ _ e      => visit e deps
    | .mdata _ e       => visit e deps
    | .fvar ..         =>
      match fvars.idxOf? e with
      | none   => deps
      | some i => if deps.contains i then deps else deps.push i
    | _ => deps
  let deps := visit e #[]
  deps.qsort (fun i j => i < j)

/-- Update `hasFwdDeps` fields using new `backDeps` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInfo/Variantaa49564129ca71290558ecb478f54d4ef1318f3e3d7193806eac65b304723a38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInfo/Variantaa49564129ca71290558ecb478f54d4ef1318f3e3d7193806eac65b304723a38.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac4ad43a71bd7e50a2617a86263f967e34a4f670` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
