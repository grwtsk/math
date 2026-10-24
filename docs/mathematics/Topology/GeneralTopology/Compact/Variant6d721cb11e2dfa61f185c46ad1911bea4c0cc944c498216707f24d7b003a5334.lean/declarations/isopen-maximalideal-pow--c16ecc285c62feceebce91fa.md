# isOpen_maximalIdeal_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:732ddf64-d5d8-aecd-c0b9-06cf006c74c1",
  "kind": "lemma",
  "lexical_name": "isOpen_maximalIdeal_pow",
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
  "slug": "isopen-maximalideal-pow--c16ecc285c62feceebce91fa",
  "source": {
    "blob": "7123b75a3a79c640d4719460355b3bdad15c3345",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 99,
    "path": "GRWTSK/Topology/GeneralTopology/Compact/Variant6d721cb11e2dfa61f185c46ad1911bea4c0cc944c498216707f24d7b003a5334.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c16ecc285c62feceebce91fafb9c70e9b2d6b4d4b3b44fd4eaaa144bedbbc9ed",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Compact/Variant6d721cb11e2dfa61f185c46ad1911bea4c0cc944c498216707f24d7b003a5334.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:732ddf64-d5d8-aecd-c0b9-06cf006c74c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isOpen_maximalIdeal_pow (n : ℕ) :
    IsOpen (X := R) ↑(maximalIdeal R ^ n) :=
  Ideal.isOpen_pow_of_isMaximal _ _

variable (R) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Compact/Variant6d721cb11e2dfa61f185c46ad1911bea4c0cc944c498216707f24d7b003a5334.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Compact/Variant6d721cb11e2dfa61f185c46ad1911bea4c0cc944c498216707f24d7b003a5334.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7123b75a3a79c640d4719460355b3bdad15c3345` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
