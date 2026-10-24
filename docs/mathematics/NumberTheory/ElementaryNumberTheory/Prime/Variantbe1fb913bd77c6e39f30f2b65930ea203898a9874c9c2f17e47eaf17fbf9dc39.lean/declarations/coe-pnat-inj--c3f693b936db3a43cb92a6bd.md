# coe_pnat_inj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ad9cc5364822d40c2c75b1c5a44992485ab146d5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 40,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/be/be1fb913bd77c6e39f30f2b65930ea203898a9874c9c2f17e47eaf17fbf9dc39.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a66de478-b36d-8ae2-9145-9f2e100fc281",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b3ecbaec-7261-81c2-8324-e7b2ea67a747",
  "kind": "theorem",
  "lexical_name": "coe_pnat_inj",
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
  "slug": "coe-pnat-inj--c3f693b936db3a43cb92a6bd",
  "source": {
    "blob": "ad9cc5364822d40c2c75b1c5a44992485ab146d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 40,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Prime/Variantbe1fb913bd77c6e39f30f2b65930ea203898a9874c9c2f17e47eaf17fbf9dc39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3f693b936db3a43cb92a6bdd18355620eab8c72fdbc74e9f6cebd580c322c4c",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Prime/Variantbe1fb913bd77c6e39f30f2b65930ea203898a9874c9c2f17e47eaf17fbf9dc39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3ecbaec-7261-81c2-8324-e7b2ea67a747`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_pnat_inj (p q : Nat.Primes) : (p : ℕ+) = (q : ℕ+) ↔ p = q :=
  coe_pnat_injective.eq_iff
#align nat.primes.coe_pnat_inj Nat.Primes.coe_pnat_inj

end Nat.Primes

namespace PNat

open Nat

/-- The greatest common divisor (gcd) of two positive natural numbers,
  viewed as positive natural number. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Prime/Variantbe1fb913bd77c6e39f30f2b65930ea203898a9874c9c2f17e47eaf17fbf9dc39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Prime/Variantbe1fb913bd77c6e39f30f2b65930ea203898a9874c9c2f17e47eaf17fbf9dc39.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad9cc5364822d40c2c75b1c5a44992485ab146d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
