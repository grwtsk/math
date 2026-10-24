# ProofParity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:44ffdb788a433d7e3038a89d61a91963b2ec4447914234c9d9452cfbe9450e2c",
  "kind": "def",
  "lexical_name": "ProofParity",
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
  "slug": "proofparity--1185af8ff96703d6bd5ca7bc",
  "source": {
    "blob": "cbb50677e757e04c4b623b6cf9cbe50243cb9894",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 998,
    "line": 978,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Wrappers/Variant57b9d322dda833695bc0af7ea8f27f6d38c57f77c128ef380f4cdfd09158dd33.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1185af8ff96703d6bd5ca7bc7d22902ef26e60b94e2d6ed5f2f0a557ed4dfcd4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Wrappers/Variant57b9d322dda833695bc0af7ea8f27f6d38c57f77c128ef380f4cdfd09158dd33.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:44ffdb788a433d7e3038a89d61a91963b2ec4447914234c9d9452cfbe9450e2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 978–998.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ProofParity {Γ : List (Expr S)} {γ : Nat → Mode}
    (W : WitnessFamily P Γ γ) (C : Set (Set S)) (A B : Expr S) (b : Bool) : Prop :=
  ∀ (Δ : List (Expr S)) (δ : Nat → Mode) (e : Embedding P Γ γ Δ δ),
    match b with
    | false =>
      (Proves P Δ δ (A.rename e.names) → Proves P Δ δ (B.rename e.names)) ∧
      (∀ J, TerminalProfile P C J →
        Transfer P Δ δ (A.rename e.names) ((W.type J).rename e.names) →
        Transfer P Δ δ (B.rename e.names) ((W.type J).rename e.names))
    | true =>
      (∀ J, TerminalProfile P C J →
        Transfer P Δ δ (A.rename e.names) ((W.type J).rename e.names) →
        Proves P Δ δ (B.rename e.names)) ∧
      (∀ J, TerminalProfile P C J → Proves P Δ δ (A.rename e.names) →
        Transfer P Δ δ (B.rename e.names) ((W.type J).rename e.names))

namespace ProofParity
variable {Γ : List (Expr S)} {γ : Nat → Mode} {W : WitnessFamily P Γ γ}
    {C : Set (Set S)} {A B D : Expr S} {b : Bool} {s t r : S}

open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Wrappers/Variant57b9d322dda833695bc0af7ea8f27f6d38c57f77c128ef380f4cdfd09158dd33.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Wrappers/Variant57b9d322dda833695bc0af7ea8f27f6d38c57f77c128ef380f4cdfd09158dd33.lean#L978).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbb50677e757e04c4b623b6cf9cbe50243cb9894` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
