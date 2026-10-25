# isWeakSpecType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:145c49968d293cc01019597945ceef226e79f8dd30252e3cf8d0f3bc14457a5a",
  "kind": "def",
  "lexical_name": "isWeakSpecType",
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
  "slug": "isweakspectype--ea72717fdbb86ddc9e318449",
  "source": {
    "blob": "624618aefa34a63676ff9c93c4e47a3222737715",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 139,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecInfo/Variantba289115c174887f6df5759985258efc7c151f492994a967ed90fda4f2d66633.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ea72717fdbb86ddc9e318449d0f0808dbc5dd07df9ee8246aecf0d4704d1e276",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecInfo/Variantba289115c174887f6df5759985258efc7c151f492994a967ed90fda4f2d66633.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:145c49968d293cc01019597945ceef226e79f8dd30252e3cf8d0f3bc14457a5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def isWeakSpecType (env : Environment) (type : Expr) : Bool :=
  match type with
  | .forallE _ _ b _ => isWeakSpecType env b
  | _ =>
    if let .const declName _ := type.getAppFn then
      hasWeakSpecializeAttribute env declName
    else
      false

/-!
*Note*: `fixedNeutral` must have forward dependencies.

The code specializer consider a `fixedNeutral` parameter during code specialization
only if it contains forward dependencies that are tagged as `.user`, `.fixedHO`, or `.fixedInst`.
The motivation is to minimize the number of code specializations that have little or no impact on
performance. For example, let's consider the function.
```
def liftMacroM
    {α : Type} {m : Type → Type}
    [Monad m] [MonadMacroAdapter m] [MonadEnv m] [MonadRecDepth m] [MonadError m]
    [MonadResolveName m] [MonadTrace m] [MonadOptions m] [AddMessageContext m] [MonadLiftT IO m] (x : MacroM α) : m α := do
```
The parameter `α` does not occur in any local instance, and `x` is marked as `.other` since the function
is not tagged as `[specialize]`. There is little value in considering `α` during code specialization,
but if we do many copies of this function will be generated.
Recall users may still force the code specializer to take `α` into account by using `[specialize α]` (`α` has `.user` info),
or `[specialize x]` (`α` has `.fixedNeutral` since `x` is a forward dependency tagged as `.user`),
or `[specialize]` (`α` has `.fixedNeutral` since `x` is a forward dependency tagged as `.fixedHO`).
-/

/--
Return `true` if parameter `j` of the given declaration has a forward dependency at parameter `k`,
and `k` is tagged as `.user`, `.fixedHO`, or `.fixedInst`.

See comment at `.fixedNeutral`.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecInfo/Variantba289115c174887f6df5759985258efc7c151f492994a967ed90fda4f2d66633.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecInfo/Variantba289115c174887f6df5759985258efc7c151f492994a967ed90fda4f2d66633.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `624618aefa34a63676ff9c93c4e47a3222737715` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
