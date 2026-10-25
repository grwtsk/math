# pumping_lemma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ed34913e94826d2991a74c19790ef5d8e2ac17e2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 166,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a6311527f4e7f7ea46da6c65fe7f1c991200fbc088b9dbf8187bb152c92d70a3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:452823b6-b5a8-a6d9-6b59-f6e65d58f852",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8472b12d-0749-c690-67c7-0a50e67a78cd",
  "kind": "theorem",
  "lexical_name": "pumping_lemma",
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
  "slug": "pumping-lemma--7ed9a3bbb7f54ff5d784dcb4",
  "source": {
    "blob": "ed34913e94826d2991a74c19790ef5d8e2ac17e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 166,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Varianta6311527f4e7f7ea46da6c65fe7f1c991200fbc088b9dbf8187bb152c92d70a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ed9a3bbb7f54ff5d784dcb4bb290738a03648f5c6e874dcc1f5bed20744046b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Varianta6311527f4e7f7ea46da6c65fe7f1c991200fbc088b9dbf8187bb152c92d70a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8472b12d-0749-c690-67c7-0a50e67a78cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pumping_lemma [Fintype σ] {x : List α} (hx : x ∈ M.accepts)
    (hlen : Fintype.card σ ≤ List.length x) :
    ∃ a b c,
      x = a ++ b ++ c ∧
        a.length + b.length ≤ Fintype.card σ ∧ b ≠ [] ∧ {a} * {b}∗ * {c} ≤ M.accepts := by
  obtain ⟨_, a, b, c, hx, hlen, hnil, rfl, hb, hc⟩ := M.evalFrom_split (s := M.start) hlen rfl
  use a, b, c, hx, hlen, hnil
  intro y hy
  rw [Language.mem_mul] at hy
  rcases hy with ⟨ab, hab, c', hc', rfl⟩
  rw [Language.mem_mul] at hab
  rcases hab with ⟨a', ha', b', hb', rfl⟩
  rw [Set.mem_singleton_iff] at ha' hc'
  substs ha' hc'
  have h := M.evalFrom_of_pow hb hb'
  rwa [mem_accepts, eval, evalFrom_of_append, evalFrom_of_append, h, hc]

section Maps

variable {α' σ' : Type*}

/--
`M.comap f` pulls back the alphabet of `M` along `f`. In other words, it applies `f` to the input
before passing it to `M`.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Varianta6311527f4e7f7ea46da6c65fe7f1c991200fbc088b9dbf8187bb152c92d70a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Varianta6311527f4e7f7ea46da6c65fe7f1c991200fbc088b9dbf8187bb152c92d70a3.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed34913e94826d2991a74c19790ef5d8e2ac17e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
