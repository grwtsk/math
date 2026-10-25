# nat_strong_rec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:90910d44-7fab-8bc5-cdbe-e0f114cabda6",
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
  "slug": "nat-strong-rec--ebc1b903cf9725187cb379fd",
  "source": {
    "blob": "68dd6b3a579250074f3126bf297862a324e8950b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 666,
    "line": 649,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/Partrec/Variant758d5e55af84b66aebafad3db801f3d7205fbfc68f2991f6e6fe457decf58cce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ebc1b903cf9725187cb379fd2f2aa66b189cab20727094055791b2a235552aa7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/Partrec/Variant758d5e55af84b66aebafad3db801f3d7205fbfc68f2991f6e6fe457decf58cce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90910d44-7fab-8bc5-cdbe-e0f114cabda6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 649–666.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nat_strong_rec (f : α → ℕ → σ) {g : α → List σ → Option σ} (hg : Computable₂ g)
    (H : ∀ a n, g a ((List.range n).map (f a)) = Option.some (f a n)) : Computable₂ f :=
  suffices Computable₂ fun a n => (List.range n).map (f a) from
    option_some_iff.1 <|
      (list_getElem?.comp (this.comp fst (succ.comp snd)) snd).to₂.of_eq fun a => by
        simp
  option_some_iff.1 <|
    (nat_rec snd (const (Option.some []))
          (to₂ <|
            option_bind (snd.comp snd) <|
              to₂ <|
                option_map (hg.comp (fst.comp <| fst.comp fst) snd)
                  (to₂ <| list_concat.comp (snd.comp fst) snd))).of_eq
      fun a => by
      induction a.2 with
      | zero => rfl
      | succ n IH => simp [IH, H, List.range_succ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/Partrec/Variant758d5e55af84b66aebafad3db801f3d7205fbfc68f2991f6e6fe457decf58cce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/Partrec/Variant758d5e55af84b66aebafad3db801f3d7205fbfc68f2991f6e6fe457decf58cce.lean#L649).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68dd6b3a579250074f3126bf297862a324e8950b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
