# psp_from_prime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:61f40e225d1cab6a02b7eec7e162cd4fafaa70d35522ffa7b306331a507e2c77",
  "kind": "def",
  "lexical_name": "psp_from_prime",
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
  "slug": "psp-from-prime--e348745ca42151dbc737a562",
  "source": {
    "blob": "d7ab78ff65ee83ba68b27eec272f829a971f7316",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 190,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/FermatPsp/Varianta1714b3217c0434032198bc4b41c26c1180c0c2b414ed4644ac04e1c99c08c6a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e348745ca42151dbc737a5623ce6f7338880e9bdcb8802c202767ebff3a07134",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/FermatPsp/Varianta1714b3217c0434032198bc4b41c26c1180c0c2b414ed4644ac04e1c99c08c6a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:61f40e225d1cab6a02b7eec7e162cd4fafaa70d35522ffa7b306331a507e2c77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def psp_from_prime (b : ℕ) (p : ℕ) : ℕ :=
  (b ^ p - 1) / (b - 1) * ((b ^ p + 1) / (b + 1))

/--
This is a proof that the number produced using `psp_from_prime` is actually pseudoprime to base `b`.
The primary purpose of this lemma is to help prove `exists_infinite_pseudoprimes`.

We use <https://primes.utm.edu/notes/proofs/a_pseudoprimes.html> as a rough outline of the proof.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/FermatPsp/Varianta1714b3217c0434032198bc4b41c26c1180c0c2b414ed4644ac04e1c99c08c6a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/FermatPsp/Varianta1714b3217c0434032198bc4b41c26c1180c0c2b414ed4644ac04e1c99c08c6a.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7ab78ff65ee83ba68b27eec272f829a971f7316` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
