# boolGF2Equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:87608e1dbcb9665416ad7498488c7fea0861f7bf64e7fdaffced0d611a3664ca",
  "kind": "def",
  "lexical_name": "boolGF2Equiv",
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
  "slug": "boolgf2equiv--b479e39f5c3ae818022f53de",
  "source": {
    "blob": "5eb5184a986f4659bb9c15c5810f7a175fd3d45c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 46,
    "path": "GRWTSK/Algebra/LinearAlgebra/GaloisField/Variant29b9c05cabd489629a5ba7fc229759eebc85c9cb15e93fc5dc27b669c6de45cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b479e39f5c3ae818022f53de27ff7a1c9f30d3947c864db7993bbbe5abe01a90",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/GaloisField/Variant29b9c05cabd489629a5ba7fc229759eebc85c9cb15e93fc5dc27b669c6de45cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:87608e1dbcb9665416ad7498488c7fea0861f7bf64e7fdaffced0d611a3664ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def boolGF2Equiv : Bool ≃ GF2 where
  toFun b := if b then 1 else 0
  invFun x := decide (x.val = 1)
  left_inv b := by
    cases b <;> simp [ZMod.val_one]
  right_inv x := by
    have hx : x.val = 0 ∨ x.val = 1 := by
      have := ZMod.val_lt x
      omega
    rcases hx with hx | hx
    · have hx0 : x = 0 := (ZMod.val_eq_zero x).mp hx
      subst x
      simp
    · have hx1 : x = 1 := (ZMod.val_eq_one (by omega) x).mp hx
      subst x
      simp [ZMod.val_one]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/GaloisField/Variant29b9c05cabd489629a5ba7fc229759eebc85c9cb15e93fc5dc27b669c6de45cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/GaloisField/Variant29b9c05cabd489629a5ba7fc229759eebc85c9cb15e93fc5dc27b669c6de45cf.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5eb5184a986f4659bb9c15c5810f7a175fd3d45c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
