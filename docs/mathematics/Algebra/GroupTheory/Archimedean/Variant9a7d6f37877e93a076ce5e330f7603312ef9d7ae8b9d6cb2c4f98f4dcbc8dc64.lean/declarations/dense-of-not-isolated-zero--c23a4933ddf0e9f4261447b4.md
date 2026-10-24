# dense_of_not_isolated_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32a7520b-b3f2-f6fd-4919-ab3049090e91",
  "kind": "theorem",
  "lexical_name": "dense_of_not_isolated_zero",
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
  "slug": "dense-of-not-isolated-zero--c23a4933ddf0e9f4261447b4",
  "source": {
    "blob": "ab4fca9bd8d79f5ab9c56864836f66c39389e5de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 50,
    "path": "GRWTSK/Algebra/GroupTheory/Archimedean/Variant9a7d6f37877e93a076ce5e330f7603312ef9d7ae8b9d6cb2c4f98f4dcbc8dc64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c23a4933ddf0e9f4261447b40c38c5f55ad3e0cc0d3343589077483446223c73",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Archimedean/Variant9a7d6f37877e93a076ce5e330f7603312ef9d7ae8b9d6cb2c4f98f4dcbc8dc64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32a7520b-b3f2-f6fd-4919-ab3049090e91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dense_of_not_isolated_zero (S : AddSubgroup G) (hS : ∀ ε > 0, ∃ g ∈ S, g ∈ Ioo 0 ε) :
    Dense (S : Set G) := by
  cases subsingleton_or_nontrivial G
  · refine fun x => _root_.subset_closure ?_
    rw [Subsingleton.elim x 0]
    exact zero_mem S
  refine dense_of_exists_between fun a b hlt => ?_
  rcases hS (b - a) (sub_pos.2 hlt) with ⟨g, hgS, hg0, hg⟩
  rcases (existsUnique_add_zsmul_mem_Ioc hg0 0 a).exists with ⟨m, hm⟩
  rw [zero_add] at hm
  refine ⟨m • g, zsmul_mem hgS _, hm.1, hm.2.trans_lt ?_⟩
  rwa [lt_sub_iff_add_lt'] at hg

/-- Let `S` be a nontrivial additive subgroup in an archimedean linear ordered additive commutative
group `G` with order topology. If the set of positive elements of `S` does not have a minimal
element, then `S` is dense `G`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Archimedean/Variant9a7d6f37877e93a076ce5e330f7603312ef9d7ae8b9d6cb2c4f98f4dcbc8dc64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Archimedean/Variant9a7d6f37877e93a076ce5e330f7603312ef9d7ae8b9d6cb2c4f98f4dcbc8dc64.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab4fca9bd8d79f5ab9c56864836f66c39389e5de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
