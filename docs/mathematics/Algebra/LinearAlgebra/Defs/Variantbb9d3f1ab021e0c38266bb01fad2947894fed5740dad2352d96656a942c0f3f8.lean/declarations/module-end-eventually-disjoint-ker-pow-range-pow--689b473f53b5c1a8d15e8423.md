# Module.End.eventually_disjoint_ker_pow_range_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71a5b02a-aa8f-dcbd-7ff0-2f137fd0c6ad",
  "kind": "theorem",
  "lexical_name": "Module.End.eventually_disjoint_ker_pow_range_pow",
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
  "slug": "module-end-eventually-disjoint-ker-pow-range-pow--689b473f53b5c1a8d15e8423",
  "source": {
    "blob": "a6efd15a855c1e31d8e76e594b56b1066f8c9d95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 173,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variantbb9d3f1ab021e0c38266bb01fad2947894fed5740dad2352d96656a942c0f3f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:689b473f53b5c1a8d15e8423947a0e10c0bb8756c5004bcf0fab3df08095febb",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variantbb9d3f1ab021e0c38266bb01fad2947894fed5740dad2352d96656a942c0f3f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71a5b02a-aa8f-dcbd-7ff0-2f137fd0c6ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Module.End.eventually_disjoint_ker_pow_range_pow (f : End R M) :
    ∀ᶠ n in atTop, Disjoint (LinearMap.ker (f ^ n)) (LinearMap.range (f ^ n)) := by
  obtain ⟨n, hn : ∀ m, n ≤ m → LinearMap.ker (f ^ n) = LinearMap.ker (f ^ m)⟩ :=
    monotone_stabilizes_iff_noetherian.mpr inferInstance f.iterateKer
  refine eventually_atTop.mpr ⟨n, fun m hm ↦ disjoint_iff.mpr ?_⟩
  rw [← hn _ hm, Submodule.eq_bot_iff]
  rintro - ⟨hx, ⟨x, rfl⟩⟩
  apply pow_map_zero_of_le hm
  replace hx : x ∈ LinearMap.ker (f ^ (n + m)) := by
    simpa [f.pow_apply n, f.pow_apply m, ← f.pow_apply (n + m), ← iterate_add_apply] using hx
  rwa [← hn _ (n.le_add_right m)] at hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variantbb9d3f1ab021e0c38266bb01fad2947894fed5740dad2352d96656a942c0f3f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variantbb9d3f1ab021e0c38266bb01fad2947894fed5740dad2352d96656a942c0f3f8.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6efd15a855c1e31d8e76e594b56b1066f8c9d95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
