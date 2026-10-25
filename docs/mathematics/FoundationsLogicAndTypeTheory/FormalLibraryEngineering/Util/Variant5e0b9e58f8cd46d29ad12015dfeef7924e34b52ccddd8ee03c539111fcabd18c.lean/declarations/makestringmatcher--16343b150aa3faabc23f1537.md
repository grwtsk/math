# makeStringMatcher

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:393c5c364cbff0b71e13ac54bebc7cd8ee107deac218826075b1c13b8676eaf7",
  "kind": "def",
  "lexical_name": "makeStringMatcher",
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
  "slug": "makestringmatcher--16343b150aa3faabc23f1537",
  "source": {
    "blob": "f4418b7c720fd82c36fb8ea145ebb88683620284",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 21,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant5e0b9e58f8cd46d29ad12015dfeef7924e34b52ccddd8ee03c539111fcabd18c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:16343b150aa3faabc23f15371e1d91e6e9fa1f3daa8081351f3d5c6b1e1b189c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant5e0b9e58f8cd46d29ad12015dfeef7924e34b52ccddd8ee03c539111fcabd18c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:393c5c364cbff0b71e13ac54bebc7cd8ee107deac218826075b1c13b8676eaf7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def makeStringMatcher (discr : Ident) (cases : Array (String × Term)) (onFail : Term) :
    TermElabM Term := do
  let cases := Array.qsort cases (fun c c' => c.1 < c'.1)
  build 0 cases.size cases
where
  build (start stop : Nat) (cases : Array (String × Term)) : TermElabM Term := do
    if stop - start ≤ 5 then
      -- Switch to if/else chains once we get to a small number of options.
      cases[start:stop].foldrM (init := onFail) fun (s, body) res =>
        `(if $discr == $(quote s) then $body else $res)
    else
      let mid := (start + stop) / 2
      let (s, _) := cases[mid]!
      let low ← build start mid cases
      let high ← build mid stop cases
      `(if $discr < $(quote s) then $low else $high)

/--
Returns a list of types that are are missing `cls` instances such that
implementing them would ensure a `cls type` instance. If there are no conditional
instances to support this, returns `#[type]`. If there's already a `cls type` instance,
returns `#[]`.

Only supports one-parameter classes.

For example, `planDerivation C t` where `t` is `Array t₁ × Option t₂` might return `#[t₁, t₂]`
if there are instances for `Array`, `Option`, and `Prod`, but not for `t₁` and `t₂`.

The `extraDeps` function is called whenever a type cannot be satisfied by existing instances.
It should return an array of types that need an instance to be implemented for the implementation
of the instance to succeed. For example, a `structure` might report the list of the types of all
its fields.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant5e0b9e58f8cd46d29ad12015dfeef7924e34b52ccddd8ee03c539111fcabd18c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant5e0b9e58f8cd46d29ad12015dfeef7924e34b52ccddd8ee03c539111fcabd18c.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4418b7c720fd82c36fb8ea145ebb88683620284` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
