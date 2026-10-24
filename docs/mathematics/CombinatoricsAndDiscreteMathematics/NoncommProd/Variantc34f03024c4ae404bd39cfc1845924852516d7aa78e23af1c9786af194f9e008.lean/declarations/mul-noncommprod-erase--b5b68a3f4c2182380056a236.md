# mul_noncommProd_erase

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:83a8b030-521c-0a50-d638-4b9223d4d369",
  "kind": "theorem",
  "lexical_name": "mul_noncommProd_erase",
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
  "slug": "mul-noncommprod-erase--b5b68a3f4c2182380056a236",
  "source": {
    "blob": "0f5dc8fa98550936a8a018129ffcb0ddfc50071d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 215,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NoncommProd/Variantc34f03024c4ae404bd39cfc1845924852516d7aa78e23af1c9786af194f9e008.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5b68a3f4c2182380056a236461052e885139c1f7fcf61643df855c1e440e4e6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/NoncommProd/Variantc34f03024c4ae404bd39cfc1845924852516d7aa78e23af1c9786af194f9e008.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:83a8b030-521c-0a50-d638-4b9223d4d369`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_noncommProd_erase [DecidableEq α] (s : Multiset α) {a : α} (h : a ∈ s) (comm)
    (comm' := fun _ hx _ hy hxy ↦ comm (s.mem_of_mem_erase hx) (s.mem_of_mem_erase hy) hxy) :
    a * (s.erase a).noncommProd comm' = s.noncommProd comm := by
  induction s using Quotient.inductionOn with | _ l
  simp only [quot_mk_to_coe, mem_coe, coe_erase, noncommProd_coe] at comm h ⊢
  suffices ∀ x ∈ l, ∀ y ∈ l, x * y = y * x by rw [List.prod_erase_of_comm h this]
  intro x hx y hy
  rcases eq_or_ne x y with rfl | hxy
  · rfl
  exact comm hx hy hxy

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/NoncommProd/Variantc34f03024c4ae404bd39cfc1845924852516d7aa78e23af1c9786af194f9e008.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/NoncommProd/Variantc34f03024c4ae404bd39cfc1845924852516d7aa78e23af1c9786af194f9e008.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f5dc8fa98550936a8a018129ffcb0ddfc50071d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
