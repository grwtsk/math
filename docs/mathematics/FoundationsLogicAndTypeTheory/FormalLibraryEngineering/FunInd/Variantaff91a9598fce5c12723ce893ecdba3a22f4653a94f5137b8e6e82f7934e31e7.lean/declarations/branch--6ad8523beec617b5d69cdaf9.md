# branch

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:adf87be5e7e57486e84a6ef3cbad3c1a612b2a840107cb4d347d5cf0650e9d25",
  "kind": "def",
  "lexical_name": "branch",
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
  "slug": "branch--6ad8523beec617b5d69cdaf9",
  "source": {
    "blob": "2efba24e4a0d0db446c1275dccf439a3b903c7da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 253,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Variantaff91a9598fce5c12723ce893ecdba3a22f4653a94f5137b8e6e82f7934e31e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6ad8523beec617b5d69cdaf95af12051943eb8bd0a5df43af4920924587ea209",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Variantaff91a9598fce5c12723ce893ecdba3a22f4653a94f5137b8e6e82f7934e31e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:adf87be5e7e57486e84a6ef3cbad3c1a612b2a840107cb4d347d5cf0650e9d25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def branch (act : M α) : M α :=
  localM (fun _ => pure #[]) act

end M

/--
The `foldAndCollect` function performs two operations together:

 * it folds recursive calls: applications (and projections) of `oldIH` in `e` correspond to
   recursive calls, so this function rewrites that back to recursive calls
 * it collects induction hypotheses: after replacing `oldIH` with `newIH`, applications thereof
   are valuable as induction hypotheses for the cases.

For well-founded recursion (unary, non-mutual by construction) the terms are rather simple: they
are `oldIH arg proof`, and can be rewritten to `f arg` resp. `newIH arg proof`. But for
structural recursion this can be a more complicated mix of function applications (due to reflexive
data types or extra function arguments) and `PProd` projections (due to the below construction and
mutual function packing), and the main function argument isn't even present.

To avoid having to think about this, we apply a nice trick:

We compositionally replace `oldIH` with `newIH`. This likely changes the result type, so when
re-assembling we have to be supple (mainly around `PProd.fst`/`PProd.snd`). As we re-assemble
the term we check if it has type `motive xs..`. If it has, then know we have just found and
rewritten a recursive call, and this type nicely provides us the arguments `xs`. So at this point
we store the rewritten expression as a new induction hypothesis (using `M.tell`) and rewrite to
`f xs..`, which now again has the same type as the original term, and the further re-assembly should
work. Half this logic is in the `isRecCall` parameter.

If this process fails we’ll get weird type errors (caught later on). We'll see if we need to
improve the errors, for example by passing down a flag whether we expect the same type (and no
occurrences of `newIH`), or whether we are in “supple mode”, and catch it earlier if the rewriting
fails.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Variantaff91a9598fce5c12723ce893ecdba3a22f4653a94f5137b8e6e82f7934e31e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Variantaff91a9598fce5c12723ce893ecdba3a22f4653a94f5137b8e6e82f7934e31e7.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2efba24e4a0d0db446c1275dccf439a3b903c7da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
