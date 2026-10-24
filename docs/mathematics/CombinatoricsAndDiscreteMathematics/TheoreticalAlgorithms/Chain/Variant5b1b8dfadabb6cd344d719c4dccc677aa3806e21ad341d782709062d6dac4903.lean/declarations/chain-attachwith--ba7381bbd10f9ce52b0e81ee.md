# chain'_attachWith

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac9577cb-e3f8-13fc-79e3-31146155688e",
  "kind": "theorem",
  "lexical_name": "chain'_attachWith",
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
  "slug": "chain-attachwith--ba7381bbd10f9ce52b0e81ee",
  "source": {
    "blob": "b7b15c7f1af3e6422e911af3ab67da830fb0ab08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 365,
    "line": 350,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chain/Variant5b1b8dfadabb6cd344d719c4dccc677aa3806e21ad341d782709062d6dac4903.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba7381bbd10f9ce52b0e81ee4b361e6fd5e49bd4a0cb2866c7f6b0c79827fb17",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chain/Variant5b1b8dfadabb6cd344d719c4dccc677aa3806e21ad341d782709062d6dac4903.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac9577cb-e3f8-13fc-79e3-31146155688e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 350–365.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem chain'_attachWith {l : List α} {p : α → Prop} (h : ∀ x ∈ l, p x)
    {r : {a // p a} → {a // p a} → Prop} :
    (l.attachWith p h).Chain' r ↔ l.Chain' fun a b ↦ ∃ ha hb, r ⟨a, ha⟩ ⟨b, hb⟩ := by
  induction l with
  | nil => rfl
  | cons a l IH =>
    rw [attachWith_cons, chain'_cons', chain'_cons', IH, and_congr_left]
    simp_rw [head?_attachWith]
    intros
    constructor <;>
    intro hc b (hb : _ = _)
    · simp_rw [hb, Option.pbind_some] at hc
      have hb' := h b (mem_cons_of_mem a (mem_of_mem_head? hb))
      exact ⟨h a mem_cons_self, hb', hc ⟨b, hb'⟩ rfl⟩
    · cases l <;> aesop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chain/Variant5b1b8dfadabb6cd344d719c4dccc677aa3806e21ad341d782709062d6dac4903.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chain/Variant5b1b8dfadabb6cd344d719c4dccc677aa3806e21ad341d782709062d6dac4903.lean#L350).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7b15c7f1af3e6422e911af3ab67da830fb0ab08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
