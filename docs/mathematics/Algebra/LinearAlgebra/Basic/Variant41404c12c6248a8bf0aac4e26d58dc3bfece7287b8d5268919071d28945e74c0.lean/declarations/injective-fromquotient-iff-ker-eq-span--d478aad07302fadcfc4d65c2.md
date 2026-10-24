# injective_fromQuotient_iff_ker_π_eq_span

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:14771b3d-f637-f1ce-4c8f-a32956235217",
  "kind": "lemma",
  "lexical_name": "injective_fromQuotient_iff_ker_π_eq_span",
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
  "slug": "injective-fromquotient-iff-ker-eq-span--d478aad07302fadcfc4d65c2",
  "source": {
    "blob": "11a177692bdb3b3f9b1d21ddf8bbe8273772b402",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 259,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d478aad07302fadcfc4d65c2fbaed135a3f1cf7bc6b56c9c3972c6e69fb1c696",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14771b3d-f637-f1ce-4c8f-a32956235217`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma injective_fromQuotient_iff_ker_π_eq_span :
    Function.Injective solution.fromQuotient ↔
      LinearMap.ker solution.π = Submodule.span A (Set.range relations.relation) := by
  constructor
  · intro h
    rw [← ker_toQuotient, ← fromQuotient_comp_toQuotient, LinearMap.ker_comp,
      LinearMap.ker_eq_bot.2 h, Submodule.comap_bot]
  · intro h
    rw [← LinearMap.ker_eq_bot, eq_bot_iff]
    intro x hx
    obtain ⟨x, rfl⟩ := relations.surjective_toQuotient x
    replace hx : x ∈ LinearMap.ker solution.π := by
      simpa only [LinearMap.mem_ker, fromQuotient_toQuotient] using hx
    rw [h, ← range_map] at hx
    obtain ⟨x, rfl⟩ := hx
    simp only [toQuotient_map_apply, Submodule.zero_mem]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11a177692bdb3b3f9b1d21ddf8bbe8273772b402` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
