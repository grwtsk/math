# initialNewArms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:da00653db5d4ad045314a835e1d6912cc8465747e1f1e3ac90469c7e2b86297d",
  "kind": "def",
  "lexical_name": "initialNewArms",
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
  "slug": "initialnewarms--e4b3d84ffcc6828847082938",
  "source": {
    "blob": "013948b5a8cb5b416d5313dfed644a12fd718598",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 185,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatLetIn/Variant5810c993a94e1309448773fec877a3571bdbd387da62e407e4e3919941d0bddf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e4b3d84ffcc68288470829385b29e8403bfdd9ebcee4cfe5dcf42d8e1def2cc2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatLetIn/Variant5810c993a94e1309448773fec877a3571bdbd387da62e407e4e3919941d0bddf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:da00653db5d4ad045314a835e1d6912cc8465747e1f1e3ac90469c7e2b86297d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def initialNewArms (cs : Cases .pure) : Std.HashMap Decision (List (CodeDecl .pure)) := Id.run do
  let mut map := Std.HashMap.emptyWithCapacity (cs.alts.size + 1)
  map := map.insert .dont []
  cs.alts.foldr (init := map) fun val acc => acc.insert (.ofAlt val) []

/--
Will:
- put `decl` into the `dont` arm
- decide that any free variable that occurs in `decl` and is a declaration
  of interest as not getting moved either.
```
let x := ...
let y := ...
let z := x + y
cases z with
| n => z * x
| m => z * y
```
Here `x` and `y` are originally marked as getting floated into `n` and `m`
respectively but since `z` can't be moved we don't want that to move `x` and `y`.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatLetIn/Variant5810c993a94e1309448773fec877a3571bdbd387da62e407e4e3919941d0bddf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatLetIn/Variant5810c993a94e1309448773fec877a3571bdbd387da62e407e4e3919941d0bddf.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `013948b5a8cb5b416d5313dfed644a12fd718598` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
