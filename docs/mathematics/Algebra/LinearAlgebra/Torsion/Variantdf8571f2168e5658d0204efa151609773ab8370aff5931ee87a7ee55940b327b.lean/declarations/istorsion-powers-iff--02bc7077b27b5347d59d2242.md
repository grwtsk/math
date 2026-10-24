# isTorsion'_powers_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0d526764c703457e7c7478c605a3b0fcda4099f2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 754,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/df/df8571f2168e5658d0204efa151609773ab8370aff5931ee87a7ee55940b327b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:443a3b4d-e45e-f695-4028-ffb1b4943082",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3e764053-def4-c5ba-dc2f-98a2e4b578e7",
  "kind": "theorem",
  "lexical_name": "isTorsion'_powers_iff",
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
  "slug": "istorsion-powers-iff--02bc7077b27b5347d59d2242",
  "source": {
    "blob": "0d526764c703457e7c7478c605a3b0fcda4099f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 770,
    "line": 754,
    "path": "GRWTSK/Algebra/LinearAlgebra/Torsion/Variantdf8571f2168e5658d0204efa151609773ab8370aff5931ee87a7ee55940b327b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02bc7077b27b5347d59d22420026e632f18d558f4e7fef1764491fc7b734fe68",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Torsion/Variantdf8571f2168e5658d0204efa151609773ab8370aff5931ee87a7ee55940b327b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e764053-def4-c5ba-dc2f-98a2e4b578e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 754–770.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isTorsion'_powers_iff (p : R) :
    IsTorsion' M (Submonoid.powers p) ↔ ∀ x : M, ∃ n : ℕ, p ^ n • x = 0 := by
  -- Porting note: previous term proof was having trouble elaborating
  constructor
  · intro h x
    let ⟨⟨a, ⟨n, hn⟩⟩, hx⟩ := @h x
    dsimp at hn
    use n
    rw [hn]
    apply hx
  · intro h x
    let ⟨n, hn⟩ := h x
    exact ⟨⟨_, ⟨n, rfl⟩⟩, hn⟩
#align submodule.is_torsion'_powers_iff Submodule.isTorsion'_powers_iff

/-- In a `p ^ ∞`-torsion module (that is, a module where all elements are cancelled by scalar
multiplication by some power of `p`), the smallest `n` such that `p ^ n • x = 0`.-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Torsion/Variantdf8571f2168e5658d0204efa151609773ab8370aff5931ee87a7ee55940b327b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Torsion/Variantdf8571f2168e5658d0204efa151609773ab8370aff5931ee87a7ee55940b327b.lean#L754).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d526764c703457e7c7478c605a3b0fcda4099f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
