# IsBase.isColoop_iff_forall_notMem_fundCircuit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b9ca7b82-9733-92dd-16ed-bcaa433dc023",
  "kind": "lemma",
  "lexical_name": "IsBase.isColoop_iff_forall_notMem_fundCircuit",
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
  "slug": "isbase-iscoloop-iff-forall-notmem-fundcircuit--62efb528282f8f0fb060b25a",
  "source": {
    "blob": "31cc20cb2ac6097234a1b00137bc6cc128d9fdf0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 652,
    "line": 632,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Loop/Variant4aebb380b1715586ca913a8f182db3b6c767d48226be54b3d391439ce7aad8c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62efb528282f8f0fb060b25a5f749002e2afeb3b67546739ca2c845394596170",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Loop/Variant4aebb380b1715586ca913a8f182db3b6c767d48226be54b3d391439ce7aad8c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9ca7b82-9733-92dd-16ed-bcaa433dc023`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 632–652.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsBase.isColoop_iff_forall_notMem_fundCircuit (hB : M.IsBase B) (he : e ∈ B) :
    M.IsColoop e ↔ ∀ x ∈ M.E \ B, e ∉ M.fundCircuit x B := by
  refine ⟨fun h x hx heC ↦ (h.notMem_isCircuit <| hB.fundCircuit_isCircuit hx.1 hx.2) heC,
    fun h ↦ ?_⟩
  have h' : M.E \ {e} ⊆ M.closure (B \ {e}) := by
    rintro x ⟨hxE, hne : x ≠ e⟩
    obtain (hx | hx) := em (x ∈ B)
    · exact M.subset_closure (B \ {e}) (diff_subset.trans hB.subset_ground) ⟨hx, hne⟩
    have h_cct := (hB.fundCircuit_isCircuit hxE hx).mem_closure_diff_singleton_of_mem
      (M.mem_fundCircuit x B)
    refine (M.closure_subset_closure (subset_diff_singleton ?_ ?_)) h_cct
    · simpa using fundCircuit_subset_insert ..
    simp [hne.symm, h x ⟨hxE, hx⟩]
  rw [isColoop_iff_notMem_closure_compl (hB.subset_ground he)]
  exact notMem_subset (M.closure_subset_closure_of_subset_closure h') <|
    hB.indep.notMem_closure_diff_of_mem he

@[deprecated (since := "2025-05-23")]
alias IsBase.isColoop_iff_forall_not_mem_fundCircuit :=
  IsBase.isColoop_iff_forall_notMem_fundCircuit

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Loop/Variant4aebb380b1715586ca913a8f182db3b6c767d48226be54b3d391439ce7aad8c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Loop/Variant4aebb380b1715586ca913a8f182db3b6c767d48226be54b3d391439ce7aad8c6.lean#L632).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31cc20cb2ac6097234a1b00137bc6cc128d9fdf0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
