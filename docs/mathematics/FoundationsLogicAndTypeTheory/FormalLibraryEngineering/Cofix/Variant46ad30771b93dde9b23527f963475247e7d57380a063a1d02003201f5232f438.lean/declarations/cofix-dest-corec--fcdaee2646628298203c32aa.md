# Cofix.dest_corec₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f2a48c78-a26d-2783-cb5d-a890cc69f79a",
  "kind": "theorem",
  "lexical_name": "Cofix.dest_corec₁",
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
  "slug": "cofix-dest-corec--fcdaee2646628298203c32aa",
  "source": {
    "blob": "1d6afaab4f0ed286fa5246a614135df9f07b3fa8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 522,
    "line": 516,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variant46ad30771b93dde9b23527f963475247e7d57380a063a1d02003201f5232f438.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fcdaee2646628298203c32aa63025409515672845537c703ee531ab8332d814b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variant46ad30771b93dde9b23527f963475247e7d57380a063a1d02003201f5232f438.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2a48c78-a26d-2783-cb5d-a890cc69f79a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 516–522.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Cofix.dest_corec₁ {α : TypeVec n} {β : Type u}
    (g : ∀ {X}, (Cofix F α → X) → (β → X) → β → F (α.append1 X)) (x : β)
    (h : ∀ (X Y) (f : Cofix F α → X) (f' : β → X) (k : X → Y),
      g (k ∘ f) (k ∘ f') x = (id ::: k) <$$> g f f' x) :
    Cofix.dest (Cofix.corec₁ (@g) x) = g id (Cofix.corec₁ @g) x := by
  rw [Cofix.corec₁, Cofix.dest_corec', ← h]; rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variant46ad30771b93dde9b23527f963475247e7d57380a063a1d02003201f5232f438.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variant46ad30771b93dde9b23527f963475247e7d57380a063a1d02003201f5232f438.lean#L516).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d6afaab4f0ed286fa5246a614135df9f07b3fa8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
