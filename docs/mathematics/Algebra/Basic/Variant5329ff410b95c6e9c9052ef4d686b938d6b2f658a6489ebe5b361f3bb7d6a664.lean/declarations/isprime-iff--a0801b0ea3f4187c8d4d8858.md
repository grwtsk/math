# isPrime_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bf297d72a9004ca0e6747bf24acf2c5ba88790f4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 241,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/53/5329ff410b95c6e9c9052ef4d686b938d6b2f658a6489ebe5b361f3bb7d6a664.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f323442f-7a7f-1bf1-90dd-8afea17d58e3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fcce6915-2f82-66d8-55e6-8a6554de3af2",
  "kind": "theorem",
  "lexical_name": "isPrime_iff",
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
  "slug": "isprime-iff--a0801b0ea3f4187c8d4d8858",
  "source": {
    "blob": "bf297d72a9004ca0e6747bf24acf2c5ba88790f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 241,
    "path": "GRWTSK/Algebra/Basic/Variant5329ff410b95c6e9c9052ef4d686b938d6b2f658a6489ebe5b361f3bb7d6a664.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0801b0ea3f4187c8d4d8858843d0774be444755f44ddffffc6f5549da9074f4",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant5329ff410b95c6e9c9052ef4d686b938d6b2f658a6489ebe5b361f3bb7d6a664.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fcce6915-2f82-66d8-55e6-8a6554de3af2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isPrime_iff {I : Ideal α} : IsPrime I ↔ I ≠ ⊤ ∧ ∀ {x y : α}, x * y ∈ I → x ∈ I ∨ y ∈ I :=
  ⟨fun h => ⟨h.1, h.2⟩, fun h => ⟨h.1, h.2⟩⟩
#align ideal.is_prime_iff Ideal.isPrime_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant5329ff410b95c6e9c9052ef4d686b938d6b2f658a6489ebe5b361f3bb7d6a664.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant5329ff410b95c6e9c9052ef4d686b938d6b2f658a6489ebe5b361f3bb7d6a664.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf297d72a9004ca0e6747bf24acf2c5ba88790f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
