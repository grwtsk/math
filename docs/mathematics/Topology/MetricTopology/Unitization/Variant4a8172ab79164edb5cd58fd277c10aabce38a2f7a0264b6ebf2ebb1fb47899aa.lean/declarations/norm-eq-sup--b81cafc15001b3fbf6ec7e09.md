# norm_eq_sup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a5868972-2869-731b-0808-6cb23d7f4009",
  "kind": "theorem",
  "lexical_name": "norm_eq_sup",
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
  "slug": "norm-eq-sup--b81cafc15001b3fbf6ec7e09",
  "source": {
    "blob": "d1ef98fecb3dd05982098e92f1a3ef3af3439b0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 147,
    "path": "GRWTSK/Topology/MetricTopology/Unitization/Variant4a8172ab79164edb5cd58fd277c10aabce38a2f7a0264b6ebf2ebb1fb47899aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b81cafc15001b3fbf6ec7e09f7595c00ea2c92340c8f545bf1ad4e3500309f89",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Unitization/Variant4a8172ab79164edb5cd58fd277c10aabce38a2f7a0264b6ebf2ebb1fb47899aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5868972-2869-731b-0808-6cb23d7f4009`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_eq_sup (x : Unitization 𝕜 A) :
    ‖x‖ = ‖x.fst‖ ⊔ ‖algebraMap 𝕜 (A →L[𝕜] A) x.fst + mul 𝕜 A x.snd‖ := by
  rw [norm_def, splitMul_apply, Prod.norm_def]

/-- This is often the more useful lemma to rewrite the norm as opposed to
`Unitization.nnnorm_def`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Unitization/Variant4a8172ab79164edb5cd58fd277c10aabce38a2f7a0264b6ebf2ebb1fb47899aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Unitization/Variant4a8172ab79164edb5cd58fd277c10aabce38a2f7a0264b6ebf2ebb1fb47899aa.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1ef98fecb3dd05982098e92f1a3ef3af3439b0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
