# simpArrow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3a242e566bfe44be72f6974fab3fc40bc0202b4866df6bf7dee9980c7c8e5813",
  "kind": "def",
  "lexical_name": "simpArrow",
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
  "slug": "simparrow--8a2f682367803c9f24cf9a3c",
  "source": {
    "blob": "2c18380c7045a76a295ae88e32af46b1499e3c68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 184,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forall/Variant11b6d7ffcdceb516ebfc19f4216c5ee337cc46032d953c162e1c996e79ef05c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8a2f682367803c9f24cf9a3c0720b49371a8f6880eb62f2954e7454cb3fd4d3e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forall/Variant11b6d7ffcdceb516ebfc19f4216c5ee337cc46032d953c162e1c996e79ef05c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3a242e566bfe44be72f6974fab3fc40bc0202b4866df6bf7dee9980c7c8e5813`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def simpArrow (e : Expr) : SimpM Result := do
  let p := e.bindingDomain!
  let q := e.bindingBody!
  -- Propagate `cd` from both domain and codomain: if either sub-simplification
  -- was context-dependent, `simp` might take a different path in another context.
  match (← simp p), (← simp q) with
  | .rfl _ cd₁, .rfl _ cd₂ =>
    return mkRflResultCD (cd₁ || cd₂)
  | .step p' h _ cd₁, .rfl _ cd₂ =>
    let u ← getLevel p
    let v ← getLevel q
    let e' ← e.updateForallS! p' q
    return .step e' (mkApp4 (mkConst ``implies_congr_left [u, v]) p p' q h) (contextDependent := cd₁ || cd₂)
  | .rfl _ cd₁, .step q' h _ cd₂ =>
    let u ← getLevel p
    let v ← getLevel q
    let e' ← e.updateForallS! p q'
    return .step e' (mkApp4 (mkConst ``implies_congr_right [u, v]) p q q' h) (contextDependent := cd₁ || cd₂)
  | .step p' h₁ _ cd₁, .step q' h₂ _ cd₂ =>
    let u ← getLevel p
    let v ← getLevel q
    let e' ← e.updateForallS! p' q'
    return .step e' (mkApp6 (mkConst ``implies_congr [u, v]) p p' q q' h₁ h₂) (contextDependent := cd₁ || cd₂)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forall/Variant11b6d7ffcdceb516ebfc19f4216c5ee337cc46032d953c162e1c996e79ef05c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forall/Variant11b6d7ffcdceb516ebfc19f4216c5ee337cc46032d953c162e1c996e79ef05c7.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c18380c7045a76a295ae88e32af46b1499e3c68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
