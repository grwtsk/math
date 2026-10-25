# evalNatCast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4e4ca86a1e78845a21c598bdf4394c6bf684c9695b74a5ad64f833f12eed90cd",
  "kind": "def",
  "lexical_name": "evalNatCast",
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
  "slug": "evalnatcast--74cb38eae2a62cfd8a8a577c",
  "source": {
    "blob": "3d767e9ed3e74a3ce2a31017f2d73ceb524f32c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 434,
    "line": 419,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:74cb38eae2a62cfd8a8a577c8f78d25b175bc76b2039919fcabef1bbee694707",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4e4ca86a1e78845a21c598bdf4394c6bf684c9695b74a5ad64f833f12eed90cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 419–434.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalNatCast : PositivityExt where eval {u α} _zα _pα e := do
  let (.app _ (a : Q(Nat))) ← withReducible (whnf e) | throwError "not Nat.cast"
  let zα' : Q(Zero Nat) := q(inferInstance)
  let pα' : Q(PartialOrder Nat) := q(inferInstance)
  let ra ← core zα' pα' a
  let _oα ← synthInstanceQ q(OrderedSemiring $α)
  haveI' : $e =Q Nat.cast $a := ⟨⟩
  assumeInstancesCommute
  match ra with
  | .positive pa =>
    let _nt ← synthInstanceQ q(Nontrivial $α)
    pure (.positive q(Nat.cast_pos.mpr $pa))
  | _ =>
    pure (.nonnegative q(Nat.cast_nonneg _))

@[positivity Int.cast _]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean#L419).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d767e9ed3e74a3ce2a31017f2d73ceb524f32c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
