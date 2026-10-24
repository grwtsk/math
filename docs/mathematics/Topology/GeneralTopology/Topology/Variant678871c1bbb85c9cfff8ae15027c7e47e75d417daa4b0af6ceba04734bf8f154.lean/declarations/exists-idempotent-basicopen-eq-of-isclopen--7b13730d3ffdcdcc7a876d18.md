# exists_idempotent_basicOpen_eq_of_isClopen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b8713af-a956-6896-1ac9-146557a2584d",
  "kind": "lemma",
  "lexical_name": "exists_idempotent_basicOpen_eq_of_isClopen",
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
  "slug": "exists-idempotent-basicopen-eq-of-isclopen--7b13730d3ffdcdcc7a876d18",
  "source": {
    "blob": "3a11176296f7ba9ca555235e23b54d42f95b5146",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1049,
    "line": 1044,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variant678871c1bbb85c9cfff8ae15027c7e47e75d417daa4b0af6ceba04734bf8f154.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b13730d3ffdcdcc7a876d18a8a3b38c17be68f756f85b85e61edd7d64206f56",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variant678871c1bbb85c9cfff8ae15027c7e47e75d417daa4b0af6ceba04734bf8f154.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b8713af-a956-6896-1ac9-146557a2584d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1044–1049.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_idempotent_basicOpen_eq_of_isClopen {s : Set (PrimeSpectrum R)}
    (hs : IsClopen s) : ∃ e : R, IsIdempotentElem e ∧ s = basicOpen e :=
  have ⟨e, _, mul, add, eq, _⟩ := exists_mul_eq_zero_add_eq_one_basicOpen_eq_of_isClopen hs
  ⟨e, (IsIdempotentElem.of_mul_add mul add).1, eq⟩

@[stacks 00EE]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variant678871c1bbb85c9cfff8ae15027c7e47e75d417daa4b0af6ceba04734bf8f154.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variant678871c1bbb85c9cfff8ae15027c7e47e75d417daa4b0af6ceba04734bf8f154.lean#L1044).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a11176296f7ba9ca555235e23b54d42f95b5146` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
