# parallelRec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:97431e034fd64b10b1dd331a6823423a141ef40adc3c808e008ab56bb79c3397",
  "kind": "def",
  "lexical_name": "parallelRec",
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
  "slug": "parallelrec--4f2fc1886cbdd074373d3ec3",
  "source": {
    "blob": "cabf25c273b382622b6d2c3454aaa51a48e12060",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 323,
    "line": 291,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variantb7951f2840fccb9d7a8b16f68b990c752b9e1e2bc6617ef44d3019bbbf2ae7d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4f2fc1886cbdd074373d3ec3b468e0cefd187d44e07a1bd97280cead111921a7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variantb7951f2840fccb9d7a8b16f68b990c752b9e1e2bc6617ef44d3019bbbf2ae7d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:97431e034fd64b10b1dd331a6823423a141ef40adc3c808e008ab56bb79c3397`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–323.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def parallelRec {S : WSeq (Computation α)} (C : α → Sort v) (H : ∀ s ∈ S, ∀ a ∈ s, C a) {a}
    (h : a ∈ parallel S) : C a := by
  let T : WSeq (Computation (α × Computation α)) := S.map fun c => c.map fun a => (a, c)
  have : S = T.map (map fun c => c.1) := by
    rw [← WSeq.map_comp]
    refine (WSeq.map_id _).symm.trans (congr_arg (fun f => WSeq.map f S) ?_)
    funext c
    dsimp [id, Function.comp_def]
    rw [← map_comp]
    exact (map_id _).symm
  have pe := congr_arg parallel this
  rw [← map_parallel] at pe
  have h' := h
  rw [pe] at h'
  haveI : Terminates (parallel T) := (terminates_map_iff _ _).1 ⟨⟨_, h'⟩⟩
  rcases e : get (parallel T) with ⟨a', c⟩
  have : a ∈ c ∧ c ∈ S := by
    rcases exists_of_mem_map h' with ⟨d, dT, cd⟩
    rw [get_eq_of_mem _ dT] at e
    cases e
    dsimp at cd
    cases cd
    rcases exists_of_mem_parallel dT with ⟨d', dT', ad'⟩
    rcases WSeq.exists_of_mem_map dT' with ⟨c', cs', e'⟩
    rw [← e'] at ad'
    rcases exists_of_mem_map ad' with ⟨a', ac', e'⟩
    injection e' with i1 i2
    constructor
    · rwa [i1, i2] at ac'
    · rwa [i2] at cs'
  obtain ⟨ac, cs⟩ := this
  apply H _ cs _ ac

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variantb7951f2840fccb9d7a8b16f68b990c752b9e1e2bc6617ef44d3019bbbf2ae7d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variantb7951f2840fccb9d7a8b16f68b990c752b9e1e2bc6617ef44d3019bbbf2ae7d9.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cabf25c273b382622b6d2c3454aaa51a48e12060` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
