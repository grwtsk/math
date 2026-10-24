# subseq_forall_of_frequently

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:900d5e09-9275-5edf-78e2-b82c77bcbd1e",
  "kind": "theorem",
  "lexical_name": "subseq_forall_of_frequently",
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
  "slug": "subseq-forall-of-frequently--5e93a6d1b7641c4eb35b849b",
  "source": {
    "blob": "f4ba3e6367fd535ee05264ef0644f9efff10ea22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 409,
    "line": 403,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantca4082c4a52409636b614debdeb995ffbb4b668222110c9c56f9aebca61c9aae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e93a6d1b7641c4eb35b849b1e7059c9d1ec5d5a496c643f4f533a3a23d71dcd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantca4082c4a52409636b614debdeb995ffbb4b668222110c9c56f9aebca61c9aae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:900d5e09-9275-5edf-78e2-b82c77bcbd1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 403–409.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subseq_forall_of_frequently {ι : Type*} {x : ℕ → ι} {p : ι → Prop} {l : Filter ι}
    (h_tendsto : Tendsto x atTop l) (h : ∃ᶠ n in atTop, p (x n)) :
    ∃ ns : ℕ → ℕ, Tendsto (fun n => x (ns n)) atTop l ∧ ∀ n, p (x (ns n)) := by
  choose ns hge hns using frequently_atTop.1 h
  exact ⟨ns, h_tendsto.comp (tendsto_atTop_mono hge tendsto_id), hns⟩

end Filter
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantca4082c4a52409636b614debdeb995ffbb4b668222110c9c56f9aebca61c9aae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantca4082c4a52409636b614debdeb995ffbb4b668222110c9c56f9aebca61c9aae.lean#L403).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4ba3e6367fd535ee05264ef0644f9efff10ea22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
