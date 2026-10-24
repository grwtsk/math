# mulRight₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:acc6f2b27df4a8cde7dd502f1be6be0a9fffea367f9a84653bc7ef928e1a0d35",
  "kind": "def",
  "lexical_name": "mulRight₀",
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
  "slug": "mulright--c63affbc0914b45b28e8f7e9",
  "source": {
    "blob": "980b416287f87f565270585377bcc969191f1035",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 248,
    "path": "GRWTSK/Topology/GeneralTopology/GroupWithZero/Variantdf9532b5f958d4cb3b416d0405cf58528b9c0a041b9008b91f7058e77f83cda0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c63affbc0914b45b28e8f7e971718393c92c40bf9b884c2e89fb8ddbc1ce1f5f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/GroupWithZero/Variantdf9532b5f958d4cb3b416d0405cf58528b9c0a041b9008b91f7058e77f83cda0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:acc6f2b27df4a8cde7dd502f1be6be0a9fffea367f9a84653bc7ef928e1a0d35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def mulRight₀ (c : α) (hc : c ≠ 0) : α ≃ₜ α :=
  { Equiv.mulRight₀ c hc with
    continuous_toFun := continuous_mul_right _
    continuous_invFun := continuous_mul_right _ }
#align homeomorph.mul_right₀ Homeomorph.mulRight₀

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/GroupWithZero/Variantdf9532b5f958d4cb3b416d0405cf58528b9c0a041b9008b91f7058e77f83cda0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/GroupWithZero/Variantdf9532b5f958d4cb3b416d0405cf58528b9c0a041b9008b91f7058e77f83cda0.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `980b416287f87f565270585377bcc969191f1035` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
