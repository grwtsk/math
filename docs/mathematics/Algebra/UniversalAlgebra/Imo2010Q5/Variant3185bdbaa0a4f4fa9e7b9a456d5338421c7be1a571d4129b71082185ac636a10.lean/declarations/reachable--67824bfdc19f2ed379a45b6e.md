# Reachable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:acd23dc718e3b38b9be6af291a2233a22f70bb4515b0b18c5dde0f651d04f102",
  "kind": "inductive",
  "lexical_name": "Reachable",
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
  "slug": "reachable--67824bfdc19f2ed379a45b6e",
  "source": {
    "blob": "ff9775e6ac4e40d6b9992dd9244670a3f22e5fcf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 63,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Imo2010Q5/Variant3185bdbaa0a4f4fa9e7b9a456d5338421c7be1a571d4129b71082185ac636a10.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:67824bfdc19f2ed379a45b6e56f88af6d9cca6d9128dfacb2dae6df8bbde8df7",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Imo2010Q5/Variant3185bdbaa0a4f4fa9e7b9a456d5338421c7be1a571d4129b71082185ac636a10.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:acd23dc718e3b38b9be6af291a2233a22f70bb4515b0b18c5dde0f651d04f102`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive Reachable : (Fin 6 → ℕ) → Prop
  /-- The starting position with one coin in each box -/
  | base : Reachable 1
  /-- Remove a coin from $B_j$ and add two coins to $B_{j+1}$ -/
  | move1 {B i} (rB : Reachable B) (hi : i < 5) (pB : 0 < B i) :
      Reachable (B - single i 1 + single (i + 1) 2)
  /-- Remove a coin from $B_k$ and swap $B_{k+1}$ and $B_{k+2}$ -/
  | move2 {B i} (rB : Reachable B) (hi : i < 4) (pB : 0 < B i) :
      Reachable (B ∘ swap (i + 1) (i + 2) - single i 1)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Imo2010Q5/Variant3185bdbaa0a4f4fa9e7b9a456d5338421c7be1a571d4129b71082185ac636a10.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Imo2010Q5/Variant3185bdbaa0a4f4fa9e7b9a456d5338421c7be1a571d4129b71082185ac636a10.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff9775e6ac4e40d6b9992dd9244670a3f22e5fcf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
