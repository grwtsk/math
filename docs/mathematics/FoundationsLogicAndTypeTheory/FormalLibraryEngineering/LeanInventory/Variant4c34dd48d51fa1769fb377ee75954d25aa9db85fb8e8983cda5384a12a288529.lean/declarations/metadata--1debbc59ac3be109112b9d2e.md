# metadata

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5a90e7309bd557bb13ed2b5c3578e07a9eba75911863d4eaf8b492170c65da76",
  "kind": "def",
  "lexical_name": "metadata",
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
  "slug": "metadata--1debbc59ac3be109112b9d2e",
  "source": {
    "blob": "31b7e437739c7912adf4051f5c84e3dcdf326eda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 88,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanInventory/Variant4c34dd48d51fa1769fb377ee75954d25aa9db85fb8e8983cda5384a12a288529.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1debbc59ac3be109112b9d2e7feffe43f045031000ca82be1cbd983f70af2ef7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanInventory/Variant4c34dd48d51fa1769fb377ee75954d25aa9db85fb8e8983cda5384a12a288529.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5a90e7309bd557bb13ed2b5c3578e07a9eba75911863d4eaf8b492170c65da76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def metadata (ci : ConstantInfo) : Except String (String × Json × Json) := do
  let expr := expression ci.levelParams
  match ci with
  | .axiomInfo v => return ("axiom", Json.null, obj [("is_unsafe", toJson v.isUnsafe)])
  | .defnInfo v =>
    let safety := match v.safety with | .safe => "safe" | .unsafe => "unsafe" | .partial => "partial"
    let hints := match v.hints with
      | .opaque => arr #[str "opaque"]
      | .abbrev => arr #[str "abbrev"]
      | .regular h => arr #[str "regular", num h.toNat]
    return ("definition", ← expr v.value, obj [("safety", str safety), ("reducibility_hints", hints), ("all", names v.all)])
  | .thmInfo _ => return ("theorem", Json.null, obj [])
  | .opaqueInfo v => return ("opaque", ← expr v.value, obj [("is_unsafe", toJson v.isUnsafe), ("all", names v.all)])
  | .quotInfo v =>
    let kind := match v.kind with | .type => "type" | .ctor => "ctor" | .lift => "lift" | .ind => "ind"
    return ("quotient", Json.null, obj [("quot_kind", str kind)])
  | .inductInfo v => return ("inductive", Json.null, obj [
      ("num_params", num v.numParams), ("num_indices", num v.numIndices), ("all", names v.all),
      ("constructors", names v.ctors), ("num_nested", num v.numNested), ("is_recursive", toJson v.isRec),
      ("is_unsafe", toJson v.isUnsafe), ("is_reflexive", toJson v.isReflexive)])
  | .ctorInfo v => return ("constructor", Json.null, obj [("inductive", nameJson v.induct),
      ("constructor_index", num v.cidx), ("num_params", num v.numParams),
      ("num_fields", num v.numFields), ("is_unsafe", toJson v.isUnsafe)])
  | .recInfo v =>
    let rules ← v.rules.toArray.mapM fun r => do
      return obj [("constructor", nameJson r.ctor), ("num_fields", num r.nfields), ("rhs", ← expr r.rhs)]
    return ("recursor", Json.null, obj [("all", names v.all), ("num_params", num v.numParams),
      ("num_indices", num v.numIndices), ("num_motives", num v.numMotives), ("num_minors", num v.numMinors),
      ("rules", arr rules), ("k", toJson v.k), ("is_unsafe", toJson v.isUnsafe)])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanInventory/Variant4c34dd48d51fa1769fb377ee75954d25aa9db85fb8e8983cda5384a12a288529.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanInventory/Variant4c34dd48d51fa1769fb377ee75954d25aa9db85fb8e8983cda5384a12a288529.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31b7e437739c7912adf4051f5c84e3dcdf326eda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
