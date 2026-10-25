# pushArgsUsingInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bcef5bdbc4fbf6f27b166c7897963bc995b87ce445e93e749e28899c295c6cc9",
  "kind": "def",
  "lexical_name": "pushArgsUsingInfo",
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
  "slug": "pushargsusinginfo--2847eee31bd0f88acffd8c80",
  "source": {
    "blob": "b1f6368876af57c5489a489bebf7af79bfd1ba7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 68,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Varianta89333dc8e0bb353c253caccae22ee4c8c9b48fbf728ef22661e1f2345cc9590.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2847eee31bd0f88acffd8c80a24a3fd09502458457c272bdc2290ec219650fd8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Varianta89333dc8e0bb353c253caccae22ee4c8c9b48fbf728ef22661e1f2345cc9590.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bcef5bdbc4fbf6f27b166c7897963bc995b87ce445e93e749e28899c295c6cc9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pushArgsUsingInfo (infos : Array ProofInstArgInfo) (i : Nat) (e : Expr) (todo : Array Expr) : Array Expr :=
  match e with
  | .app f a =>
    if ignoreArg infos i then
      -- **Note**: We use a dummy bvar, it will be transformed into a `Key.star` later.
      let dummyBVar := .bvar 1000000
      pushArgsUsingInfo infos (i-1) f (todo.push dummyBVar)
    else
      pushArgsUsingInfo infos (i-1) f (todo.push a)
  | _ => todo

/--
Computes the discrimination tree key for an expression and pushes its subterms onto the todo stack.
Returns `Key.star` for bound variables and `noindex`-annotated terms.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Varianta89333dc8e0bb353c253caccae22ee4c8c9b48fbf728ef22661e1f2345cc9590.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Varianta89333dc8e0bb353c253caccae22ee4c8c9b48fbf728ef22661e1f2345cc9590.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1f6368876af57c5489a489bebf7af79bfd1ba7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
