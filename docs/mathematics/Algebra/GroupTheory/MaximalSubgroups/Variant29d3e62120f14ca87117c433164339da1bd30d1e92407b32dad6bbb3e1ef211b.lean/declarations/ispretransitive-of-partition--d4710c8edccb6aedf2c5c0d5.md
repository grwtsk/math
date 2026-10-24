# IsPretransitive.of_partition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c2d8dbf7-c730-4a00-53ad-97268bba3a5d",
  "kind": "theorem",
  "lexical_name": "IsPretransitive.of_partition",
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
  "slug": "ispretransitive-of-partition--d4710c8edccb6aedf2c5c0d5",
  "source": {
    "blob": "ece8975cbd5117fa90122dcc7a3d6c9f944d4354",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 82,
    "path": "GRWTSK/Algebra/GroupTheory/MaximalSubgroups/Variant29d3e62120f14ca87117c433164339da1bd30d1e92407b32dad6bbb3e1ef211b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4710c8edccb6aedf2c5c0d5a8da7e92cf9a6f882bf148dd56a402421f9dc368",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/MaximalSubgroups/Variant29d3e62120f14ca87117c433164339da1bd30d1e92407b32dad6bbb3e1ef211b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2d8dbf7-c730-4a00-53ad-97268bba3a5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPretransitive.of_partition
    (hs : ∀ a ∈ s, ∀ b ∈ s, ∃ g : M, g • a = b)
    (hs' : ∀ a ∈ sᶜ, ∀ b ∈ sᶜ, ∃ g : M, g • a = b)
    (hM : stabilizer M s ≠ ⊤) :
    IsPretransitive M α := by
  suffices ∃ (a b : α) (g : M), a ∈ s ∧ b ∈ sᶜ ∧ g • a = b by
    obtain ⟨a, b, g, ha, hb, hgab⟩ := this
    rw [isPretransitive_iff_base a]
    intro x
    by_cases hx : x ∈ s
    · exact hs a ha x hx
    · rw [← Set.mem_compl_iff] at hx
      obtain ⟨k, hk⟩ := hs' b hb x hx
      use k * g
      rw [mul_smul, hgab, hk]
  contrapose! hM
  rw [eq_top_iff, le_stabilizer_iff_smul_le]
  rintro g _ b ⟨a, ha, hgab⟩
  by_contra hb
  exact hM a b g ha (Set.mem_compl hb) hgab

end MulAction

namespace Equiv.Perm

open MulAction

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/MaximalSubgroups/Variant29d3e62120f14ca87117c433164339da1bd30d1e92407b32dad6bbb3e1ef211b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/MaximalSubgroups/Variant29d3e62120f14ca87117c433164339da1bd30d1e92407b32dad6bbb3e1ef211b.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ece8975cbd5117fa90122dcc7a3d6c9f944d4354` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
