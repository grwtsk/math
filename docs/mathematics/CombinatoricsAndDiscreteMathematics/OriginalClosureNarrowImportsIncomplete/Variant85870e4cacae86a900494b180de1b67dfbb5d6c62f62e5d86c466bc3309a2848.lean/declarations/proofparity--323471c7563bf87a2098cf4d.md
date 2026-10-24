# ProofParity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d8bc8a741ba3a3a65aee66b05c9e74c6cead294177c781e3f984451fdf67a151",
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
  "slug": "proofparity--323471c7563bf87a2098cf4d",
  "source": {
    "blob": "5514d29223fb16c1232d1bbca664d511f492ba3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 15385,
    "line": 15366,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:323471c7563bf87a2098cf4d15814a92702b88f1d10b1e9d9686013b25b95477",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d8bc8a741ba3a3a65aee66b05c9e74c6cead294177c781e3f984451fdf67a151`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15366–15385.

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

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean#L15366).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5514d29223fb16c1232d1bbca664d511f492ba3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
