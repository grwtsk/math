# one_div_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:99c29c93-59ae-75b7-fa98-cf51074d49b1",
  "kind": "theorem",
  "lexical_name": "one_div_mul",
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
  "slug": "one-div-mul--d2be9bc31cfa6c0f65e5417b",
  "source": {
    "blob": "4dd67a43c119efa656af8dbc0e99c575075b037e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 417,
    "line": 414,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2be9bc31cfa6c0f65e5417b19b6b5d52472a705fad77791b79b336090c31a6f",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99c29c93-59ae-75b7-fa98-cf51074d49b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 414–417.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem one_div_mul {r : R} {s t : S} : (1 /ₒ t) * (r /ₒ s) = r /ₒ (s * t) := by
  simp [oreDiv_mul_char 1 r t s 1 s (by simp)]

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean#L414).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4dd67a43c119efa656af8dbc0e99c575075b037e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
