# uniqueBaseOn_indep_iff'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:95611e26-9b22-2d31-1b0e-823b953dd6cf",
  "kind": "theorem",
  "lexical_name": "uniqueBaseOn_indep_iff'",
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
  "slug": "uniquebaseon-indep-iff--72014e15958f72d3e89e26b3",
  "source": {
    "blob": "0854c6c5c2645bdb02139c34af7847dc27ba6b92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 217,
    "path": "GRWTSK/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72014e15958f72d3e89e26b3a97b7860c44b32264ef9d3f5cc7dba29f3416e16",
  "verification": {
    "reference": "docs/verification/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95611e26-9b22-2d31-1b0e-823b953dd6cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem uniqueBaseOn_indep_iff' : (uniqueBaseOn I E).Indep J ↔ J ⊆ I ∩ E := by
  rw [uniqueBaseOn, restrict_indep_iff, freeOn_indep_iff, subset_inter_iff]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0854c6c5c2645bdb02139c34af7847dc27ba6b92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
