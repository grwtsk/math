# dfoldlM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3827504344656ab8b4af558893c2acb225ea9b411c363ad84dbca7900b78060c",
  "kind": "def",
  "lexical_name": "dfoldlM",
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
  "slug": "dfoldlm--2a2e5d7f855ffcb1754e8007",
  "source": {
    "blob": "6b141de87c65795fe4d60cc029bc97f1842ad24c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 64,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant61bb9c31070ad95f5c685fd0e9d0568b034fa0204163810f599c9eb3b381be39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2a2e5d7f855ffcb1754e800714e078949dc9d0955430f25f39b4c121a0d9a514",
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

Occurrence: `declaration:3827504344656ab8b4af558893c2acb225ea9b411c363ad84dbca7900b78060c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
@[inline] def dfoldlM [Monad m] (n : Nat) (α : Fin (n + 1) → Type _)
    (f : ∀ (i : Fin n), α i.castSucc → m (α i.succ)) (init : α 0) : m (α (last n)) :=
  loop 0 (Nat.zero_lt_succ n) init where
  /-- Inner loop for `Fin.dfoldlM`.
    ```
  Fin.foldM.loop n α f i h xᵢ = do
    let xᵢ₊₁ : α (i+1) ← f i xᵢ
    ...
    let xₙ : α n ← f (n-1) xₙ₋₁
    pure xₙ
  ```
  -/
  @[specialize] loop (i : Nat) (h : i < n + 1) (x : α ⟨i, h⟩) : m (α (last n)) :=
    if h' : i < n then
      (f ⟨i, h'⟩ x) >>= loop (i + 1) (Nat.succ_lt_succ h')
    else
      haveI : ⟨i, h⟩ = last n := by ext; simp; omega
      _root_.cast (congrArg (fun i => m (α i)) this) (pure x)

/-- Heterogeneous fold over `Fin n` from the left: `foldl 3 f x = f 0 (f 1 (f 2 x))`, where
`f 0 : α 0 → α 1`, `f 1 : α 1 → α 2`, etc.

This is the dependent version of `Fin.foldl`. -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant61bb9c31070ad95f5c685fd0e9d0568b034fa0204163810f599c9eb3b381be39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant61bb9c31070ad95f5c685fd0e9d0568b034fa0204163810f599c9eb3b381be39.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b141de87c65795fe4d60cc029bc97f1842ad24c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
