# finrank_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6e5b1573-fd17-b63b-88f7-93670d9b1a61",
  "kind": "theorem",
  "lexical_name": "finrank_le_one",
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
  "slug": "finrank-le-one--9c8d6d6c9ac49df7d9aeb9db",
  "source": {
    "blob": "82306a695547ff2b49faf4ee84b82586587629f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 567,
    "line": 547,
    "path": "GRWTSK/Algebra/LinearAlgebra/Finrank/Variant54c8644fe37f0420854cc53012f0e46d8b6cc1086ecb087e609de968a2da08d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c8d6d6c9ac49df7d9aeb9db3b79fc1207bbabb6dd70efcf38372761771b68ef",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Finrank/Variant54c8644fe37f0420854cc53012f0e46d8b6cc1086ecb087e609de968a2da08d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e5b1573-fd17-b63b-88f7-93670d9b1a61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 547–567.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finrank_le_one (v : V) (h : ∀ w : V, ∃ c : K, c • v = w) : finrank K V ≤ 1 := by
  haveI := nontrivial_of_invariantBasisNumber K
  rcases eq_or_ne v 0 with (rfl | hn)
  · haveI :=
      subsingleton_of_forall_eq (0 : V) fun w => by
        obtain ⟨c, rfl⟩ := h w
        simp
    rw [finrank_zero_of_subsingleton]
    exact zero_le_one
  · exact (finrank_eq_one v hn h).le
#align finrank_le_one finrank_le_one

end finrank_eq_one

section SubalgebraRank

open Module

variable {F E : Type*} [CommRing F] [Ring E] [Algebra F E]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Finrank/Variant54c8644fe37f0420854cc53012f0e46d8b6cc1086ecb087e609de968a2da08d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Finrank/Variant54c8644fe37f0420854cc53012f0e46d8b6cc1086ecb087e609de968a2da08d4.lean#L547).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82306a695547ff2b49faf4ee84b82586587629f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
