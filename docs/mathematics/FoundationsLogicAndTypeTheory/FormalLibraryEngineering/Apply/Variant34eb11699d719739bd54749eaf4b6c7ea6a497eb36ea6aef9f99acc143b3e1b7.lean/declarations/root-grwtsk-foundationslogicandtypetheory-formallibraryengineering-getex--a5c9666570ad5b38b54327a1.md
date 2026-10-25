# _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetExpectedNumArgsAux.Variantb29b1364e9f1e32f64d746d501c71ecf641ebd35270327623e6811cf487cd01d.Lean.MVarId.applyConst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:abb5b2d1f25a844b9eb7bc8916b6cb4231a6dbc7d2806f7e869d6478a8e2990a",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetExpectedNumArgsAux.Variantb29b1364e9f1e32f64d746d501c71ecf641ebd35270327623e6811cf487cd01d.Lean.MVarId.applyConst",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-getex--a5c9666570ad5b38b54327a1",
  "source": {
    "blob": "649426cbbe5bf47dcd5cd4f8ba256bc963ec3cb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 242,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variant34eb11699d719739bd54749eaf4b6c7ea6a497eb36ea6aef9f99acc143b3e1b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a5c9666570ad5b38b54327a15e315515b25344f48815992cf3080a4fa69c43e6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variant34eb11699d719739bd54749eaf4b6c7ea6a497eb36ea6aef9f99acc143b3e1b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:abb5b2d1f25a844b9eb7bc8916b6cb4231a6dbc7d2806f7e869d6478a8e2990a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetExpectedNumArgsAux.Variantb29b1364e9f1e32f64d746d501c71ecf641ebd35270327623e6811cf487cd01d.Lean.MVarId.applyConst (mvar : MVarId) (c : Name) (cfg : ApplyConfig := {}) : MetaM (List MVarId) := do
  mvar.apply (← mkConstWithFreshMVarLevels c) cfg (term? := m!"'{.ofConstName c}'")

/-- Close the given goal using `e`, instantiated with `n` metavariables. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variant34eb11699d719739bd54749eaf4b6c7ea6a497eb36ea6aef9f99acc143b3e1b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variant34eb11699d719739bd54749eaf4b6c7ea6a497eb36ea6aef9f99acc143b3e1b7.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `649426cbbe5bf47dcd5cd4f8ba256bc963ec3cb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
