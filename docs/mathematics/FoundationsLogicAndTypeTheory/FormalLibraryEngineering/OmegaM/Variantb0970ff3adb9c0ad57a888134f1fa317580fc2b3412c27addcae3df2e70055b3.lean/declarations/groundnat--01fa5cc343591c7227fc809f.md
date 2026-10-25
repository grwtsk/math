# groundNat?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7b2a7afafa4f8d4e3ac86628ac3f1623cbe481c5efa9b7f361315bcadc4d2116",
  "kind": "def",
  "lexical_name": "groundNat?",
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
  "slug": "groundnat--01fa5cc343591c7227fc809f",
  "source": {
    "blob": "74af59dfb59bc31e443ea60498d2ce7fe9c52c21",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 124,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OmegaM/Variantb0970ff3adb9c0ad57a888134f1fa317580fc2b3412c27addcae3df2e70055b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:01fa5cc343591c7227fc809f2488291656f4fbbd74b520bc9800e74764511500",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OmegaM/Variantb0970ff3adb9c0ad57a888134f1fa317580fc2b3412c27addcae3df2e70055b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7b2a7afafa4f8d4e3ac86628ac3f1623cbe481c5efa9b7f361315bcadc4d2116`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def groundNat? (e : Expr) : Option Nat :=
  match e.getAppFnArgs with
  | (``Nat.cast, #[_, _, n]) => groundNat? n
  | (``HAdd.hAdd, #[_, _, _, _, x, y]) => op (· + ·) x y
  | (``HMul.hMul, #[_, _, _, _, x, y]) => op (· * ·) x y
  | (``HSub.hSub, #[_, _, _, _, x, y]) => op (· - ·) x y
  | (``HDiv.hDiv, #[_, _, _, _, x, y]) => op (· / ·) x y
  | (``HPow.hPow, #[_, _, _, _, x, y]) => op (· ^ ·) x y
  | _ => e.nat?
where op (f : Nat → Nat → Nat) (x y : Expr) : Option Nat :=
  match groundNat? x, groundNat? y with
    | some x', some y' => some (f x' y')
    | _, _ => none

/--
If `groundInt? e = some i`,
then `e` is definitionally equal to the standard expression for `i`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OmegaM/Variantb0970ff3adb9c0ad57a888134f1fa317580fc2b3412c27addcae3df2e70055b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OmegaM/Variantb0970ff3adb9c0ad57a888134f1fa317580fc2b3412c27addcae3df2e70055b3.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74af59dfb59bc31e443ea60498d2ce7fe9c52c21` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
