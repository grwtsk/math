# pairing_long_short

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7b0e9938-e55b-d46d-aa57-9532b2d67c16",
  "kind": "lemma",
  "lexical_name": "pairing_long_short",
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
  "slug": "pairing-long-short--bdff1cf2ed918d0ed5444dd2",
  "source": {
    "blob": "d0b7a9360dd5128ec31d17bd3338c2709d10070c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 142,
    "path": "GRWTSK/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bdff1cf2ed918d0ed5444dd25009576837a489ae5c65e0431a40b148729a6c68",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b0e9938-e55b-d46d-aa57-9532b2d67c16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pairing_long_short : P.pairing (long P) (short P) = - 3 := by
  rw [← P.algebraMap_pairingIn ℤ, pairingIn_long_short]
  simp

/-- The index of the root `α + β` where `α` is the short root and `β` is the long root. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0b7a9360dd5128ec31d17bd3338c2709d10070c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
