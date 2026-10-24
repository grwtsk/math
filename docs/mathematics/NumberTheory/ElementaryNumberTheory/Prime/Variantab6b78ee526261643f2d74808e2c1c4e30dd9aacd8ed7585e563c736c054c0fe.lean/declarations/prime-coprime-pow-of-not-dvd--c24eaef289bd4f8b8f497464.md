# Prime.coprime_pow_of_not_dvd

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
      "line": 667,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ab/ab6b78ee526261643f2d74808e2c1c4e30dd9aacd8ed7585e563c736c054c0fe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7ac11d50-01e6-f8be-c098-7706a2b8ab43",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d36bb224-f1da-68a1-8e92-46c894ed74d6",
  "kind": "theorem",
  "lexical_name": "Prime.coprime_pow_of_not_dvd",
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
  "slug": "prime-coprime-pow-of-not-dvd--c24eaef289bd4f8b8f497464",
  "source": {
    "blob": "1fe1c9b9e5e0b65775bc6d1fa1f66ab0bfeea550",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 670,
    "line": 667,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Prime/Variantab6b78ee526261643f2d74808e2c1c4e30dd9aacd8ed7585e563c736c054c0fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c24eaef289bd4f8b8f497464e62279a2395ed778c1836ee6df6fe71043deffe3",
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

Occurrence: `result:d36bb224-f1da-68a1-8e92-46c894ed74d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 667–670.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Prime.coprime_pow_of_not_dvd {p m a : ℕ} (pp : Prime p) (h : ¬p ∣ a) : coprime a (p ^ m) :=
  (pp.coprime_iff_not_dvd.2 h).symm.pow_right _
#align nat.prime.coprime_pow_of_not_dvd Nat.Prime.coprime_pow_of_not_dvd

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Prime/Variantab6b78ee526261643f2d74808e2c1c4e30dd9aacd8ed7585e563c736c054c0fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Prime/Variantab6b78ee526261643f2d74808e2c1c4e30dd9aacd8ed7585e563c736c054c0fe.lean#L667).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fe1c9b9e5e0b65775bc6d1fa1f66ab0bfeea550` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
