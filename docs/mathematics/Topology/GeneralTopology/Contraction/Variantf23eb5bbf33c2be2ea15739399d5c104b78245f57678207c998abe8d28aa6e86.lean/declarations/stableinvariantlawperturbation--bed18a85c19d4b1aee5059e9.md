# stableInvariantLawPerturbation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4fb9beb924e43ef641dcf736da38293cb3050d88",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 248,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f2/f23eb5bbf33c2be2ea15739399d5c104b78245f57678207c998abe8d28aa6e86.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d2968003-bb92-5994-a447-ee4259ec281a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:661acaeb-2172-304c-dc4a-9d13a0b33406",
  "kind": "theorem",
  "lexical_name": "stableInvariantLawPerturbation",
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
  "slug": "stableinvariantlawperturbation--bed18a85c19d4b1aee5059e9",
  "source": {
    "blob": "4fb9beb924e43ef641dcf736da38293cb3050d88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 248,
    "path": "GRWTSK/Topology/GeneralTopology/Contraction/Variantf23eb5bbf33c2be2ea15739399d5c104b78245f57678207c998abe8d28aa6e86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bed18a85c19d4b1aee5059e9a221035ef4d2c15b455fbee1ca8e1c42106e34d7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Contraction/Variantf23eb5bbf33c2be2ea15739399d5c104b78245f57678207c998abe8d28aa6e86.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:661acaeb-2172-304c-dc4a-9d13a0b33406`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stableInvariantLawPerturbation
    (distance defect factor : ℝ)
    (_distanceNonnegative : 0 ≤ distance)
    (_defectNonnegative : 0 ≤ defect)
    (_factorNonnegative : 0 ≤ factor)
    (factorStrict : factor < 1)
    (oneStep : distance ≤ factor * distance + defect) :
    distance ≤ defect / (1 - factor) := by
  have denominatorPositive : 0 < 1 - factor := sub_pos.mpr factorStrict
  apply (le_div_iff₀ denominatorPositive).2
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Contraction/Variantf23eb5bbf33c2be2ea15739399d5c104b78245f57678207c998abe8d28aa6e86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Contraction/Variantf23eb5bbf33c2be2ea15739399d5c104b78245f57678207c998abe8d28aa6e86.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fb9beb924e43ef641dcf736da38293cb3050d88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
