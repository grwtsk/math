# BinOp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8d3a65e9e931ab40fcc0f9c36366258ed94ce22241335b17ade3c33c905a7775",
  "kind": "inductive",
  "lexical_name": "BinOp",
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
  "slug": "binop--777e176efbc29aee8d019b34",
  "source": {
    "blob": "33dc71e39c2dc42bf285892e0efe7ff6ab5655a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 12,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveNKIBinopGenerator/Variantea5b284aa9b8c8a9448cd8798caf738e1eb7cf62f5a3b8a4f3b71f63ce222850.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:777e176efbc29aee8d019b3414967c75b1c5b995dc85e7761888e1e41cd1a3d2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveNKIBinopGenerator/Variantea5b284aa9b8c8a9448cd8798caf738e1eb7cf62f5a3b8a4f3b71f63ce222850.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8d3a65e9e931ab40fcc0f9c36366258ed94ce22241335b17ade3c33c905a7775`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 12–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive BinOp where
  -- logical
  | land | lor
  -- comparison
  | eq | ne | lt | le | gt | ge
  -- arithmetic
  | add | sub | mul | div | mod | pow | floor
  -- bitwise
  | lshift | rshift | or | xor | and
  deriving Repr

set_option trace.plausible.deriving.arbitrary true in
/--
trace: [plausible.deriving.arbitrary] ⏎
    [mutual
       def instArbitraryBinOp.arbitrary : Nat → Plausible.Gen (@BinOp✝) :=
         let rec aux_arb (fuel✝ : Nat) : Plausible.Gen (@BinOp✝) :=
           (match fuel✝ with
           | Nat.zero =>
             Plausible.Gen.oneOfWithDefault (pure BinOp.land)
               [(pure BinOp.land), (pure BinOp.lor), (pure BinOp.eq), (pure BinOp.ne), (pure BinOp.lt), (pure BinOp.le),
                 (pure BinOp.gt), (pure BinOp.ge), (pure BinOp.add), (pure BinOp.sub), (pure BinOp.mul),
                 (pure BinOp.div), (pure BinOp.mod), (pure BinOp.pow), (pure BinOp.floor), (pure BinOp.lshift),
                 (pure BinOp.rshift), (pure BinOp.or), (pure BinOp.xor), (pure BinOp.and)]
           | fuel'✝ + 1 =>
             Plausible.Gen.frequency (pure BinOp.land)
               [(1, (pure BinOp.land)), (1, (pure BinOp.lor)), (1, (pure BinOp.eq)), (1, (pure BinOp.ne)),
                 (1, (pure BinOp.lt)), (1, (pure BinOp.le)), (1, (pure BinOp.gt)), (1, (pure BinOp.ge)),
                 (1, (pure BinOp.add)), (1, (pure BinOp.sub)), (1, (pure BinOp.mul)), (1, (pure BinOp.div)),
                 (1, (pure BinOp.mod)), (1, (pure BinOp.pow)), (1, (pure BinOp.floor)), (1, (pure BinOp.lshift)),
                 (1, (pure BinOp.rshift)), (1, (pure BinOp.or)), (1, (pure BinOp.xor)), (1, (pure BinOp.and)), ])
         fun fuel✝ => aux_arb fuel✝
     end,
     instance : Plausible.ArbitraryFueled✝ (@BinOp✝) :=
       ⟨instArbitraryBinOp.arbitrary⟩]
-/
#guard_msgs in
deriving instance Arbitrary for BinOp

-- Test that we can successfully synthesize instances of `Arbitrary` & `ArbitraryFueled`

/-- info: instArbitraryFueledBinOp -/
#guard_msgs in
#synth ArbitraryFueled BinOp

/-- info: instArbitraryOfArbitraryFueled -/
#guard_msgs in
#synth Arbitrary BinOp

/-- Trivial `Shrinkable` instance for `BinOp`s -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveNKIBinopGenerator/Variantea5b284aa9b8c8a9448cd8798caf738e1eb7cf62f5a3b8a4f3b71f63ce222850.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveNKIBinopGenerator/Variantea5b284aa9b8c8a9448cd8798caf738e1eb7cf62f5a3b8a4f3b71f63ce222850.lean#L12).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33dc71e39c2dc42bf285892e0efe7ff6ab5655a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
