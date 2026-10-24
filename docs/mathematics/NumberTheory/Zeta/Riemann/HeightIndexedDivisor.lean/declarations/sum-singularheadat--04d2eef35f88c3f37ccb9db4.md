# sum_singularHeadAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3e69cb03-1570-39c1-87dd-b0a6b160f3c7",
  "kind": "theorem",
  "lexical_name": "sum_singularHeadAt",
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
  "slug": "sum-singularheadat--04d2eef35f88c3f37ccb9db4",
  "source": {
    "blob": "5f693410a2b2a1d52a3e86418fad252daa042487",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 99,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/HeightIndexedDivisor.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04d2eef35f88c3f37ccb9db49c16ca709a4fc5ad063c8b816a749599e15ecced",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/HeightIndexedDivisor.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e69cb03-1570-39c1-87dd-b0a6b160f3c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_singularHeadAt (N : ℕ) (T : ℝ) (f : ℂ → ℂ) :
    (∑ p ∈ singularHeadAt N T, f p) =
      f 1 + (∑ z ∈ heightHead T, f z.1) + ∑ k ∈ Finset.range N, f (trivialPoint k) := by
  classical
  let A := (heightHead T).image (fun z : ZeroPoint => z.1)
  let B := (Finset.range N).image trivialPoint
  have hone : (1 : ℂ) ∉ A ∪ B := by
    intro hm
    rcases Finset.mem_union.mp hm with hm | hm
    · obtain ⟨z, _, hz⟩ := Finset.mem_image.mp hm
      exact z.2.2.2 hz
    · obtain ⟨k, _, hk⟩ := Finset.mem_image.mp hm
      exact riemannZeta_one_ne_zero (hk ▸ zeta_trivialPoint k)
  have hd : Disjoint A B := by
    apply Finset.disjoint_left.mpr
    intro p hpA hpB
    obtain ⟨z, _, rfl⟩ := Finset.mem_image.mp hpA
    obtain ⟨k, _, hk⟩ := Finset.mem_image.mp hpB
    apply trivialPoint_not_nontrivial k
    rw [hk]
    exact z.2
  change (∑ p ∈ insert 1 (A ∪ B), f p) = _
  rw [Finset.sum_insert hone, Finset.sum_union hd]
  dsimp only [A, B]
  rw [Finset.sum_image (fun a _ b _ he => Subtype.val_injective he),
    Finset.sum_image (fun a _ b _ he => trivialPoint_injective he)]
  ring

/-- The negative-even inventory is controlled only by the left cutoff, not the height. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/HeightIndexedDivisor.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/HeightIndexedDivisor.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f693410a2b2a1d52a3e86418fad252daa042487` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
