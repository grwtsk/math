# MyList

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c2e8163384b0cf0ac0374be8a09ddff9a1b1cec5e331ec90f62bc14d1aecf44a",
  "kind": "inductive",
  "lexical_name": "MyList",
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
  "slug": "mylist--a25d124ac1eb84bfc8c2e3c2",
  "source": {
    "blob": "8d60f1c01c6b5bcf45a4049b42b1a4f6970033f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 10,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ParameterizedTypeTest/Variantced575195ee63b691e7ed07a3f12c1959c422e08073765072f24161a99e241eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a25d124ac1eb84bfc8c2e3c204e7cb5d02b96146b213ef50a6591c1f699998a2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ParameterizedTypeTest/Variantced575195ee63b691e7ed07a3f12c1959c422e08073765072f24161a99e241eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c2e8163384b0cf0ac0374be8a09ddff9a1b1cec5e331ec90f62bc14d1aecf44a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 10–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive MyList (α : Type) where
  | MyNil : MyList α
  | MyCons : α → MyList α → MyList α
  deriving Repr, BEq

set_option trace.plausible.deriving.arbitrary true in
/--
trace: [plausible.deriving.arbitrary] ⏎
    [mutual
       def instArbitraryMyList.arbitrary {α✝} [Plausible.Arbitrary✝ α✝] : Nat → Plausible.Gen (@MyList✝ α✝) :=
         let rec aux_arb (fuel✝ : Nat) : Plausible.Gen (@MyList✝ α✝) :=
           (match fuel✝ with
           | Nat.zero => Plausible.Gen.oneOfWithDefault (pure MyList.MyNil) [(pure MyList.MyNil)]
           | fuel'✝ + 1 =>
             Plausible.Gen.frequency (pure MyList.MyNil)
               [(1, (pure MyList.MyNil)),
                 (fuel'✝ + 1,
                   (do
                     let a✝ ← Plausible.Arbitrary.arbitrary
                     let a✝¹ ← aux_arb fuel'✝
                     return MyList.MyCons a✝ a✝¹))])
         fun fuel✝ => aux_arb fuel✝
     end,
     instance {α✝} [Plausible.Arbitrary✝ α✝] : Plausible.ArbitraryFueled✝ (@MyList✝ α✝) :=
       ⟨instArbitraryMyList.arbitrary⟩]
-/
#guard_msgs in
deriving instance Arbitrary for MyList

-- Test that we reject attempts to derive `Arbitrary` on indexed types

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ParameterizedTypeTest/Variantced575195ee63b691e7ed07a3f12c1959c422e08073765072f24161a99e241eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ParameterizedTypeTest/Variantced575195ee63b691e7ed07a3f12c1959c422e08073765072f24161a99e241eb.lean#L10).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d60f1c01c6b5bcf45a4049b42b1a4f6970033f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
