# mul_dvd_mul_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1a81e269-34a8-2c0d-d9ff-96c473c68020",
  "kind": "theorem",
  "lexical_name": "mul_dvd_mul_right",
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
  "slug": "mul-dvd-mul-right--b5c3fbcabe116ad1ff4d9715",
  "source": {
    "blob": "2e31fc5fe3915eb945c90386dfa00a71a8a0a7c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 206,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantec38f5006803b6768f259ab41a6df7319fa9235b3e83f1f9c028c1c464e7e63f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5c3fbcabe116ad1ff4d97152ac3ed566c782de7c814af5b4a64e24d8a2fd79b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantec38f5006803b6768f259ab41a6df7319fa9235b3e83f1f9c028c1c464e7e63f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a81e269-34a8-2c0d-d9ff-96c473c68020`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_dvd_mul_right (h : a ∣ b) (c : α) : a * c ∣ b * c :=
  mul_dvd_mul h (dvd_refl c)
#align mul_dvd_mul_right mul_dvd_mul_right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantec38f5006803b6768f259ab41a6df7319fa9235b3e83f1f9c028c1c464e7e63f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantec38f5006803b6768f259ab41a6df7319fa9235b3e83f1f9c028c1c464e7e63f.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e31fc5fe3915eb945c90386dfa00a71a8a0a7c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
