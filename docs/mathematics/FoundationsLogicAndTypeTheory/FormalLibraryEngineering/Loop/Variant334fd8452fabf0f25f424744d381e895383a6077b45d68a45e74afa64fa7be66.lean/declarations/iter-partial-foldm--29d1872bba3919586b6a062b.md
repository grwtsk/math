# Iter.Partial.foldM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a3652723dd129e362f4f9b3d616f7c4a553fdd9f5f13904617d322d27894daf3",
  "kind": "def",
  "lexical_name": "Iter.Partial.foldM",
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
  "slug": "iter-partial-foldm--29d1872bba3919586b6a062b",
  "source": {
    "blob": "a30156922db4f4dee12afccd137cc10d47922601",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 123,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Loop/Variant334fd8452fabf0f25f424744d381e895383a6077b45d68a45e74afa64fa7be66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:29d1872bba3919586b6a062b6ed70a6a8a9945b9501d82deea96eb662b2cf640",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Loop/Variant334fd8452fabf0f25f424744d381e895383a6077b45d68a45e74afa64fa7be66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a3652723dd129e362f4f9b3d616f7c4a553fdd9f5f13904617d322d27894daf3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Iter.Partial.foldM {m : Type x → Type x'} [Monad m]
    {α : Type w} {β : Type w} {γ : Type x} [Iterator α Id β]
    [IteratorLoop α Id m] (f : γ → β → m γ)
    (init : γ) (it : Iter.Partial (α := α) β) : m γ :=
  it.it.foldM (init := init) f

/--
Folds a monadic function over an iterator from the left, accumulating a value starting with `init`.
The accumulated value is combined with the each element of the list in order, using `f`.

It is equivalent to `it.toList.foldlM`.

This variant terminates after finitely many steps and requires a proof that the iterator is
finite. If such a proof is not available, consider using `Iter.foldM`.
-/
@[always_inline, inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Loop/Variant334fd8452fabf0f25f424744d381e895383a6077b45d68a45e74afa64fa7be66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Loop/Variant334fd8452fabf0f25f424744d381e895383a6077b45d68a45e74afa64fa7be66.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a30156922db4f4dee12afccd137cc10d47922601` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
