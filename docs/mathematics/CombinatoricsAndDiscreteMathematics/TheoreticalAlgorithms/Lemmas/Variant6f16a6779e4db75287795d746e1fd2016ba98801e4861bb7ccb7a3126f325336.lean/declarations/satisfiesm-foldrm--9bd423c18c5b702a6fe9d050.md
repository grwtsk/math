# SatisfiesM_foldrM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b25c3303-bd9a-fb1c-f8ca-e01180b5eadf",
  "kind": "theorem",
  "lexical_name": "SatisfiesM_foldrM",
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
  "slug": "satisfiesm-foldrm--9bd423c18c5b702a6fe9d050",
  "source": {
    "blob": "002547e89b294ed72a588f9b5f52af62fcef929a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 165,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant6f16a6779e4db75287795d746e1fd2016ba98801e4861bb7ccb7a3126f325336.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9bd423c18c5b702a6fe9d0504dc2fc71452427b6386488b404c25e84dc3957ae",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant6f16a6779e4db75287795d746e1fd2016ba98801e4861bb7ccb7a3126f325336.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b25c3303-bd9a-fb1c-f8ca-e01180b5eadf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem SatisfiesM_foldrM [Monad m] [LawfulMonad m]
    {as : Array α} (motive : Nat → β → Prop)
    {init : β} (h0 : motive as.size init) {f : α → β → m β}
    (hf : ∀ i : Fin as.size, ∀ b, motive (i.1 + 1) b → SatisfiesM (motive i.1) (f as[i] b)) :
    SatisfiesM (motive 0) (as.foldrM f init) := by
  let rec go {i b} (hi : i ≤ as.size) (H : motive i b) :
    SatisfiesM (motive 0) (foldrM.fold f as 0 i hi b) := by
    unfold foldrM.fold; simp; split
    · next hi => exact .pure (hi ▸ H)
    · next hi =>
      split; {simp at hi}
      · next i hi' =>
        exact (hf ⟨i, hi'⟩ b H).bind fun _ => go _
  simp [foldrM]; split; {exact go _ h0}
  · next h => exact .pure (Nat.eq_zero_of_not_pos h ▸ h0)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant6f16a6779e4db75287795d746e1fd2016ba98801e4861bb7ccb7a3126f325336.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant6f16a6779e4db75287795d746e1fd2016ba98801e4861bb7ccb7a3126f325336.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `002547e89b294ed72a588f9b5f52af62fcef929a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
