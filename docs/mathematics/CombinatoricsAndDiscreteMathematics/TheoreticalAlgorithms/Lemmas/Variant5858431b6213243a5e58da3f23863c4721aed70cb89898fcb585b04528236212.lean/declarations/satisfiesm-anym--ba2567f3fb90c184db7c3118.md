# SatisfiesM_anyM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0b54d842-2988-27d2-45bc-7edf421d4843",
  "kind": "theorem",
  "lexical_name": "SatisfiesM_anyM",
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
  "slug": "satisfiesm-anym--ba2567f3fb90c184db7c3118",
  "source": {
    "blob": "9b99eb33f850da5c87dc3bd81ab2fd37ea31df6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 253,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5858431b6213243a5e58da3f23863c4721aed70cb89898fcb585b04528236212.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba2567f3fb90c184db7c31188f26f633c539a9aa49cbf0ef073d629113a55188",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5858431b6213243a5e58da3f23863c4721aed70cb89898fcb585b04528236212.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b54d842-2988-27d2-45bc-7edf421d4843`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem SatisfiesM_anyM [Monad m] [LawfulMonad m] (p : α → m Bool) (as : Array α) (start stop)
    (hstart : start ≤ min stop as.size) (tru : Prop) (fal : Nat → Prop) (h0 : fal start)
    (hp : ∀ i : Fin as.size, i.1 < stop → fal i.1 →
      SatisfiesM (bif · then tru else fal (i + 1)) (p as[i])) :
    SatisfiesM
      (fun res => bif res then tru else fal (min stop as.size))
      (anyM p as start stop) := by
  let rec go {stop j} (hj' : j ≤ stop) (hstop : stop ≤ as.size) (h0 : fal j)
    (hp : ∀ i : Fin as.size, i.1 < stop → fal i.1 →
      SatisfiesM (bif · then tru else fal (i + 1)) (p as[i])) :
    SatisfiesM
      (fun res => bif res then tru else fal stop)
      (anyM.loop p as stop hstop j) := by
    unfold anyM.loop; split
    · next hj =>
      exact (hp ⟨j, Nat.lt_of_lt_of_le hj hstop⟩ hj h0).bind fun
        | true, h => .pure h
        | false, h => go hj hstop h hp
    · next hj => exact .pure <| Nat.le_antisymm hj' (Nat.ge_of_not_lt hj) ▸ h0
  simp only [Array.anyM_eq_anyM_loop]
  exact go hstart _ h0 fun i hi => hp i <| Nat.lt_of_lt_of_le hi <| Nat.min_le_left ..
termination_by go => stop - j

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5858431b6213243a5e58da3f23863c4721aed70cb89898fcb585b04528236212.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5858431b6213243a5e58da3f23863c4721aed70cb89898fcb585b04528236212.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b99eb33f850da5c87dc3bd81ab2fd37ea31df6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
