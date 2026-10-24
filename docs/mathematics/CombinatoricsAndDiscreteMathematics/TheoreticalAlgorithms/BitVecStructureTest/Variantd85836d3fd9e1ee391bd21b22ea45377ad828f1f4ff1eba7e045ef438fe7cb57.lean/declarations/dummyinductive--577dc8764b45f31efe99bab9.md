# DummyInductive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fb9d2ce88c63f18c31c5a6b51c13bb76976f3235335b0fb854c9f4c7c33dae59",
  "kind": "inductive",
  "lexical_name": "DummyInductive",
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
  "slug": "dummyinductive--577dc8764b45f31efe99bab9",
  "source": {
    "blob": "010f8453e01211bf73103087aa9208ae10fd7b61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 12,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BitVecStructureTest/Variantd85836d3fd9e1ee391bd21b22ea45377ad828f1f4ff1eba7e045ef438fe7cb57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:577dc8764b45f31efe99bab91e28cb665d22764788e2153378b7b4ec26df39eb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BitVecStructureTest/Variantd85836d3fd9e1ee391bd21b22ea45377ad828f1f4ff1eba7e045ef438fe7cb57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fb9d2ce88c63f18c31c5a6b51c13bb76976f3235335b0fb854c9f4c7c33dae59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 12–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive DummyInductive where
  | FromBitVec : ∀ (n : Nat), BitVec n → String → DummyInductive
  deriving Repr

set_option trace.plausible.deriving.arbitrary true in
/--
trace: [plausible.deriving.arbitrary] ⏎
    [mutual
       def instArbitraryDummyInductive.arbitrary : Nat → Plausible.Gen (@DummyInductive✝) :=
         let rec aux_arb (fuel✝ : Nat) : Plausible.Gen (@DummyInductive✝) :=
           (match fuel✝ with
           | Nat.zero =>
             Plausible.Gen.oneOfWithDefault
               (do
                 let a✝ ← Plausible.Arbitrary.arbitrary
                 let a✝¹ ← Plausible.Arbitrary.arbitrary
                 let a✝² ← Plausible.Arbitrary.arbitrary
                 return DummyInductive.FromBitVec a✝ a✝¹ a✝²)
               [(do
                   let a✝ ← Plausible.Arbitrary.arbitrary
                   let a✝¹ ← Plausible.Arbitrary.arbitrary
                   let a✝² ← Plausible.Arbitrary.arbitrary
                   return DummyInductive.FromBitVec a✝ a✝¹ a✝²)]
           | fuel'✝ + 1 =>
             Plausible.Gen.frequency
               (do
                 let a✝ ← Plausible.Arbitrary.arbitrary
                 let a✝¹ ← Plausible.Arbitrary.arbitrary
                 let a✝² ← Plausible.Arbitrary.arbitrary
                 return DummyInductive.FromBitVec a✝ a✝¹ a✝²)
               [(1,
                   (do
                     let a✝ ← Plausible.Arbitrary.arbitrary
                     let a✝¹ ← Plausible.Arbitrary.arbitrary
                     let a✝² ← Plausible.Arbitrary.arbitrary
                     return DummyInductive.FromBitVec a✝ a✝¹ a✝²)),
                 ])
         fun fuel✝ => aux_arb fuel✝
     end,
     instance : Plausible.ArbitraryFueled✝ (@DummyInductive✝) :=
       ⟨instArbitraryDummyInductive.arbitrary⟩]
-/
#guard_msgs in
deriving instance Arbitrary for DummyInductive

-- Test that we can successfully synthesize instances of `Arbitrary` & `ArbitraryFueled`

/-- info: instArbitraryFueledDummyInductive -/
#guard_msgs in
#synth ArbitraryFueled DummyInductive

/-- info: instArbitraryOfArbitraryFueled -/
#guard_msgs in
#synth Arbitrary DummyInductive

/-- Shrinker for `DummyInductive` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BitVecStructureTest/Variantd85836d3fd9e1ee391bd21b22ea45377ad828f1f4ff1eba7e045ef438fe7cb57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BitVecStructureTest/Variantd85836d3fd9e1ee391bd21b22ea45377ad828f1f4ff1eba7e045ef438fe7cb57.lean#L12).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `010f8453e01211bf73103087aa9208ae10fd7b61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
