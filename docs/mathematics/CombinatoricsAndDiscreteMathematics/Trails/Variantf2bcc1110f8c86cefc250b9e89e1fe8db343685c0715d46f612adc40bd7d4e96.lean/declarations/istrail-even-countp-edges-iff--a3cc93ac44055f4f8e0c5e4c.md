# IsTrail.even_countP_edges_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0677989c1f1f91a9b5029b594c2353c6daa674fe",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 50,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f2/f2bcc1110f8c86cefc250b9e89e1fe8db343685c0715d46f612adc40bd7d4e96.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:068f93c3-ef63-8754-ba6e-1567a49f80cc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3c154f1b-dfe3-42ad-ba4c-31de826b3e44",
  "kind": "theorem",
  "lexical_name": "IsTrail.even_countP_edges_iff",
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
  "slug": "istrail-even-countp-edges-iff--a3cc93ac44055f4f8e0c5e4c",
  "source": {
    "blob": "0677989c1f1f91a9b5029b594c2353c6daa674fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 50,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Trails/Variantf2bcc1110f8c86cefc250b9e89e1fe8db343685c0715d46f612adc40bd7d4e96.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3cc93ac44055f4f8e0c5e4c630ed16088920dc8b10ec7d6d9c95d1505285946",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Trails/Variantf2bcc1110f8c86cefc250b9e89e1fe8db343685c0715d46f612adc40bd7d4e96.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c154f1b-dfe3-42ad-ba4c-31de826b3e44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsTrail.even_countP_edges_iff {u v : V} {p : G.Walk u v} (ht : p.IsTrail) (x : V) :
    Even (p.edges.countP fun e => x ∈ e) ↔ u ≠ v → x ≠ u ∧ x ≠ v := by
  induction p with
  | nil => simp
  | cons huv p ih =>
    rw [cons_isTrail_iff] at ht
    specialize ih ht.1
    simp only [List.countP_cons, Ne, edges_cons, Sym2.mem_iff]
    split_ifs with h
    · rw [decide_eq_true_eq] at h
      obtain (rfl | rfl) := h
      · rw [Nat.even_add_one, ih]
        simp only [huv.ne, imp_false, Ne, not_false_iff, true_and, not_forall,
          Classical.not_not, exists_prop, eq_self_iff_true, not_true, false_and,
          and_iff_right_iff_imp]
        rintro rfl rfl
        exact G.loopless _ huv
      · rw [Nat.even_add_one, ih, ← not_iff_not]
        simp only [huv.ne.symm, Ne, eq_self_iff_true, not_true, false_and, not_forall,
          not_false_iff, exists_prop, and_true, Classical.not_not, true_and, iff_and_self]
        rintro rfl
        exact huv.ne
    · rw [decide_eq_true_eq, not_or] at h
      simp only [h.1, h.2, not_false_iff, true_and, add_zero, Ne] at ih ⊢
      rw [ih]
      constructor <;>
        · rintro h' h'' rfl
          simp only [imp_false, eq_self_iff_true, not_true, Classical.not_not] at h'
          cases h'
          simp only [not_true, and_false, false_and] at h

/-- An *Eulerian trail* (also known as an "Eulerian path") is a walk
`p` that visits every edge exactly once.  The lemma `SimpleGraph.Walk.IsEulerian.IsTrail` shows
that these are trails.

Combine with `p.IsCircuit` to get an Eulerian circuit (also known as an "Eulerian cycle"). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Trails/Variantf2bcc1110f8c86cefc250b9e89e1fe8db343685c0715d46f612adc40bd7d4e96.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Trails/Variantf2bcc1110f8c86cefc250b9e89e1fe8db343685c0715d46f612adc40bd7d4e96.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0677989c1f1f91a9b5029b594c2353c6daa674fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
