# indToCoindAux_snd_mul_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "30fe13f399ecccb49c5692dca7c420d0030b9cc3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 84,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/97/978ff7498be920fb5a46661aaab840e10047e3c01c3d292760e7e8dcf25e4f68.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:094cba20-aba5-1740-471d-4af526741826",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1f7f60b8-82a8-06be-9df1-65b994bbc5bc",
  "kind": "lemma",
  "lexical_name": "indToCoindAux_snd_mul_inv",
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
  "slug": "indtocoindaux-snd-mul-inv--fab33b7d70be1ce7d1a3b4e1",
  "source": {
    "blob": "30fe13f399ecccb49c5692dca7c420d0030b9cc3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 84,
    "path": "GRWTSK/Algebra/LinearAlgebra/FiniteIndex/Variant978ff7498be920fb5a46661aaab840e10047e3c01c3d292760e7e8dcf25e4f68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fab33b7d70be1ce7d1a3b4e1f3c3a7e54c0c86787b5c28808ccc5ba294b97341",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FiniteIndex/Variant978ff7498be920fb5a46661aaab840e10047e3c01c3d292760e7e8dcf25e4f68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f7f60b8-82a8-06be-9df1-65b994bbc5bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma indToCoindAux_snd_mul_inv (g₁ g₂ g₃ : G) (a : A) :
    indToCoindAux A g₁ a (g₂ * g₃⁻¹) = indToCoindAux A (g₁ * g₃) a g₂ := by
  rcases em ((QuotientGroup.rightRel S).r (g₂ * g₃⁻¹) g₁) with ⟨s, hs⟩ | h
  · simp [S.1.smul_def, mul_assoc, ← eq_mul_inv_iff_mul_eq.1 hs]
  · rw [indToCoindAux_of_not_rel (h := h), indToCoindAux_of_not_rel]
    exact mt (fun ⟨s, hs⟩ => ⟨s, by simpa [S.1.smul_def, eq_mul_inv_iff_mul_eq, mul_assoc]⟩) h

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FiniteIndex/Variant978ff7498be920fb5a46661aaab840e10047e3c01c3d292760e7e8dcf25e4f68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FiniteIndex/Variant978ff7498be920fb5a46661aaab840e10047e3c01c3d292760e7e8dcf25e4f68.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30fe13f399ecccb49c5692dca7c420d0030b9cc3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
