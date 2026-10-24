# backtrackFuel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:45b3aa9a867bc4e953ea2606ce1a0e0dffdc5f474cb30a0816b3c56f053d516b",
  "kind": "def",
  "lexical_name": "backtrackFuel",
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
  "slug": "backtrackfuel--f16972fe6dbee0280d705fef",
  "source": {
    "blob": "8276eb618ffbf598066b782e0350524d72e5b1fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 173,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gen/Variant6b8a4951159be7db66630252c2dd277e88dadf70ff5c9db259c8e77570ccd19e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f16972fe6dbee0280d705fef690f05013eb0347d1029394df552ffe2931ba901",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gen/Variant6b8a4951159be7db66630252c2dd277e88dadf70ff5c9db259c8e77570ccd19e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:45b3aa9a867bc4e953ea2606ce1a0e0dffdc5f474cb30a0816b3c56f053d516b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def backtrackFuel {α : Type u} (fuel : Nat) (total : Nat) (gs : List (Nat × Gen α)) : Gen α :=
  match fuel with
  | .zero => throw Gen.outOfFuel
  | .succ fuel' => do
    let n ← (Gen.choose Nat 0 (total - 1) (by omega)).up
    let (k, g, gs') := pickDrop gs n.down
    -- Try to generate a value using `g`, if it fails, backtrack with `fuel'`
    -- and pick one out of the `total - k` remaining generators
    tryCatch g (fun _ => backtrackFuel fuel' (total - k) gs')

/-- Tries all generators until one returns a `Some` value or all the generators failed once with `None`.
   The generators are picked at random according to their weights (like `frequency` in Haskell QuickCheck),
   and each generator is run at most once. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gen/Variant6b8a4951159be7db66630252c2dd277e88dadf70ff5c9db259c8e77570ccd19e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gen/Variant6b8a4951159be7db66630252c2dd277e88dadf70ff5c9db259c8e77570ccd19e.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8276eb618ffbf598066b782e0350524d72e5b1fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
