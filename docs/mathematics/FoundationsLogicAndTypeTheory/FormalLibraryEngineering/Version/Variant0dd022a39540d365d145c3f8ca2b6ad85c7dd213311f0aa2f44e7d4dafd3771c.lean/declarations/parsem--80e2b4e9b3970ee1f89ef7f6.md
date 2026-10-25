# parseM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2984878b6e3cd731dc49850cf4ee85ed4883abd56f7427c400a53743587bb8d3",
  "kind": "def",
  "lexical_name": "parseM",
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
  "slug": "parsem--80e2b4e9b3970ee1f89ef7f6",
  "source": {
    "blob": "4191bd4a50f896cb2cbdea1f13277b04336b5683",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 637,
    "line": 503,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Version/Variant0dd022a39540d365d145c3f8ca2b6ad85c7dd213311f0aa2f44e7d4dafd3771c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:80e2b4e9b3970ee1f89ef7f6dc5ce8181401ce22ad10507c27d9e0ebd780eecb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Version/Variant0dd022a39540d365d145c3f8ca2b6ad85c7dd213311f0aa2f44e7d4dafd3771c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2984878b6e3cd731dc49850cf4ee85ed4883abd56f7427c400a53743587bb8d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 503–637.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[inline] partial def parseM (s : String) : EStateM String s.Pos VerRange := do
  let clauses ← go true #[] #[]
  return {toString := s, clauses}
where
  go needsRange ors (ands : Array VerComparator) p :=
    if h : p = s.endPos then
      if needsRange || ands.size == 0 then
        .error "expected version range" p
      else
        .ok (ors.push ands) p
    else
      let c := p.get h
      if c.isAlphanum || c == '*' then
        match parseWild s ands p with
        | .ok ands p =>
          go false ors ands p
        | .error e p => .error e p
      else if c == '^' then
        let p := p.next h
        if p = s.endPos then
          .error  "invalid caret range: expected version after `^`" p
        else
          match parseCaret s ands p with
          | .ok ands p =>
            go false ors ands p
          | .error e p => .error e p
      else if c == '~' then
        let p := p.next h
        if p = s.endPos then
          .error "invalid tilde range: expected version after `~`" p
        else
          match parseTilde s ands p with
          | .ok ands p =>
            go false ors ands p
          | .error e p => .error e p
      else if c.isWhitespace then
        go needsRange ors ands (p.next h)
      else if c == ',' then
        if needsRange then
          .error "expected version range" p
        else
          go true ors ands (p.next h)
      else if c == '|' then
        let p := p.next h
        if h : p = s.endPos then
          .error "expected '|' after first '|'" p
        else if p.get h = '|' then
          if ands.size = 0 then
            .error "expected version range" p
          else
            go true (ors.push ands) #[] (p.next h)
        else
          .error "expected '|' after first '|'" p
      else
        match VerComparator.parseM s p with
        | .ok cmp p =>
          go false ors (ands.push cmp) p
        | .error e p => .error e p
  @[inline] appendRange ands minVer maxVer (specialDescr := "") :=
    let minVer := StdVer.mk minVer specialDescr
    let maxVer := StdVer.ofSemVerCore maxVer
    ands.push {op := .ge, ver := minVer} |>.push {op := .lt, ver := maxVer, includeSuffixes := true}
  parseWild (s : String) ands : EStateM String s.Pos _ := do
    let cs ← parseVerComponents s -- `cs.size ≠ 0` due to how `parseWild` is called
    -- Parsed first so its error is seen on arbitrary alphanumeric versions (e.g., `v1`, `1.o`, `beta`)
    let major? ← parseVerComponent "major" cs[0]?
    let minor? ← parseVerComponent "minor" cs[1]?
    let patch? ← parseVerComponent "patch" cs[2]?
    if (← get).get?.any (· == '-') then
      throw "invalid wildcard range: wildcard versions do not support suffixes"
    else if cs.size > 3 then
      throw s!"invalid wildcard range: incorrect number of components: got {cs.size}, expected 1-3"
    else
      match major?, minor?, patch? with
      | .nat major, .nat minor, .wild =>
        return appendRange ands {major, minor} {major, minor := minor + 1}
      | .wild, _, .nat _ | _, .wild, .nat _ =>
        throw "invalid patch version: components after a wildcard must be wildcards"
      | .wild, .nat _, _ =>
        throw "invalid minor version: components after a wildcard must be wildcards"
      | .nat major, .wild, _ =>
        return appendRange ands {major} {major := major + 1}
      | .nat _, _, _ =>
        throw "invalid version range: bare versions are not supported; \
          if you want to pin a specific version, use '=' before the full version; \
          otherwise, use '≥' to support it and future versions"
      | _, _, _ =>
        return ands.push .wild
  parseCaret (s : String) ands : EStateM String s.Pos _ := do
    let cs ← parseVerComponents s
    let specialDescr ← parseSpecialDescr s
    if h : cs.size = 1 then
      let major ← parseVerNat "major" cs[0]
      return appendRange ands {major} {major := major + 1} specialDescr
    else if h : cs.size = 2 then
      let major ← parseVerNat "major" cs[0]
      let minor ← parseVerNat "minor" cs[1]
      if major = 0 then
        return appendRange ands {major, minor}  {major, minor := minor + 1} specialDescr
      else
        return appendRange ands {major, minor}  {major := major + 1} specialDescr
    else if h : cs.size = 3 then
      let major ← parseVerNat "major" cs[0]
      let minor ← parseVerNat "minor" cs[1]
      let patch ← parseVerNat "patch" cs[2]
      if major = 0 then
        if minor = 0 then
          if patch = 0 && specialDescr.isEmpty then
            throw "invalid caret range: `^0.0.0` is degenerate; use `=0.0.0` instead"
          else
            return appendRange ands {major, minor, patch}  {major,  minor, patch := patch + 1} specialDescr
        else
          return appendRange ands {major, minor, patch}  {major, minor := minor + 1} specialDescr
      else
        return appendRange ands {major, minor, patch}  {major := major + 1} specialDescr
    else
      throw s!"invalid caret range: incorrect number of components: got {cs.size}, expected 1-3"
  parseTilde (s : String) ands : EStateM String s.Pos _ := do
    let cs ← parseVerComponents s
    let specialDescr ← parseSpecialDescr s
    if h : cs.size = 1 then
      let major ← parseVerNat "major" cs[0]
      return appendRange ands {major} {major := major + 1} specialDescr
    else if h : cs.size = 2 then
      let major ← parseVerNat "major" cs[0]
      let minor ← parseVerNat "minor" cs[1]
      return appendRange ands {major, minor} {major, minor := minor + 1} specialDescr
    else if h : cs.size = 3 then
      let major ← parseVerNat "major" cs[0]
      let minor ← parseVerNat "minor" cs[1]
      let patch ← parseVerNat "patch" cs[2]
      return appendRange ands {major, minor, patch}  {major, minor := minor + 1} specialDescr
    else
      throw s!"invalid tilde range: incorrect number of components: got {cs.size}, expected 1-3"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Version/Variant0dd022a39540d365d145c3f8ca2b6ad85c7dd213311f0aa2f44e7d4dafd3771c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Version/Variant0dd022a39540d365d145c3f8ca2b6ad85c7dd213311f0aa2f44e7d4dafd3771c.lean#L503).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4191bd4a50f896cb2cbdea1f13277b04336b5683` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
