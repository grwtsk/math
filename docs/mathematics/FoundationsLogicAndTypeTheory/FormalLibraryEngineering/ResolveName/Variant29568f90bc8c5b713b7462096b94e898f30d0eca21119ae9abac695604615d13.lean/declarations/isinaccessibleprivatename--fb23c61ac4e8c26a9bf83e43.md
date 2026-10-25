# isInaccessiblePrivateName

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:23ac4e790b4a989403ccd4ba31aee8b8b14696ebe09e3b35c56e2a181a34e6bd",
  "kind": "def",
  "lexical_name": "isInaccessiblePrivateName",
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
  "slug": "isinaccessibleprivatename--fb23c61ac4e8c26a9bf83e43",
  "source": {
    "blob": "b687cc6b3cb76fc6a2f6f726d494f46ea541614b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 278,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResolveName/Variant29568f90bc8c5b713b7462096b94e898f30d0eca21119ae9abac695604615d13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fb23c61ac4e8c26a9bf83e431ddae062b1ea5a362a24510589898336fc2c1ef2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResolveName/Variant29568f90bc8c5b713b7462096b94e898f30d0eca21119ae9abac695604615d13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:23ac4e790b4a989403ccd4ba31aee8b8b14696ebe09e3b35c56e2a181a34e6bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def isInaccessiblePrivateName [Monad m] [MonadEnv m] [MonadOptions m] (n : Name) : m Bool := do
  if !isPrivateName n then
    return false
  let env ← getEnv
  -- All private names are inaccessible from the public scope
  if env.isExporting && !(← ResolveName.backward.privateInPublic.getM) then
    return true
  checkPrivateInPublic n
  -- In the private scope, ...
  match env.getModuleIdxFor? n with
  | some modIdx =>
    -- ... allow access through `import all`
    return !env.header.isModule || !env.header.modules[modIdx]?.any (·.importAll)
  | none =>
    -- ... allow all accesses in the current module
    return false

/--
Given a name `n`, return a list of possible interpretations.
Each interpretation is a pair `(declName, fieldList)`, where `declName`
is the name of a declaration in the current environment, and `fieldList` are
(potential) field names.
The pair is needed because in Lean `.` may be part of a qualified name or
a field (aka dot-notation).
As an example, consider the following definitions
```
def Boo.x   := 1
def Foo.x   := 2
def Foo.x.y := 3
```
After `open Foo`, we have
- `resolveGlobalName x`     => `[(Foo.x, [])]`
- `resolveGlobalName x.y`   => `[(Foo.x.y, [])]`
- `resolveGlobalName x.z.w` => `[(Foo.x, [z, w])]`

After `open Foo open Boo`, we have
- `resolveGlobalName x`     => `[(Foo.x, []), (Boo.x, [])]`
- `resolveGlobalName x.y`   => `[(Foo.x.y, [])]`
- `resolveGlobalName x.z.w` => `[(Foo.x, [z, w]), (Boo.x, [z, w])]`

If `enableLog` is false, this function does not ever log warnings etc, which is useful if it may be
called incidentally or multiple times.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResolveName/Variant29568f90bc8c5b713b7462096b94e898f30d0eca21119ae9abac695604615d13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResolveName/Variant29568f90bc8c5b713b7462096b94e898f30d0eca21119ae9abac695604615d13.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b687cc6b3cb76fc6a2f6f726d494f46ea541614b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
