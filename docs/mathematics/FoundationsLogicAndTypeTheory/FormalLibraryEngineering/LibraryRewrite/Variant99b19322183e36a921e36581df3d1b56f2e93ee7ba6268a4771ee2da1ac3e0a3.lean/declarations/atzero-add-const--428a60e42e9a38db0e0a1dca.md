# atZero_add_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:60dc263e-9d7c-d571-e106-bf93ff365c7b",
  "kind": "theorem",
  "lexical_name": "atZero_add_const",
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
  "slug": "atzero-add-const--428a60e42e9a38db0e0a1dca",
  "source": {
    "blob": "7fbd1ea39c1944d0b63c18e8dd99e1a875052a9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 199,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibraryRewrite/Variant99b19322183e36a921e36581df3d1b56f2e93ee7ba6268a4771ee2da1ac3e0a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:428a60e42e9a38db0e0a1dcab39bd9146cf7248e3416a56653ec1e6b1bbe90bd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibraryRewrite/Variant99b19322183e36a921e36581df3d1b56f2e93ee7ba6268a4771ee2da1ac3e0a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60dc263e-9d7c-d571-e106-bf93ff365c7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem atZero_add_const (f : Int → Int) (c : Int) : atZero (fun x => f x + c) = atZero f + c := rfl

/--
info: Pattern atZero fun x => f x + c
· (atZero fun x => x) + 1
  atZero_add_const

Pattern atZero fun x => f x + g x
· (atZero fun x => x) + atZero fun x => 1
  atZero_add

Pattern atZero f
· -atZero fun x => -(x + 1)
  neg_atZero_neg
-/
#guard_msgs in
#rw?? atZero fun x => x + 1
/--
info: Pattern atZero fun x => -f x
· -atZero fun x => x
  atZero_neg

Pattern atZero f
· -atZero fun x => - -x
  neg_atZero_neg
-/
#guard_msgs in
#rw?? atZero (Neg.neg : Int → Int)

-- `Nat.Coprime` is reducible, so we might get matches with the pattern `n = 1`.
-- This doesn't work with the `rw` tactic though, so we make sure to avoid them.
/--
info: Pattern n.Coprime m
· Nat.Coprime 3 2
  Nat.coprime_comm
· Nat.gcd 2 3 = 1
  Nat.coprime_iff_gcd_eq_one
-/
#guard_msgs in
#rw?? Nat.Coprime 2 3
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibraryRewrite/Variant99b19322183e36a921e36581df3d1b56f2e93ee7ba6268a4771ee2da1ac3e0a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibraryRewrite/Variant99b19322183e36a921e36581df3d1b56f2e93ee7ba6268a4771ee2da1ac3e0a3.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fbd1ea39c1944d0b63c18e8dd99e1a875052a9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
