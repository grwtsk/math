# eq_prime_pow_of_dvd_least_prime_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1fe1c9b9e5e0b65775bc6d1fa1f66ab0bfeea550",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 706,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ab/ab6b78ee526261643f2d74808e2c1c4e30dd9aacd8ed7585e563c736c054c0fe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3f63b8e1-3525-e860-5fe0-0b4e6abcc3f4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bf76088e-3b1a-e230-1ace-ab9e8083f347",
  "kind": "theorem",
  "lexical_name": "eq_prime_pow_of_dvd_least_prime_pow",
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
  "slug": "eq-prime-pow-of-dvd-least-prime-pow--9e4e42f4229676b111227e0e",
  "source": {
    "blob": "1fe1c9b9e5e0b65775bc6d1fa1f66ab0bfeea550",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 712,
    "line": 706,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Prime/Variantab6b78ee526261643f2d74808e2c1c4e30dd9aacd8ed7585e563c736c054c0fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e4e42f4229676b111227e0e946ee1668bc6491d712b50502d2867271a46022c",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Prime/Variantab6b78ee526261643f2d74808e2c1c4e30dd9aacd8ed7585e563c736c054c0fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf76088e-3b1a-e230-1ace-ab9e8083f347`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 706–712.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_prime_pow_of_dvd_least_prime_pow {a p k : ℕ} (pp : Prime p) (h₁ : ¬a ∣ p ^ k)
    (h₂ : a ∣ p ^ (k + 1)) : a = p ^ (k + 1) := by
  obtain ⟨l, ⟨h, rfl⟩⟩ := (dvd_prime_pow pp).1 h₂
  congr
  exact le_antisymm h (not_le.1 ((not_congr (pow_dvd_pow_iff_le_right (Prime.one_lt pp))).1 h₁))
#align nat.eq_prime_pow_of_dvd_least_prime_pow Nat.eq_prime_pow_of_dvd_least_prime_pow

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Prime/Variantab6b78ee526261643f2d74808e2c1c4e30dd9aacd8ed7585e563c736c054c0fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Prime/Variantab6b78ee526261643f2d74808e2c1c4e30dd9aacd8ed7585e563c736c054c0fe.lean#L706).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fe1c9b9e5e0b65775bc6d1fa1f66ab0bfeea550` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
