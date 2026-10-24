# dfoldrM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f3de656b2d9cbd4802d3a8d5ff1eec5c6efb198479bf388ccf0081104cb17669",
  "kind": "def",
  "lexical_name": "dfoldrM",
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
  "slug": "dfoldrm--68f9d82f4672ed8fa7022bc3",
  "source": {
    "blob": "38074c0b46b6a2b67e9066d9e1fb97c51e0eb81d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 35,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd3bbe0646e3e439c64c2ecb99d0cfd1eaaa68e444be069b2d698b1a0f9938f85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:68f9d82f4672ed8fa7022bc35eb57a391436ebc994efec80a606afc585c4ed13",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd3bbe0646e3e439c64c2ecb99d0cfd1eaaa68e444be069b2d698b1a0f9938f85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f3de656b2d9cbd4802d3a8d5ff1eec5c6efb198479bf388ccf0081104cb17669`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
@[inline] def dfoldrM [Monad m] (n : Nat) (α : Fin (n + 1) → Type _)
    (f : ∀ (i : Fin n), α i.succ → m (α i.castSucc)) (init : α (last n)) : m (α 0) :=
  loop n (Nat.lt_succ_self n) init where
  /--
  Inner loop for `Fin.dfoldrM`.
  ```
  Fin.dfoldrM.loop n f i h xᵢ = do
    let xᵢ₋₁ ← f (i-1) xᵢ
    ...
    let x₁ ← f 1 x₂
    let x₀ ← f 0 x₁
    pure x₀
  ```
  -/
  @[specialize] loop (i : Nat) (h : i < n + 1) (x : α ⟨i, h⟩) : m (α 0) :=
    match i with
    | i + 1 => (f ⟨i, Nat.lt_of_succ_lt_succ h⟩ x) >>= loop i (Nat.lt_of_succ_lt h)
    | 0 => pure x

/-- Heterogeneous fold over `Fin n` from the right: `foldr 3 f x = f 0 (f 1 (f 2 x))`, where
`f 2 : α 3 → α 2`, `f 1 : α 2 → α 1`, etc.

This is the dependent version of `Fin.foldr`. -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd3bbe0646e3e439c64c2ecb99d0cfd1eaaa68e444be069b2d698b1a0f9938f85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd3bbe0646e3e439c64c2ecb99d0cfd1eaaa68e444be069b2d698b1a0f9938f85.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38074c0b46b6a2b67e9066d9e1fb97c51e0eb81d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
