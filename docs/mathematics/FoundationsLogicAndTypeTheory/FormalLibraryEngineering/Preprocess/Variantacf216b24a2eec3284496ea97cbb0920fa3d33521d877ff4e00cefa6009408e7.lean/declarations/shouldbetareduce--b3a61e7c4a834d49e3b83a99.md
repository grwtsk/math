# shouldBetaReduce

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0ac57ac7cce082a26ef71dd7f564526b05512d9e243311b75dfc6b87aeede197",
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
  "slug": "shouldbetareduce--b3a61e7c4a834d49e3b83a99",
  "source": {
    "blob": "bdc7078c13da16e232258f4f9993230e451fab69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 25,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocess/Variantacf216b24a2eec3284496ea97cbb0920fa3d33521d877ff4e00cefa6009408e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b3a61e7c4a834d49e3b83a99bbc5b7d0f479aaabc07ae9d16f2cebdba7da5cef",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocess/Variantacf216b24a2eec3284496ea97cbb0920fa3d33521d877ff4e00cefa6009408e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0ac57ac7cce082a26ef71dd7f564526b05512d9e243311b75dfc6b87aeede197`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–53.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocess/Variantacf216b24a2eec3284496ea97cbb0920fa3d33521d877ff4e00cefa6009408e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocess/Variantacf216b24a2eec3284496ea97cbb0920fa3d33521d877ff4e00cefa6009408e7.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdc7078c13da16e232258f4f9993230e451fab69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
