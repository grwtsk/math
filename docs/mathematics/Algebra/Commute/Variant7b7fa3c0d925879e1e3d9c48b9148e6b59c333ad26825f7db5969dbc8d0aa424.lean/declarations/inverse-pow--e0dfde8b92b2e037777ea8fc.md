# inverse_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e3f65b77-cd66-6386-3c83-491881bca8d1",
  "kind": "lemma",
  "lexical_name": "inverse_pow",
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
  "slug": "inverse-pow--e0dfde8b92b2e037777ea8fc",
  "source": {
    "blob": "286a61e7dd6645c4484bd0bc3df460929325ce92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 43,
    "path": "GRWTSK/Algebra/Commute/Variant7b7fa3c0d925879e1e3d9c48b9148e6b59c333ad26825f7db5969dbc8d0aa424.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0dfde8b92b2e037777ea8fc5a99464602747c82567ed0829f70f4e142d850da",
  "verification": {
    "reference": "docs/verification/Algebra/Commute/Variant7b7fa3c0d925879e1e3d9c48b9148e6b59c333ad26825f7db5969dbc8d0aa424.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3f65b77-cd66-6386-3c83-491881bca8d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma inverse_pow (r : M₀) : ∀ n : ℕ, Ring.inverse r ^ n = Ring.inverse (r ^ n)
  | 0 => by rw [pow_zero, pow_zero, Ring.inverse_one]
  | n + 1 => by
    rw [pow_succ', pow_succ, Ring.mul_inverse_rev' ((Commute.refl r).pow_left n),
      Ring.inverse_pow r n]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Commute/Variant7b7fa3c0d925879e1e3d9c48b9148e6b59c333ad26825f7db5969dbc8d0aa424.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Commute/Variant7b7fa3c0d925879e1e3d9c48b9148e6b59c333ad26825f7db5969dbc8d0aa424.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `286a61e7dd6645c4484bd0bc3df460929325ce92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
