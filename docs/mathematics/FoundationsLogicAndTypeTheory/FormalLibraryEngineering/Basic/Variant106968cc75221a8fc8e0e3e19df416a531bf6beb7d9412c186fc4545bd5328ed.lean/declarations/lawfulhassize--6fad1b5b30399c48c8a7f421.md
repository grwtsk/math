# LawfulHasSize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:012a2e02cda4121fbe752942921b090286d031210341b4fb760166e5e6cf12b1",
  "kind": "class",
  "lexical_name": "LawfulHasSize",
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
  "slug": "lawfulhassize--6fad1b5b30399c48c8a7f421",
  "source": {
    "blob": "eb7b3a0f13f06a2d885bcfccc318ef9d3a2dad99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 113,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant106968cc75221a8fc8e0e3e19df416a531bf6beb7d9412c186fc4545bd5328ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6fad1b5b30399c48c8a7f421e1cbd617244513b5d3903dae11929cf847c1c00a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant106968cc75221a8fc8e0e3e19df416a531bf6beb7d9412c186fc4545bd5328ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:012a2e02cda4121fbe752942921b090286d031210341b4fb760166e5e6cf12b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class LawfulHasSize (α : Type u) [LT α] [UpwardEnumerable α] [HasSize α] where
  /-- If the smallest value in the range is beyond the upper bound, the size is zero. -/
  size_eq_zero_of_not_le (lo hi : α) (h : ¬ lo < hi) : HasSize.size lo hi = 0
  /--
  If the smallest value in the range satisfies the upper bound and has no successor, the size is
  one.
  -/
  size_eq_one_of_succ?_eq_none (lo hi : α)
      (h : lo < hi) (h' : UpwardEnumerable.succ? lo = none) :
      HasSize.size lo hi = 1
  /--
  If the smallest value in the range satisfies the upper bound and has a successor, the size is
  one larger than the size of the range starting at the successor. -/
  size_eq_succ_of_succ?_eq_some (lo hi lo' : α)
      (h : lo < hi)
      (h' : UpwardEnumerable.succ? lo = some lo') :
      HasSize.size lo hi = HasSize.size lo' hi + 1

/--
This typeclass provides support for the size function for ranges with open lower bound
({name (scope := "Init.Data.Range.Polymorphic.Iterators")}`Roc.size`,
{name (scope := "Init.Data.Range.Polymorphic.Iterators")}`Roo.size` and
{name (scope := "Init.Data.Range.Polymorphic.Iterators")}`Roi.size`).

The returned size should be equal to the number of elements returned by {lit}`toList`. This
condition is captured by the typeclass
{name}`LawfulHasSize`.
-/
add_decl_doc HasSize

export LawfulHasSize (size_eq_zero_of_not_le size_eq_one_of_succ?_eq_none
  size_eq_succ_of_succ?_eq_some)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant106968cc75221a8fc8e0e3e19df416a531bf6beb7d9412c186fc4545bd5328ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant106968cc75221a8fc8e0e3e19df416a531bf6beb7d9412c186fc4545bd5328ed.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb7b3a0f13f06a2d885bcfccc318ef9d3a2dad99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
