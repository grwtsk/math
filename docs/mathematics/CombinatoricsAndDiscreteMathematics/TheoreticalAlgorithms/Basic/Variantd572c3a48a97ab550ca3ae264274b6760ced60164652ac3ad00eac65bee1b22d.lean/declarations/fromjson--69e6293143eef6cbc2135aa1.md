# FromJson

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2f9b10f30820acffb0d893e1b94a73da640054461dd043da1cfe632e196ff3b8",
  "kind": "class",
  "lexical_name": "FromJson",
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
  "slug": "fromjson--69e6293143eef6cbc2135aa1",
  "source": {
    "blob": "2b2815f5d412cd0ece92838b0a2b0267ddd563d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 30,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd572c3a48a97ab550ca3ae264274b6760ced60164652ac3ad00eac65bee1b22d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:69e6293143eef6cbc2135aa123483fca6555d3e9f0dada558af2ebb15c1be0de",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd572c3a48a97ab550ca3ae264274b6760ced60164652ac3ad00eac65bee1b22d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2f9b10f30820acffb0d893e1b94a73da640054461dd043da1cfe632e196ff3b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class FromJson (α : Type u) where
  fromJson? : Json → Except String α

export FromJson (fromJson?)

/--
Types that can be encoded as JSON.

Use `deriving ToJson`
to {manual section "deriving-instances"}[automatically generate] an instance.
The following encoding strategy is employed by auto-generated instances:
- Basic types corresponding to JSON values are encoded as these values.
  - {name}`Bool` is encoded as {lit}`true`/{lit}`false`.
  - {name}`String`s are encoded as JSON strings.
  - Numeric types are encoded as JSON numbers, with the exception of:
    - {name}`UInt64` and {name}`USize`
      which are encoded as JSON strings.
      This is because, although JSON numbers proper have unbounded range,
      in JavaScript they are parsed as [Number](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number)s
      and these can only represent integers up to $`2^{53} - 1` safely;
      so a roundtrip through JavaScript would result in truncation on these types.
      (We use these types in the JavaScript-based Lean infoview.)
    - Special {name}`Float`s which are encoded as JSON strings:
      {lit}`"NaN"`/{lit}`"Infinity"`/{lit}`"-Infinity"`.
- {name}`Unit` is encoded as {lit}`{}` (empty JSON object).
- {name}`Array`s and {name}`List`s are encoded as JSON arrays.
- {name}`Option.none` is encoded as {lit}`null`,
  whereas {given -show}`a : α` {lean}`some a` has the same encoding as {name}`a`.
  Note that this implies {lean}`Option (Option α)` does not roundtrip,
  since {lean}`none` and {lean}`some none` both become {lit}`null`.
- General `structure`s are encoded as JSON objects in the obvious way.
  - {name}`Option` fields whose names end with `?` have special support:
    the question mark is omitted from the JSON field name,
    and such a field is omitted from the JSON object when its value is {name}`none`
    (as opposed to being encoded as {lit}`{ "someField": null }`).
- General `inductive` types are encoded on a per-constructor basis.
  - An argument-free constructor is encoded as its name (a JSON string).
  - A constructor with named arguments only is encoded as the JSON object
    {lit}`{ "ctorName": { "arg1": argVal1, ..., "argN": argValN } }`.
  - A constructor with one unnamed argument is encoded as the JSON object
    {lit}`{ "ctorName": argVal }`.
  - A constructor with more than one unnamed argument is encoded as the JSON object
    {lit}`{ "ctorName": [argVal1, ..., argValN] }`.
- Certain other types have special handling: see the instances below. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd572c3a48a97ab550ca3ae264274b6760ced60164652ac3ad00eac65bee1b22d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd572c3a48a97ab550ca3ae264274b6760ced60164652ac3ad00eac65bee1b22d.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b2815f5d412cd0ece92838b0a2b0267ddd563d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
