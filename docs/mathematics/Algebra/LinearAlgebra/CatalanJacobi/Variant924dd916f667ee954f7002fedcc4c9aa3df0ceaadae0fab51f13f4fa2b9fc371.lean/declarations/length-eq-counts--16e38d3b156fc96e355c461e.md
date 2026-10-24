# length_eq_counts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9932f6e6e407fe1e92bd16eace9ae5b6cdf5619a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 117,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/92/924dd916f667ee954f7002fedcc4c9aa3df0ceaadae0fab51f13f4fa2b9fc371.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:306f1712-7d29-fb83-a28d-18bf15351569",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:641eab49-c40c-6ff6-48be-ca8f5f46dc22",
  "kind": "lemma",
  "lexical_name": "length_eq_counts",
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
  "slug": "length-eq-counts--16e38d3b156fc96e355c461e",
  "source": {
    "blob": "9932f6e6e407fe1e92bd16eace9ae5b6cdf5619a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 117,
    "path": "GRWTSK/Algebra/LinearAlgebra/CatalanJacobi/Variant924dd916f667ee954f7002fedcc4c9aa3df0ceaadae0fab51f13f4fa2b9fc371.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16e38d3b156fc96e355c461e37f44e9ce5f7a6629a2ca17ef62d44810435f93c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CatalanJacobi/Variant924dd916f667ee954f7002fedcc4c9aa3df0ceaadae0fab51f13f4fa2b9fc371.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:641eab49-c40c-6ff6-48be-ca8f5f46dc22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma length_eq_counts (l : List DyckStep) : l.length = l.count U + l.count D := by
  induction l with
  | nil => simp
  | cons s l ih => cases s <;> simp [ih, Nat.add_assoc, Nat.add_comm, Nat.add_left_comm]

/-- Returning nearest-neighbor half-line paths of length `2n` are exactly Dyck
words of semilength `n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CatalanJacobi/Variant924dd916f667ee954f7002fedcc4c9aa3df0ceaadae0fab51f13f4fa2b9fc371.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CatalanJacobi/Variant924dd916f667ee954f7002fedcc4c9aa3df0ceaadae0fab51f13f4fa2b9fc371.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9932f6e6e407fe1e92bd16eace9ae5b6cdf5619a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
