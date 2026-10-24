# mul_self_eq_one_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "224e44b15b3d7d245a3421777aefc5cad96ac933",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 193,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f0/f014978acc8de1fbb2792c5d3fb0ef801ff7fc5983ff4498e574a02a4d02b76b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e1fa5ca1-ae9c-3a86-651c-a19dad9fe8aa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:140fe636-ee06-a1da-9958-df1df3d95423",
  "kind": "theorem",
  "lexical_name": "mul_self_eq_one_iff",
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
  "slug": "mul-self-eq-one-iff--d999e92e036d2f4efba9a084",
  "source": {
    "blob": "224e44b15b3d7d245a3421777aefc5cad96ac933",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 193,
    "path": "GRWTSK/Algebra/Commute/Variantf014978acc8de1fbb2792c5d3fb0ef801ff7fc5983ff4498e574a02a4d02b76b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d999e92e036d2f4efba9a084dbb4a5b905a4476af40e4d6f0803e7487647b71f",
  "verification": {
    "reference": "docs/verification/Algebra/Commute/Variantf014978acc8de1fbb2792c5d3fb0ef801ff7fc5983ff4498e574a02a4d02b76b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:140fe636-ee06-a1da-9958-df1df3d95423`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_self_eq_one_iff [NonAssocRing R] [NoZeroDivisors R] {a : R} :
    a * a = 1 ↔ a = 1 ∨ a = -1 := by
  rw [← (Commute.one_right a).mul_self_eq_mul_self_iff, mul_one]

section CommRing
variable [CommRing R]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Commute/Variantf014978acc8de1fbb2792c5d3fb0ef801ff7fc5983ff4498e574a02a4d02b76b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Commute/Variantf014978acc8de1fbb2792c5d3fb0ef801ff7fc5983ff4498e574a02a4d02b76b.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `224e44b15b3d7d245a3421777aefc5cad96ac933` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
