# _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMetaSymIsShared.Variant730a5e6876165194797ebbfd83e2ce796762c2f842c4ecfbc3b615dff0b6d913.Lean.Meta.Sym.Pattern.shareCommon

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:70288908e16d08417a884edb06d869780d33e760eeb93e0bc3bdcc4da350465f",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMetaSymIsShared.Variant730a5e6876165194797ebbfd83e2ce796762c2f842c4ecfbc3b615dff0b6d913.Lean.Meta.Sym.Pattern.shareCommon",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-rootl--b874f03d1d8d12d6029c0eb7",
  "source": {
    "blob": "a43de50729d035246f57a650e2d10c893ba0406e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 50,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecDB/Variant669414fd9d294321ba00c1cdf789df85c44ba8f2337a5d6f35d8f75c0b9e1c85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b874f03d1d8d12d6029c0eb7c1b9f9b4f65816acfd436df7713f6912e484b1b7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecDB/Variant669414fd9d294321ba00c1cdf789df85c44ba8f2337a5d6f35d8f75c0b9e1c85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:70288908e16d08417a884edb06d869780d33e760eeb93e0bc3bdcc4da350465f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMetaSymIsShared.Variant730a5e6876165194797ebbfd83e2ce796762c2f842c4ecfbc3b615dff0b6d913.Lean.Meta.Sym.Pattern.shareCommon (p : Pattern) : SymM Pattern := do
  return { p with
    pattern := ← Sym.shareCommon p.pattern
    varTypes := ← p.varTypes.mapM Sym.shareCommon }

/--
Instantiates a spec theorem's proof.

Hoare triple and `⊑ wp` specs are normalised to `pre ⊑ wp …` form via `tripleToWpProof?`.
Simp specs keep the raw `lhs = rhs` equality, but eta-expand function-level equations:
for unfold equations of class projections (e.g., `MonadState.modifyGet.eq_1`), the equation
after `forallMetaTelescope` may be between functions rather than values:
  `@modifyGet σ m self = self.3 : {α} → (σ → α × σ) → m α`
This method applies `congrFun` for each leading forall to reduce the equation to one between
values of type `m α`, introducing fresh metavariables for the extra arguments.
The number of extra args is stored in `SpecTheoremKind.simp etaArgs`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecDB/Variant669414fd9d294321ba00c1cdf789df85c44ba8f2337a5d6f35d8f75c0b9e1c85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecDB/Variant669414fd9d294321ba00c1cdf789df85c44ba8f2337a5d6f35d8f75c0b9e1c85.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a43de50729d035246f57a650e2d10c893ba0406e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
