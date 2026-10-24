# bertrandProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ea5b8b1e1c764d0b7aa2aaf3ae9b476e9ecdb4f5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 43,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6dd1080adafe30aa9245c963d3ac3bf272385f1a8bb81c2a2c96cca3ca06887d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b83ca3b9-54df-abbe-fd61-9c26a1e5a87f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7e9f3ac2-662c-ad27-04f5-a01e0a78d6e1",
  "kind": "theorem",
  "lexical_name": "bertrandProof",
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
  "slug": "bertrandproof--b2045e5243f55a1bac41c8a2",
  "source": {
    "blob": "ea5b8b1e1c764d0b7aa2aaf3ae9b476e9ecdb4f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 43,
    "path": "GRWTSK/NumberTheory/Bertrand/Variant6dd1080adafe30aa9245c963d3ac3bf272385f1a8bb81c2a2c96cca3ca06887d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2045e5243f55a1bac41c8a2bdeabb920ac981a2a7c5288b9d47729662e75c02",
  "verification": {
    "reference": "docs/verification/NumberTheory/Bertrand/Variant6dd1080adafe30aa9245c963d3ac3bf272385f1a8bb81c2a2c96cca3ca06887d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e9f3ac2-662c-ad27-04f5-a01e0a78d6e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bertrandProof :
    ∀ n : Nat, 1 < n →
      ∃ q : Nat, Nat.Prime q ∧ n < q ∧ q < 2 * n := by
  intro n hn
  obtain ⟨q, hPrime, hnq, hqUpper⟩ :=
    Nat.exists_prime_lt_and_le_two_mul n (by omega)
  have hqNe : q ≠ 2 * n := by
    intro hEq
    have hComposite : ¬ Nat.Prime (2 * n) :=
      Nat.not_prime_mul (by decide) (Nat.ne_of_gt hn)
    exact hComposite (hEq ▸ hPrime)
  exact ⟨q, hPrime, hnq, lt_of_le_of_ne hqUpper hqNe⟩

/-- Convert the explicit arithmetic facts to the exact profile predicate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Bertrand/Variant6dd1080adafe30aa9245c963d3ac3bf272385f1a8bb81c2a2c96cca3ca06887d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Bertrand/Variant6dd1080adafe30aa9245c963d3ac3bf272385f1a8bb81c2a2c96cca3ca06887d.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea5b8b1e1c764d0b7aa2aaf3ae9b476e9ecdb4f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
