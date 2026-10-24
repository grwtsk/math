# evalNNRatCast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f6b2b283641c9ed7d982aaa42563caff00e6a968128cec11566900ef7ce937c0",
  "kind": "def",
  "lexical_name": "evalNNRatCast",
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
  "slug": "evalnnratcast--0c60a8e6019882113b522f4f",
  "source": {
    "blob": "ae4592f3acfb55a28a8f1cc7826d904f941e2717",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 295,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Order/Variant7168364a994bf3fa35b898925ea574614748a9976df00e7bfd4b27cab0a3a2a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0c60a8e6019882113b522f4fa1ee4483ff1900a31321c0abb80e081f69cf8d6a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant7168364a994bf3fa35b898925ea574614748a9976df00e7bfd4b27cab0a3a2a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f6b2b283641c9ed7d982aaa42563caff00e6a968128cec11566900ef7ce937c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
meta def evalNNRatCast : PositivityExt where eval {u α} _zα pα? e :=
  match pα? with | none => pure .none | some _ => do
  let ~q(@NNRat.cast _ (_) ($a : ℚ≥0)) := e | throwError "not NNRat.cast"
  match ← core q(inferInstance) (some q(inferInstance)) a with
  | .positive pa =>
    let _oα ← synthInstanceQ q(Semifield $α)
    let _oα ← synthInstanceQ q(LinearOrder $α)
    let _oα ← synthInstanceQ q(IsStrictOrderedRing $α)
    assumeInstancesCommute
    return .positive q((NNRat.cast_pos (K := $α)).mpr $pa)
  | _ =>
    let _oα ← synthInstanceQ q(Semifield $α)
    let _oα ← synthInstanceQ q(LinearOrder $α)
    let _oα ← synthInstanceQ q(IsStrictOrderedRing $α)
    assumeInstancesCommute
    return .nonnegative q(NNRat.cast_nonneg _)

end Mathlib.Meta.Positivity
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant7168364a994bf3fa35b898925ea574614748a9976df00e7bfd4b27cab0a3a2a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Order/Variant7168364a994bf3fa35b898925ea574614748a9976df00e7bfd4b27cab0a3a2a6.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae4592f3acfb55a28a8f1cc7826d904f941e2717` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
