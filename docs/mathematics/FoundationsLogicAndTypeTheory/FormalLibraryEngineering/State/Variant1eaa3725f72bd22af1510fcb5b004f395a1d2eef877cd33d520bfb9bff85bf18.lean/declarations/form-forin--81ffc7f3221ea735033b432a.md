# ForM.forIn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6d3fdd1362dfdf031255a96769fd45e77e6b4b10a055f885f2903778aa17f768",
  "kind": "def",
  "lexical_name": "ForM.forIn",
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
  "slug": "form-forin--81ffc7f3221ea735033b432a",
  "source": {
    "blob": "75479ff2840fcf6ee4fc3d5990b2ca49bc337b68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 174,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/State/Variant1eaa3725f72bd22af1510fcb5b004f395a1d2eef877cd33d520bfb9bff85bf18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:81ffc7f3221ea735033b432a45b05b9d2b42f18e24c0854cfa0bd462be45a97c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/State/Variant1eaa3725f72bd22af1510fcb5b004f395a1d2eef877cd33d520bfb9bff85bf18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6d3fdd1362dfdf031255a96769fd45e77e6b4b10a055f885f2903778aa17f768`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ForM.forIn [Monad m] [ForM (StateT β (ExceptT β m)) ρ α]
    (x : ρ) (b : β) (f : α → β → m (ForInStep β)) : m β := do
  let g a b := .mk do
    match ← f a b with
    | .yield b' => pure (.ok (⟨⟩, b'))
    | .done b' => pure (.error b')
  match ← forM (m := StateT β (ExceptT β m)) (α := α) x g |>.run b |>.run with
  | .ok a => pure a.2
  | .error a => pure a

section
variable {σ : Type u} {m : Type u → Type v}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/State/Variant1eaa3725f72bd22af1510fcb5b004f395a1d2eef877cd33d520bfb9bff85bf18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/State/Variant1eaa3725f72bd22af1510fcb5b004f395a1d2eef877cd33d520bfb9bff85bf18.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75479ff2840fcf6ee4fc3d5990b2ca49bc337b68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
