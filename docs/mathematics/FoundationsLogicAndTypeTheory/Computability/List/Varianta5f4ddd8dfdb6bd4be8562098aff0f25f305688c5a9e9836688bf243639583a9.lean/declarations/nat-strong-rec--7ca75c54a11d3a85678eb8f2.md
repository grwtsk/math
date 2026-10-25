# nat_strong_rec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6bc0e6c3-875f-8294-d4e2-bba5bb209a88",
  "kind": "theorem",
  "lexical_name": "nat_strong_rec",
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
  "slug": "nat-strong-rec--7ca75c54a11d3a85678eb8f2",
  "source": {
    "blob": "3e1e712adf5d493f6cf0196450ccb2e810d4ae65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 283,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/List/Varianta5f4ddd8dfdb6bd4be8562098aff0f25f305688c5a9e9836688bf243639583a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ca75c54a11d3a85678eb8f2786d71d0bc328164a919cda0f33e606c43ffd07c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/List/Varianta5f4ddd8dfdb6bd4be8562098aff0f25f305688c5a9e9836688bf243639583a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6bc0e6c3-875f-8294-d4e2-bba5bb209a88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nat_strong_rec (f : α → ℕ → σ) {g : α → List σ → Option σ} (hg : Primrec₂ g)
    (H : ∀ a n, g a ((List.range n).map (f a)) = some (f a n)) : Primrec₂ f :=
  suffices Primrec₂ fun a n => (List.range n).map (f a) from
    Primrec₂.option_some_iff.1 <|
      (list_getElem?.comp (this.comp fst (succ.comp snd)) snd).to₂.of_eq fun a n => by
        simp
  Primrec₂.option_some_iff.1 <|
    (nat_rec (const (some []))
          (to₂ <|
            option_bind (snd.comp snd) <|
              to₂ <|
                option_map (hg.comp (fst.comp fst) snd)
                  (to₂ <| list_concat.comp (snd.comp fst) snd))).of_eq
      fun a n => by
      induction n with
      | zero => rfl
      | succ n IH => simp [IH, H, List.range_succ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/List/Varianta5f4ddd8dfdb6bd4be8562098aff0f25f305688c5a9e9836688bf243639583a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/List/Varianta5f4ddd8dfdb6bd4be8562098aff0f25f305688c5a9e9836688bf243639583a9.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e1e712adf5d493f6cf0196450ccb2e810d4ae65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
