# mem_finsetApprox

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bfa8c29f-0a2a-9826-8d0b-f5dd0ef1184f",
  "kind": "theorem",
  "lexical_name": "mem_finsetApprox",
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
  "slug": "mem-finsetapprox--d991deee99f36e7e3ba12fae",
  "source": {
    "blob": "d5170835842e16cc348096105a300009dd044fee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 176,
    "path": "GRWTSK/Algebra/Finite/Variantb79049e0f4b0491dea28936c00be8d356d06bc468cf03e88fbbca7d738e69a01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d991deee99f36e7e3ba12fae7a8dde713655ea3e567fe3a16c47a634907a95b2",
  "verification": {
    "reference": "docs/verification/Algebra/Finite/Variantb79049e0f4b0491dea28936c00be8d356d06bc468cf03e88fbbca7d738e69a01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bfa8c29f-0a2a-9826-8d0b-f5dd0ef1184f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_finsetApprox {x : R} :
    x ∈ finsetApprox bS adm ↔ ∃ i j, i ≠ j ∧ distinctElems bS adm i - distinctElems bS adm j =
    x := by
  simp only [finsetApprox, Finset.mem_erase, Finset.mem_image]
  constructor
  · rintro ⟨hx, ⟨i, j⟩, _, rfl⟩
    refine ⟨i, j, ?_, rfl⟩
    rintro rfl
    simp at hx
  · rintro ⟨i, j, hij, rfl⟩
    refine ⟨?_, ⟨i, j⟩, Finset.mem_univ _, rfl⟩
    rw [Ne, sub_eq_zero]
    exact fun h => hij ((distinctElems bS adm).injective h)

section Real

open Real

attribute [-instance] Real.decidableEq

set_option backward.isDefEq.respectTransparency.types false in
/-- We can approximate `a / b : L` with `q / r`, where `r` has finitely many options for `L`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Finite/Variantb79049e0f4b0491dea28936c00be8d356d06bc468cf03e88fbbca7d738e69a01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Finite/Variantb79049e0f4b0491dea28936c00be8d356d06bc468cf03e88fbbca7d738e69a01.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5170835842e16cc348096105a300009dd044fee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
