# signAux3_mul_and_swap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a4dc3c2703d805168a0b8fb8791b69f61096c532",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 335,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/14/148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:222ce897-90fc-d328-395a-c1c5589c1d57",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:43b67c24-bf88-fa87-ec32-b45cf7ce4f03",
  "kind": "theorem",
  "lexical_name": "signAux3_mul_and_swap",
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
  "slug": "signaux3-mul-and-swap--1d6b05726043861e42d4bdcc",
  "source": {
    "blob": "a4dc3c2703d805168a0b8fb8791b69f61096c532",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 352,
    "line": 335,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d6b05726043861e42d4bdcc930b0a06e34c945b083e0fe9da36b7ff625b3874",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43b67c24-bf88-fa87-ec32-b45cf7ce4f03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 335–352.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signAux3_mul_and_swap [Finite α] (f g : Perm α) (s : Multiset α) (hs : ∀ x, x ∈ s) :
    signAux3 (f * g) hs = signAux3 f hs * signAux3 g hs ∧
      Pairwise fun x y => signAux3 (swap x y) hs = -1 := by
  obtain ⟨n, ⟨e⟩⟩ := Finite.exists_equiv_fin α
  induction s using Quotient.inductionOn with | _ l => ?_
  show
    signAux2 l (f * g) = signAux2 l f * signAux2 l g ∧
    Pairwise fun x y => signAux2 l (swap x y) = -1
  have hfg : (e.symm.trans (f * g)).trans e = (e.symm.trans f).trans e * (e.symm.trans g).trans e :=
    Equiv.ext fun h => by simp [mul_apply]
  constructor
  · rw [← signAux_eq_signAux2 _ _ e fun _ _ => hs _, ←
      signAux_eq_signAux2 _ _ e fun _ _ => hs _, ← signAux_eq_signAux2 _ _ e fun _ _ => hs _,
      hfg, signAux_mul]
  · intro x y hxy
    rw [← e.injective.ne_iff] at hxy
    rw [← signAux_eq_signAux2 _ _ e fun _ _ => hs _, symm_trans_swap_trans, signAux_swap hxy]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean#L335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4dc3c2703d805168a0b8fb8791b69f61096c532` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
