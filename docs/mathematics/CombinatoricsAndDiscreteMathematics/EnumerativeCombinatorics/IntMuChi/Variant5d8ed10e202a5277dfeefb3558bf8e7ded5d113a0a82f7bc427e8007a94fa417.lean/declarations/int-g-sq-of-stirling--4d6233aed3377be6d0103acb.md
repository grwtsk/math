# int_g_sq_of_stirling

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9542ecd6-7193-1946-0e14-9942ff5485bc",
  "kind": "theorem",
  "lexical_name": "int_g_sq_of_stirling",
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
  "slug": "int-g-sq-of-stirling--4d6233aed3377be6d0103acb",
  "source": {
    "blob": "a2e771f291b4636d8b3d168c4d9f84ef1d5c8db5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 448,
    "line": 434,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/IntMuChi/Variant5d8ed10e202a5277dfeefb3558bf8e7ded5d113a0a82f7bc427e8007a94fa417.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d6233aed3377be6d0103acb6e84d80375a9739409c053929ddd2319bb7275a8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/IntMuChi/Variant5d8ed10e202a5277dfeefb3558bf8e7ded5d113a0a82f7bc427e8007a94fa417.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9542ecd6-7193-1946-0e14-9942ff5485bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 434–448.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem int_g_sq_of_stirling (hcont : Continuous g)
    (hst : ∃ C : ℝ, ∀ τ : ℝ, 1 ≤ |τ| →
      |g τ - (1 / (2 * Real.pi)) * Real.log (|τ| / (2 * Real.pi))| ≤ C / τ ^ 2) :
    ∃ C T₀ : ℝ, ∀ T : ℝ, T₀ ≤ T →
      |(∫ τ in T..(2 * T), g τ ^ 2) - T * ell1 T ^ 2 / (4 * Real.pi ^ 2)|
        ≤ C * (T * ell1 T ^ 2 / (4 * Real.pi ^ 2)) / l T ^ 2 := by
  obtain ⟨C, hC⟩ := hst
  exact ⟨_, _, fun T hT => int_g_sq_explicit hcont hC hT⟩

end Generic

/-! ## μ_χ -/

variable {κ q : ℕ}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/IntMuChi/Variant5d8ed10e202a5277dfeefb3558bf8e7ded5d113a0a82f7bc427e8007a94fa417.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/IntMuChi/Variant5d8ed10e202a5277dfeefb3558bf8e7ded5d113a0a82f7bc427e8007a94fa417.lean#L434).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2e771f291b4636d8b3d168c4d9f84ef1d5c8db5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
