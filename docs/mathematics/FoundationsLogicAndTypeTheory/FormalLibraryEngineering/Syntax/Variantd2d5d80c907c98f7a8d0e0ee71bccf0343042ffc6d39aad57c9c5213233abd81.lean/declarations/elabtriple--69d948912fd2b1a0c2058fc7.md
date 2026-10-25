# elabTriple

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f1fcbb3303f1fe8f311fada4637de083972234f64b8ac69050372f1295476f57",
  "kind": "def",
  "lexical_name": "elabTriple",
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
  "slug": "elabtriple--69d948912fd2b1a0c2058fc7",
  "source": {
    "blob": "760d893ae6a1dd7fd0866690de39252b4e74e9c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 37,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variantd2d5d80c907c98f7a8d0e0ee71bccf0343042ffc6d39aad57c9c5213233abd81.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:69d948912fd2b1a0c2058fc7233dd26e5b735107fa8cfc6e9e9f8142586d910b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variantd2d5d80c907c98f7a8d0e0ee71bccf0343042ffc6d39aad57c9c5213233abd81.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f1fcbb3303f1fe8f311fada4637de083972234f64b8ac69050372f1295476f57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def elabTriple : TermElab
  | `(⦃$P⦄ $x ⦃$Q⦄), _ => do
    -- In a simple world, this would just be a macro expanding to
    -- `Triple $x spred($P) spred($Q)`.
    -- However, currently we need to help type inference for P and Q.
    -- Specifically, if `x : StateT σ m α`, `[wp : WP m ps]` and `P : σ → Assertion ps`,
    -- then `Triple x P _` will not elaborate because `σ → Assertion ps =?= Assertion ?ps` fails.
    -- We must first instantiate `?ps` to `.arg σ ps` through the `outParam` of `WP`, hence this elaborator.
    -- This is tracked in #8766, and #8074 might be a fix.
    let (u, v, m, α, ps, inst, x) ← withRef x do
      let x ← elabTerm x none
      let ty ← inferType x
      tryPostponeIfMVar ty
      let ty ← instantiateMVars ty
      let .app m α := ty.consumeMData | throwError "Type of {x} is not a type application: {ty}"
      let some u ← Level.dec <$> getLevel α | throwError "Wrong level 0 {ty}"
      let some v ← Level.dec <$> getLevel ty | throwError "Wrong level 0 {ty}"
      let ps ← mkFreshExprMVar (mkConst ``PostShape [u])
      let inst ← synthInstance (mkApp2 (mkConst ``WP [u, v]) m ps)
      return (u, v, m, α, ps, inst, x)
    let P ← elabTerm (← `(spred($P))) (mkApp (mkConst ``Assertion [u]) ps)
    let Q ← elabTerm Q (mkApp2 (mkConst ``PostCond [u]) α ps)
    return mkApp7 (mkConst ``Triple [u, v]) m ps inst α x P Q
  | _, _ => throwUnsupportedSyntax
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variantd2d5d80c907c98f7a8d0e0ee71bccf0343042ffc6d39aad57c9c5213233abd81.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variantd2d5d80c907c98f7a8d0e0ee71bccf0343042ffc6d39aad57c9c5213233abd81.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `760d893ae6a1dd7fd0866690de39252b4e74e9c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
