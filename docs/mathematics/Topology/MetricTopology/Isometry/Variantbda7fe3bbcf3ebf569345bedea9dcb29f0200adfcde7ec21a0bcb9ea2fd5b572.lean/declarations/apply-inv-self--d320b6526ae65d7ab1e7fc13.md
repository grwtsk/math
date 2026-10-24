# apply_inv_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bed4fe42-babd-2fdd-ed3b-9ed249646ff5",
  "kind": "theorem",
  "lexical_name": "apply_inv_self",
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
  "slug": "apply-inv-self--d320b6526ae65d7ab1e7fc13",
  "source": {
    "blob": "5a69caa001c474941ef653ccabb8cccfdecaccb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 548,
    "line": 547,
    "path": "GRWTSK/Topology/MetricTopology/Isometry/Variantbda7fe3bbcf3ebf569345bedea9dcb29f0200adfcde7ec21a0bcb9ea2fd5b572.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d320b6526ae65d7ab1e7fc1327744f1b2d91ac94e3061075df4aecbae15bebcd",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Isometry/Variantbda7fe3bbcf3ebf569345bedea9dcb29f0200adfcde7ec21a0bcb9ea2fd5b572.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bed4fe42-babd-2fdd-ed3b-9ed249646ff5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 547–548.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem apply_inv_self (e : α ≃ᵢ α) (x : α) : e (e⁻¹ x) = x := e.apply_symm_apply x

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Isometry/Variantbda7fe3bbcf3ebf569345bedea9dcb29f0200adfcde7ec21a0bcb9ea2fd5b572.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Isometry/Variantbda7fe3bbcf3ebf569345bedea9dcb29f0200adfcde7ec21a0bcb9ea2fd5b572.lean#L547).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a69caa001c474941ef653ccabb8cccfdecaccb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
