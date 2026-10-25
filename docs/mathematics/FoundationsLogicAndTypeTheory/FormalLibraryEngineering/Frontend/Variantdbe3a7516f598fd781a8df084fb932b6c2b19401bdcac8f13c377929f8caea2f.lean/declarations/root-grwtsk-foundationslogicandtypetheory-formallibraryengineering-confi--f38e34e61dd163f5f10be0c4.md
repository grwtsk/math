# _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Config.Variant069edb532fdb4833e6c83256f30f5ec3898bb973909c8ea7ad3005473a0c26de.String.splitCase

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b55dbbf2217aa8adc7dbd470ff7505d514982174b14ec5e9f9329f030aac1f94",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Config.Variant069edb532fdb4833e6c83256f30f5ec3898bb973909c8ea7ad3005473a0c26de.String.splitCase",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-confi--f38e34e61dd163f5f10be0c4",
  "source": {
    "blob": "b2935c698dfe72503e695031eab3ae2f71a0671a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 372,
    "line": 349,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantdbe3a7516f598fd781a8df084fb932b6c2b19401bdcac8f13c377929f8caea2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f38e34e61dd163f5f10be0c44897fa32a46ab4f78ed2a4dcee7c009dc4d37c0e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantdbe3a7516f598fd781a8df084fb932b6c2b19401bdcac8f13c377929f8caea2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b55dbbf2217aa8adc7dbd470ff7505d514982174b14ec5e9f9329f030aac1f94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 349–372.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Config.Variant069edb532fdb4833e6c83256f30f5ec3898bb973909c8ea7ad3005473a0c26de.String.splitCase (s : String) (i₀ : Pos := 0) (r : List String := []) :
    List String := Id.run do
  -- We test if we need to split between `i₀` and `i₁`.
  let i₁ := s.next i₀
  if s.atEnd i₁ then
    -- If `i₀` is the last position, return the list.
    let r := s::r
    return r.reverse
  /- We split the string in three cases
  * We split on both sides of `_` to keep them there when rejoining the string;
  * We split after a name in `endCapitalNames`;
  * We split after a lower-case letter that is followed by an upper-case letter
    (unless it is part of a name in `endCapitalNames`). -/
  if s.get i₀ == '_' || s.get i₁ == '_' then
    return splitCase (s.extract i₁ s.endPos) 0 <| (s.extract 0 i₁)::r
  if (s.get i₁).isUpper then
    if let some strs := endCapitalNames[s.extract 0 i₁]? then
      if let some (pref, newS) := strs.findSome?
        fun x : String ↦ (s.extract i₁ s.endPos).dropPrefix? x |>.map (x, ·.toString) then
        return splitCase newS 0 <| (s.extract 0 i₁ ++ pref)::r
    if !(s.get i₀).isUpper then
      return splitCase (s.extract i₁ s.endPos) 0 <| (s.extract 0 i₁)::r
  return splitCase s i₁ r

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantdbe3a7516f598fd781a8df084fb932b6c2b19401bdcac8f13c377929f8caea2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantdbe3a7516f598fd781a8df084fb932b6c2b19401bdcac8f13c377929f8caea2f.lean#L349).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2935c698dfe72503e695031eab3ae2f71a0671a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
