# LawfulGetElem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5f9b5cc5485f9675edf403b1afb2f22d68806969959db5b74bf95d3d370f7def",
  "kind": "class",
  "lexical_name": "LawfulGetElem",
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
  "slug": "lawfulgetelem--6dff63cc21ad1d99648b78f6",
  "source": {
    "blob": "04f45038c25445f879c92680ac4e945ee15b6616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 158,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GetElem/Variant5bc3f2ac75c2ae4a327117f9fa51b5465e63771485e181b59c69e15531170621.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6dff63cc21ad1d99648b78f65d64c29bc8cc0ac1d494d26757fb6cf73058a570",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GetElem/Variant5bc3f2ac75c2ae4a327117f9fa51b5465e63771485e181b59c69e15531170621.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5f9b5cc5485f9675edf403b1afb2f22d68806969959db5b74bf95d3d370f7def`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class LawfulGetElem (cont : Type u) (idx : Type v) (elem : outParam (Type w))
   (dom : outParam (cont → idx → Prop)) [ge : GetElem? cont idx elem dom] : Prop where

  /-- `GetElem?.getElem?` succeeds when the validity predicate is satisfied and fails otherwise. -/
  getElem?_def (c : cont) (i : idx) [Decidable (dom c i)] :
      c[i]? = if h : dom c i then some (c[i]'h) else none := by
    intros
    try simp only [getElem?] <;> congr

  /-- `GetElem?.getElem!` succeeds and fails when `GetElem.getElem?` succeeds and fails. -/
  getElem!_def [Inhabited elem] (c : cont) (i : idx) :
      c[i]! = match c[i]? with | some e => e | none => default := by
    intros
    simp only [getElem!, getElem?, outOfBounds_eq_default]

export LawfulGetElem (getElem?_def getElem!_def)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GetElem/Variant5bc3f2ac75c2ae4a327117f9fa51b5465e63771485e181b59c69e15531170621.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GetElem/Variant5bc3f2ac75c2ae4a327117f9fa51b5465e63771485e181b59c69e15531170621.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04f45038c25445f879c92680ac4e945ee15b6616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
