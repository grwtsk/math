# cardinal_le_max_transcendence_basis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3f1f3fc45759efe865f01dc243fad9e954489bf4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 142,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2d/2d566296c55c6f4d3045572e727c6344648cdbed722637203b6d36e81cc855a3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:91fcb8d1-fdc7-5828-c9cc-7f2d7276b756",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f1f60168-b34f-22c6-ca9c-50bd9721d1d1",
  "kind": "theorem",
  "lexical_name": "cardinal_le_max_transcendence_basis",
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
  "slug": "cardinal-le-max-transcendence-basis--ab9dab1dc159dc4dff056fca",
  "source": {
    "blob": "3f1f3fc45759efe865f01dc243fad9e954489bf4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 142,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Classification/Variant2d566296c55c6f4d3045572e727c6344648cdbed722637203b6d36e81cc855a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab9dab1dc159dc4dff056fca5fcc1f44c6941af348cb09e11756bf441e941451",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Classification/Variant2d566296c55c6f4d3045572e727c6344648cdbed722637203b6d36e81cc855a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1f60168-b34f-22c6-ca9c-50bd9721d1d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cardinal_le_max_transcendence_basis (hv : IsTranscendenceBasis R v) :
    #K ≤ max (max #R #ι) ℵ₀ :=
  calc
    #K ≤ max #(Algebra.adjoin R (Set.range v)) ℵ₀ :=
      letI := isAlgClosure_of_transcendence_basis v hv
      Algebra.IsAlgebraic.cardinal_mk_le_max _ _ IsAlgClosure.algebraic
    _ = max #(MvPolynomial ι R) ℵ₀ := by rw [Cardinal.eq.2 ⟨hv.1.aevalEquiv.toEquiv⟩]
    _ ≤ max (max (max #R #ι) ℵ₀) ℵ₀ := (max_le_max MvPolynomial.cardinal_mk_le_max le_rfl)
    _ = _ := by simp [max_assoc]
#align is_alg_closed.cardinal_le_max_transcendence_basis IsAlgClosed.cardinal_le_max_transcendence_basis

/-- If `K` is an uncountable algebraically closed field, then its
cardinality is the same as that of a transcendence basis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Classification/Variant2d566296c55c6f4d3045572e727c6344648cdbed722637203b6d36e81cc855a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Classification/Variant2d566296c55c6f4d3045572e727c6344648cdbed722637203b6d36e81cc855a3.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f1f3fc45759efe865f01dc243fad9e954489bf4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
