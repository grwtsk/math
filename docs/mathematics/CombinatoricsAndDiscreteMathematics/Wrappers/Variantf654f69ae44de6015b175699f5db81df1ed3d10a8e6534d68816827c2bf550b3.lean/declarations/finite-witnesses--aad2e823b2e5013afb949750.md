# finite_witnesses

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:af6030bb-e0e3-8396-e7e9-d4054796a560",
  "kind": "theorem",
  "lexical_name": "finite_witnesses",
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
  "slug": "finite-witnesses--aad2e823b2e5013afb949750",
  "source": {
    "blob": "c90ab9be21ba33b599b1c4ffbd3bdb50765531de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 347,
    "line": 330,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Wrappers/Variantf654f69ae44de6015b175699f5db81df1ed3d10a8e6534d68816827c2bf550b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aad2e823b2e5013afb9497504d9c5baa6dc67d7bc120a48dc793386a53d26854",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Wrappers/Variantf654f69ae44de6015b175699f5db81df1ed3d10a8e6534d68816827c2bf550b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af6030bb-e0e3-8396-e7e9-d4054796a560`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 330–347.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_witnesses (F : Finset (Set S)) (hF : ∀ I ∈ F, FeasibleProfile P I) :
    ∃ Γ, ValidContext P Γ ∧ ∀ I ∈ F, HasWitness P Γ I := by
  classical
  induction F using Finset.induction_on with
  | empty => exact ⟨[], .nil, by simp⟩
  | @insert I F hi ih =>
      obtain ⟨Γ, hv, hw⟩ := ih (fun J hJ => hF J (Finset.mem_insert_of_mem hJ))
      obtain ⟨Δ, hd, hI⟩ := (hF I (Finset.mem_insert_self _ _)).witness
      refine ⟨Δ ++ Γ, hd.append hv, ?_⟩
      intro J hJ
      rcases Finset.mem_insert.mp hJ with rfl | hJ
      · exact hI.append_right hv
      · exact (hw J hJ).append_left hd
end FeasibleProfile

namespace Labelled
/-- The data context has no proof-mode declarations. Its finite witness terms
are literal all-data embeddings and their erased types are normal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Wrappers/Variantf654f69ae44de6015b175699f5db81df1ed3d10a8e6534d68816827c2bf550b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Wrappers/Variantf654f69ae44de6015b175699f5db81df1ed3d10a8e6534d68816827c2bf550b3.lean#L330).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c90ab9be21ba33b599b1c4ffbd3bdb50765531de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
