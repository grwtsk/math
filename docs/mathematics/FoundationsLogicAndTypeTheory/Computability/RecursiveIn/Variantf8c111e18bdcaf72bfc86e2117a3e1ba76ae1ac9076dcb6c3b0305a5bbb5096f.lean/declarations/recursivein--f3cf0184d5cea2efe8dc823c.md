# RecursiveIn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2d5cde6229f63288894f2bb0dfc881ea864d65ff349b4e9e0e4a0c0f99ade8e6",
  "kind": "inductive",
  "lexical_name": "RecursiveIn",
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
  "slug": "recursivein--f3cf0184d5cea2efe8dc823c",
  "source": {
    "blob": "a04dd78eaaf519f9823ede6b5f75d444e2b03cb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 69,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/RecursiveIn/Variantf8c111e18bdcaf72bfc86e2117a3e1ba76ae1ac9076dcb6c3b0305a5bbb5096f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f3cf0184d5cea2efe8dc823c8230c8b11e6716e7e741aa49873fa2f1ac24211e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/RecursiveIn/Variantf8c111e18bdcaf72bfc86e2117a3e1ba76ae1ac9076dcb6c3b0305a5bbb5096f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2d5cde6229f63288894f2bb0dfc881ea864d65ff349b4e9e0e4a0c0f99ade8e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected inductive RecursiveIn (O : Set (ℕ →. ℕ)) : (ℕ →. ℕ) → Prop
  | zero : Nat.RecursiveIn O fun _ => 0
  | succ : Nat.RecursiveIn O Nat.succ
  | left : Nat.RecursiveIn O fun n => (Nat.unpair n).1
  | right : Nat.RecursiveIn O fun n => (Nat.unpair n).2
  | oracle : ∀ g ∈ O, Nat.RecursiveIn O g
  | pair {f h : ℕ →. ℕ} (hf : Nat.RecursiveIn O f) (hh : Nat.RecursiveIn O h) :
      Nat.RecursiveIn O fun n => (Nat.pair <$> f n <*> h n)
  | comp {f h : ℕ →. ℕ} (hf : Nat.RecursiveIn O f) (hh : Nat.RecursiveIn O h) :
      Nat.RecursiveIn O fun n => h n >>= f
  | prec {f h : ℕ →. ℕ} (hf : Nat.RecursiveIn O f) (hh : Nat.RecursiveIn O h) :
      Nat.RecursiveIn O fun p =>
        let (a, n) := Nat.unpair p
        n.rec (f a) fun y IH => do
          let i ← IH
          h (Nat.pair a (Nat.pair y i))
  | rfind {f : ℕ →. ℕ} (hf : Nat.RecursiveIn O f) :
      Nat.RecursiveIn O fun a =>
        Nat.rfind fun n => (fun m => m = 0) <$> f (Nat.pair a n)

end Nat

/-- A partial function `f : α →. σ` between `Primcodable` types is recursive in a set of oracles
`O` if its encoding as a function `ℕ →. ℕ` is `Nat.RecursiveIn O`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/RecursiveIn/Variantf8c111e18bdcaf72bfc86e2117a3e1ba76ae1ac9076dcb6c3b0305a5bbb5096f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/RecursiveIn/Variantf8c111e18bdcaf72bfc86e2117a3e1ba76ae1ac9076dcb6c3b0305a5bbb5096f.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a04dd78eaaf519f9823ede6b5f75d444e2b03cb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
