# ofNat_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:10ecb7ca-ba57-3b4b-89f9-c4749fc1b801",
  "kind": "theorem",
  "lexical_name": "ofNat_apply",
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
  "slug": "ofnat-apply--bee5fffc4c885ca32eddab03",
  "source": {
    "blob": "a64586d26f393ee65cf18c45564243fc6d91e454",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 569,
    "line": 559,
    "path": "GRWTSK/Topology/GeneralTopology/LinearMap/Variantc168d635c296d1f44259f95f6d40f148d0f0fa7095ee6a3e776314c89c196add.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bee5fffc4c885ca32eddab034a9faad7ba7aa76884ef66513d7c2f9cee87590a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LinearMap/Variantc168d635c296d1f44259f95f6d40f148d0f0fa7095ee6a3e776314c89c196add.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10ecb7ca-ba57-3b4b-89f9-c4749fc1b801`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 559–569.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofNat_apply [ContinuousAdd M₁] (n : ℕ) [n.AtLeastTwo] (m : M₁) :
    (ofNat(n) : M₁ →L[R₁] M₁) m = OfNat.ofNat n • m :=
  rfl

section ApplyAction

variable [ContinuousAdd M₁]

/-- The tautological action by `M₁ →L[R₁] M₁` on `M`.

This generalizes `Function.End.applyMulAction`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LinearMap/Variantc168d635c296d1f44259f95f6d40f148d0f0fa7095ee6a3e776314c89c196add.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LinearMap/Variantc168d635c296d1f44259f95f6d40f148d0f0fa7095ee6a3e776314c89c196add.lean#L559).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a64586d26f393ee65cf18c45564243fc6d91e454` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
