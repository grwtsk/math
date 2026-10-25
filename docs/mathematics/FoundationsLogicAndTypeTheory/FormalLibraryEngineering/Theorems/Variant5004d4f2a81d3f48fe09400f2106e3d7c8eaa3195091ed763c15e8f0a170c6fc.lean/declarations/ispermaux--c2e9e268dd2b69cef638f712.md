# isPermAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:92167b14e09216699cfaf82059acff564235be46747b17025f31ecdc4b368210",
  "kind": "def",
  "lexical_name": "isPermAux",
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
  "slug": "ispermaux--c2e9e268dd2b69cef638f712",
  "source": {
    "blob": "46a348406fecc28002a9f23519348b5c80aa515d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 76,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variant5004d4f2a81d3f48fe09400f2106e3d7c8eaa3195091ed763c15e8f0a170c6fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c2e9e268dd2b69cef638f712c9de59d6c9cc559b82c2fda7ef0572c8975709c4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variant5004d4f2a81d3f48fe09400f2106e3d7c8eaa3195091ed763c15e8f0a170c6fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:92167b14e09216699cfaf82059acff564235be46747b17025f31ecdc4b368210`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def isPermAux (a b : Expr) : IsPermM Unit := do
  match a, b with
  | .bvar i, .bvar j =>
    let offset ← read
    if i < offset && j < offset then
      unless i == j do throw ()
    else if i >= offset && j >= offset then
      let pi := i - offset
      let pj := j - offset
      let fwd ← get
      if h : pi >= fwd.size then throw () else
      match fwd[pi] with
      | none =>
        -- Check injectivity: pj must not already be a target of another mapping
        if fwd.contains (some pj) then throw ()
        set (fwd.set pi (some pj))
      | some pj' => unless pj == pj' do throw ()
    else throw ()
  | .app f₁ a₁, .app f₂ a₂ => isPermAux f₁ f₂; isPermAux a₁ a₂
  | .mdata _ s, t => isPermAux s t
  | s, .mdata _ t => isPermAux s t
  | .forallE _ d₁ b₁ _, .forallE _ d₂ b₂ _ => isPermAux d₁ d₂; withReader (· + 1) (isPermAux b₁ b₂)
  | .lam _ d₁ b₁ _, .lam _ d₂ b₂ _ => isPermAux d₁ d₂; withReader (· + 1) (isPermAux b₁ b₂)
  | s, t => unless s == t do throw ()

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variant5004d4f2a81d3f48fe09400f2106e3d7c8eaa3195091ed763c15e8f0a170c6fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variant5004d4f2a81d3f48fe09400f2106e3d7c8eaa3195091ed763c15e8f0a170c6fc.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46a348406fecc28002a9f23519348b5c80aa515d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
