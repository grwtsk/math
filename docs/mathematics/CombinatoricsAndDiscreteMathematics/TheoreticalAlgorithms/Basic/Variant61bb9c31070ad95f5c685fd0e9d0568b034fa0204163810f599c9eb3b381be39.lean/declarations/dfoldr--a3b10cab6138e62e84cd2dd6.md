# dfoldr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:402d98833f7fccbdb4ecef856d2a00a8b77088ce6dd867c4390f51b8e3ee3da8",
  "kind": "def",
  "lexical_name": "dfoldr",
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
  "slug": "dfoldr--a3b10cab6138e62e84cd2dd6",
  "source": {
    "blob": "6b141de87c65795fe4d60cc029bc97f1842ad24c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 50,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant61bb9c31070ad95f5c685fd0e9d0568b034fa0204163810f599c9eb3b381be39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a3b10cab6138e62e84cd2dd6ca99dd87b7ab12dd9b240e27dfa1ec0dbc39368a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant61bb9c31070ad95f5c685fd0e9d0568b034fa0204163810f599c9eb3b381be39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:402d98833f7fccbdb4ecef856d2a00a8b77088ce6dd867c4390f51b8e3ee3da8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
@[inline] def dfoldr (n : Nat) (α : Fin (n + 1) → Type _)
    (f : ∀ (i : Fin n), α i.succ → α i.castSucc) (init : α (last n)) : α 0 :=
  dfoldrM (m := Id) n α f init

/-- Heterogeneous monadic fold over `Fin n` from left to right:
```
Fin.foldlM n f x₀ = do
  let x₁ : α 1 ← f 0 x₀
  let x₂ : α 2 ← f 1 x₁
  ...
  let xₙ : α n ← f (n-1) xₙ₋₁
  pure xₙ
```
This is the dependent version of `Fin.foldlM`. -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant61bb9c31070ad95f5c685fd0e9d0568b034fa0204163810f599c9eb3b381be39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant61bb9c31070ad95f5c685fd0e9d0568b034fa0204163810f599c9eb3b381be39.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b141de87c65795fe4d60cc029bc97f1842ad24c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
