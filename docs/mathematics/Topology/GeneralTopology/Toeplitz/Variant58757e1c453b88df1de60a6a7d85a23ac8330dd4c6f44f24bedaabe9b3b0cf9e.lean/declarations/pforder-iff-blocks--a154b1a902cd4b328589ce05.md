# pfOrder_iff_blocks

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:81b5fba9-532e-e2af-8cec-3cbd5e8429a8",
  "kind": "theorem",
  "lexical_name": "pfOrder_iff_blocks",
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
  "slug": "pforder-iff-blocks--a154b1a902cd4b328589ce05",
  "source": {
    "blob": "0de3b8eb83e5a6b6d7be3206e7abc96de43768ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 59,
    "path": "GRWTSK/Topology/GeneralTopology/Toeplitz/Variant58757e1c453b88df1de60a6a7d85a23ac8330dd4c6f44f24bedaabe9b3b0cf9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a154b1a902cd4b328589ce05518fc5dc35ed68ff48c005bf2ce43b9fa8294965",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Toeplitz/Variant58757e1c453b88df1de60a6a7d85a23ac8330dd4c6f44f24bedaabe9b3b0cf9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81b5fba9-532e-e2af-8cec-3cbd5e8429a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pfOrder_iff_blocks (R : ℕ) (a : ℕ → ℝ) :
    PFOrder R a ↔ ∀ N, NonnegativeThrough R (block a N) := by
  constructor
  · intro h N k hk r c
    let rn : Fin k ↪o ℕ := OrderEmbedding.ofStrictMono
      (fun i => (r i).val) (fun _ _ hij => r.strictMono hij)
    let cn : Fin k ↪o ℕ := OrderEmbedding.ofStrictMono
      (fun i => (c i).val) (fun _ _ hij => c.strictMono hij)
    exact h k hk rn cn
  · intro h k hk r c
    let N := (∑ i, r i) + (∑ i, c i) + 1
    have hr : ∀ i, r i < N := by
      intro i
      have hi : r i ≤ ∑ j, r j :=
        Finset.single_le_sum (fun j _ => Nat.zero_le (r j)) (Finset.mem_univ i)
      dsimp [N]
      omega
    have hc : ∀ i, c i < N := by
      intro i
      have hi : c i ≤ ∑ j, c j :=
        Finset.single_le_sum (fun j _ => Nat.zero_le (c j)) (Finset.mem_univ i)
      dsimp [N]
      omega
    let rf : Fin k ↪o Fin N := OrderEmbedding.ofStrictMono
      (fun i => ⟨r i, hr i⟩) (fun _ _ hij => r.strictMono hij)
    let cf : Fin k ↪o Fin N := OrderEmbedding.ofStrictMono
      (fun i => ⟨c i, hc i⟩) (fun _ _ hij => c.strictMono hij)
    exact h N k hk rf cf

/-- A block no larger than the proved order bound is totally nonnegative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Toeplitz/Variant58757e1c453b88df1de60a6a7d85a23ac8330dd4c6f44f24bedaabe9b3b0cf9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Toeplitz/Variant58757e1c453b88df1de60a6a7d85a23ac8330dd4c6f44f24bedaabe9b3b0cf9e.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0de3b8eb83e5a6b6d7be3206e7abc96de43768ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
