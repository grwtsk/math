# union

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7ad9db0d086b4ad3d77b5f8b770d04c98f51a654c9a5112ff2968a54366645b5",
  "kind": "def",
  "lexical_name": "union",
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
  "slug": "union--7223d34c5bb8c92e8c3e1cb7",
  "source": {
    "blob": "3b06a0570821a48a2e65208640ff2e5af25d4cbf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 333,
    "line": 320,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MyMVA3a/Variantfc7199f0e351d125be2481ab78fe7011c1466f7f71b608246feeb2ab50165331.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7223d34c5bb8c92e8c3e1cb7ab4ce2ae98ab87b4e23cf7c7e89490bc9ba546ee",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MyMVA3a/Variantfc7199f0e351d125be2481ab78fe7011c1466f7f71b608246feeb2ab50165331.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7ad9db0d086b4ad3d77b5f8b770d04c98f51a654c9a5112ff2968a54366645b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 320–333.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def union {a b : ℝ} (P Q : IPartition a b) : IPartition a b :=
  fromPoints (P.points ∪ Q.points)
    (by
    exact Finset.mem_union_left _ ( Finset.mem_image.mpr ⟨ 0, Finset.mem_univ _, P.left ⟩ ))
    (by
    exact Finset.mem_union.mpr ( Or.inl <| Finset.mem_image.mpr ⟨ Fin.last _, Finset.mem_univ _, P.right ⟩ ))
    (by
    -- Since $P$ and $Q$ are partitions of $[a, b]$, their points are within $[a, b]$.
    have hP : ∀ y ∈ P.points, y ∈ Set.Icc a b := by
      intro y hy; obtain ⟨ i, hi, rfl ⟩ := Finset.mem_image.mp hy; exact ⟨ by linarith [ P.monotone ( show 0 ≤ i from Nat.zero_le _ ), P.left ], by linarith [ P.monotone ( show i ≤ Fin.last P.n from Fin.le_last _ ), P.right ] ⟩ ;
    have hQ : ∀ y ∈ Q.points, y ∈ Set.Icc a b := by
      rintro y hy; obtain ⟨ i, _, rfl ⟩ := Finset.mem_image.mp hy; exact ⟨ by linarith [ Q.left, Q.right, Q.monotone ( show 0 ≤ i from Nat.zero_le _ ) ], by linarith [ Q.left, Q.right, Q.monotone ( show i ≤ Fin.last Q.n from Fin.le_last _ ) ] ⟩ ;
    grind)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MyMVA3a/Variantfc7199f0e351d125be2481ab78fe7011c1466f7f71b608246feeb2ab50165331.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MyMVA3a/Variantfc7199f0e351d125be2481ab78fe7011c1466f7f71b608246feeb2ab50165331.lean#L320).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b06a0570821a48a2e65208640ff2e5af25d4cbf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
