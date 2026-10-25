# getNNRealCoes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:693aa4bdee13228a31804dadfb813773ed1dd939e033f574c6848c187a1cd234",
  "kind": "def",
  "lexical_name": "getNNRealCoes",
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
  "slug": "getnnrealcoes--98e85fd4d0410b702ddd0983",
  "source": {
    "blob": "e81bb2029b4fa7f3e2b27c2816b4560fe7a45597",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 45,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NNRealPreprocessor/Variant61a3f1aebeb5b8809eb261ebe35553ed96630bb167da60b05e9f7e30ea863e19.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:98e85fd4d0410b702ddd09832bb686be811f6247172114fb7ff08d71e13a62d4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NNRealPreprocessor/Variant61a3f1aebeb5b8809eb261ebe35553ed96630bb167da60b05e9f7e30ea863e19.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:693aa4bdee13228a31804dadfb813773ed1dd939e033f574c6848c187a1cd234`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def getNNRealCoes (e : Expr) : List Expr :=
  match getNNRealToRealArg? e with
  | some x => [x]
  | none => match e.getAppFnArgs with
    | (``HAdd.hAdd, #[_, _, _, _, a, b]) => getNNRealCoes a ++ getNNRealCoes b
    | (``HMul.hMul, #[_, _, _, _, a, b]) => getNNRealCoes a ++ getNNRealCoes b
    | (``HSub.hSub, #[_, _, _, _, a, b]) => getNNRealCoes a ++ getNNRealCoes b
    | (``HDiv.hDiv, #[_, _, _, _, a, _]) => getNNRealCoes a
    | (``Neg.neg, #[_, _, a]) => getNNRealCoes a
    | _ => []

/-- If `e : ℝ≥0`, returns a proof of `0 ≤ (e : ℝ)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NNRealPreprocessor/Variant61a3f1aebeb5b8809eb261ebe35553ed96630bb167da60b05e9f7e30ea863e19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NNRealPreprocessor/Variant61a3f1aebeb5b8809eb261ebe35553ed96630bb167da60b05e9f7e30ea863e19.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e81bb2029b4fa7f3e2b27c2816b4560fe7a45597` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
