# pushResult

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d7185f53fa4c6f6fed5174fdfda510632ea66f3b0ae0bc920cf7050fdc2979fd",
  "kind": "def",
  "lexical_name": "pushResult",
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
  "slug": "pushresult--8685cc42f07a316ab0887eab",
  "source": {
    "blob": "e4171b932c4fa956f4f6011ce069f73d9bee1cda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 367,
    "line": 322,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant2c743cdc6c5ecf776ac1e3975348501acd64216a4a0a88778ef98b42628585a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8685cc42f07a316ab0887eab2dd06dcb1024d2f5abc8a314a420ca2065d1d2b7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant2c743cdc6c5ecf776ac1e3975348501acd64216a4a0a88778ef98b42628585a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d7185f53fa4c6f6fed5174fdfda510632ea66f3b0ae0bc920cf7050fdc2979fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 322–367.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def pushResult (argResults : Array Result) (numEqs : Nat) (result : Result) : Array Result :=
  match result with
  | .rfl .. => if argResults.size > 0 then argResults.push result else argResults
  | .step .. =>
    if argResults.size < numEqs then
      Array.replicate numEqs .rfl |>.push result
    else
      argResults.push result

/--
Simplifies arguments of a function application using a pre-generated congruence theorem.

This strategy is used for functions that have complex argument dependencies, particularly
those with proof arguments or `Decidable` instances. Unlike `congrFixedPrefix` and
`congrInterlaced`, which construct proofs on-the-fly using basic congruence lemmas
(`congrArg`, `congrFun`, `congrFun'`, `congr`), this function applies a specialized congruence theorem
that was pre-generated for the specific function being simplified.

See type `CongrArgKind`.

**Algorithm**:
1. Recursively simplify all `.eq` arguments (via `simpEqArgs`)
2. If all simplifications return `.rfl`, the overall result is `.rfl`
3. Otherwise, construct the final proof by:
   - Starting with the congruence theorem's proof term
   - Applying original arguments and their simplification results
   - Re-synthesizing subsingleton instances when their dependencies change
   - Removing unnecessary casts from the result

**Key examples**:

1. `ite`: Has type `{α : Sort u} → (c : Prop) → [Decidable c] → α → α → α`
   - Argument kinds: `[.fixed, .eq, .subsingletonInst, .eq, .eq]`
   - When simplifying `ite (x > 0) a b`, if `x > 0` simplifies to `true`, we must
     re-synthesize `[Decidable true]` because the original `[Decidable (x > 0)]`
     instance is no longer type-correct

2. `GetElem.getElem`: Has type
   ```
   {coll : Type u} → {idx : Type v} → {elem : Type w} → {valid : coll → idx → Prop} →
   [GetElem coll idx elem valid] → (xs : coll) → (i : idx) → valid xs i → elem
   ```
   - The proof argument `valid xs i` depends on earlier arguments `xs` and `i`
   - When `xs` or `i` are simplified, the proof is adjusted in the `rhs` of the auto-generated
     theorem.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant2c743cdc6c5ecf776ac1e3975348501acd64216a4a0a88778ef98b42628585a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant2c743cdc6c5ecf776ac1e3975348501acd64216a4a0a88778ef98b42628585a5.lean#L322).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4171b932c4fa956f4f6011ce069f73d9bee1cda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
