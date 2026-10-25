# write_eq_implies_stateEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "089d886aaf5cfe2a0cef748bc4412d947b68c885",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 259,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/69/69958d8378310db7d21a0fb4aa6fe1f6d2ab0512cfc43e8ec7777d91a73272a3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f679ff71-78d3-4095-ce51-ae6f42a75799",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:867c555a-15fa-8a64-38cd-b4f3c3c1bbd6",
  "kind": "theorem",
  "lexical_name": "write_eq_implies_stateEq",
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
  "slug": "write-eq-implies-stateeq--068805f23e4f454a1fbf1ce1",
  "source": {
    "blob": "089d886aaf5cfe2a0cef748bc4412d947b68c885",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 259,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant69958d8378310db7d21a0fb4aa6fe1f6d2ab0512cfc43e8ec7777d91a73272a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:068805f23e4f454a1fbf1ce12987f8d7073f43a0dd23cc5658aa3d8a9dac012d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant69958d8378310db7d21a0fb4aa6fe1f6d2ab0512cfc43e8ec7777d91a73272a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:867c555a-15fa-8a64-38cd-b4f3c3c1bbd6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem write_eq_implies_stateEq {t : Register} {v : Word} {ζ₁ ζ₂ : State}
    (h : ζ₁ ≃[t + 1] write t v ζ₂) : ζ₁ ≃[t] ζ₂ := by
  simp only [StateEq, write, StateEqRs] at *
  constructor; · exact h.1
  intro r hr
  obtain ⟨_, h⟩ := h
  specialize h r (lt_trans hr (Register.lt_succ_self _))
  rwa [ite_eq_right (ne_of_lt hr)] at h

/-- The main **compiler correctness theorem**.
Unlike Theorem 1 in the paper, both `map` and the assumption on `t` are explicit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant69958d8378310db7d21a0fb4aa6fe1f6d2ab0512cfc43e8ec7777d91a73272a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant69958d8378310db7d21a0fb4aa6fe1f6d2ab0512cfc43e8ec7777d91a73272a3.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `089d886aaf5cfe2a0cef748bc4412d947b68c885` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
