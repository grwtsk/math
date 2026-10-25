# findSuffixWithPrefix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ea4c139b087b50476b46308127b80a42f8dd3effb7fb8cd57107aa933e1c5340",
  "kind": "def",
  "lexical_name": "findSuffixWithPrefix",
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
  "slug": "findsuffixwithprefix--b5b1e63557a578021d1159d1",
  "source": {
    "blob": "5c934363894991f60574ad47ab04c5bd4afd44c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 153,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinCommand/Variant8bcff87f9531e047cdb1d151a7831ed4e0bc144fcc7543bf65183e624925a2c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b5b1e63557a578021d1159d1cf490fad4b0605eb7a582883afb345d1cafe4e28",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinCommand/Variant8bcff87f9531e047cdb1d151a7831ed4e0bc144fcc7543bf65183e624925a2c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ea4c139b087b50476b46308127b80a42f8dd3effb7fb8cd57107aa933e1c5340`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def findSuffixWithPrefix (base : Name) (seg : Name) : Option Name :=
  findSuffixMatch base seg true
where
  /--
  Helper for `findSuffixWithPrefix`. If `allowOffset` is `false`, then `seg` must be a suffix of
  `base`, not just a prefix of a suffix.
  -/
  findSuffixMatch : (base : Name) → (seg : Name) → (allowOffset : Bool) → Option Name
  | _, .anonymous, _ => some .anonymous
  | .anonymous, _, _ => none
  | .num p n, seg@(.num p' n'), allowOffset => do
    if n == n' then
      if let some nm := findSuffixMatch p p' (allowOffset := false) then
        return .num nm n
    if allowOffset then
      return .num (← findSuffixMatch p seg allowOffset) n
    else
      none
  | .str p s, seg@(.str p' s'), allowOffset => do
    if s == s' then
      if let some nm := findSuffixMatch p p' (allowOffset := false) then
        return .str nm s
    if allowOffset then
      return .str (← findSuffixMatch p seg allowOffset) s
    else
      none
  | .str p s, seg, allowOffset =>
    if allowOffset then
      return .str (← findSuffixMatch p seg allowOffset) s
    else
      none
  | .num p n, seg, allowOffset =>
    if allowOffset then
      return .num (← findSuffixMatch p seg allowOffset) n
    else
      none

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinCommand/Variant8bcff87f9531e047cdb1d151a7831ed4e0bc144fcc7543bf65183e624925a2c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinCommand/Variant8bcff87f9531e047cdb1d151a7831ed4e0bc144fcc7543bf65183e624925a2c0.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c934363894991f60574ad47ab04c5bd4afd44c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
