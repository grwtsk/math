# shouldBetaReduce

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b63017a5f172ee77dd3058c63db2cd9a738adf01e82e86f66d4948dbe4ca89a3",
  "kind": "def",
  "lexical_name": "shouldBetaReduce",
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
  "slug": "shouldbetareduce--c707c1dc9dccccdb085d423f",
  "source": {
    "blob": "dfc7cc42fb70651a625fe7c8450c37413c64d52e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 17,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocess/Variantc9925a6cbd11b464dcfcaf4561a628cbe3bab8862546cedbc7035c0b3bc1db0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c707c1dc9dccccdb085d423f5e4226fa26ddc1e6a5a80e227af1f279168afbef",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocess/Variantc9925a6cbd11b464dcfcaf4561a628cbe3bab8862546cedbc7035c0b3bc1db0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b63017a5f172ee77dd3058c63db2cd9a738adf01e82e86f66d4948dbe4ca89a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def shouldBetaReduce (e : Expr) (recFnNames : Array Name) : Bool :=
  if e.isHeadBetaTarget then
    e.getAppFn.find? (fun e => e.isConst && recFnNames.contains e.constName!) |>.isSome
  else
    false

/--
Preprocesses the expressions to improve the effectiveness of `elimRecursion`.

* Beta reduce terms where the recursive function occurs in the lambda term.
  Example:
  ```
  def f : Nat → Nat
    | 0 => 1
    | i+1 => (fun x => f x) i
  ```

* Floats out the RecApp markers.
  Example:
  ```
  def f : Nat → Nat
    | 0 => 1
    | i+1 => (f x) i
  ```

* Unfold auxiliary definitions abstracting over the function call
  (typically abstracted) proofs.

-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocess/Variantc9925a6cbd11b464dcfcaf4561a628cbe3bab8862546cedbc7035c0b3bc1db0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocess/Variantc9925a6cbd11b464dcfcaf4561a628cbe3bab8862546cedbc7035c0b3bc1db0e.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dfc7cc42fb70651a625fe7c8450c37413c64d52e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
