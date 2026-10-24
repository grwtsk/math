# FP_drop_subset_FP

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f22ee929-6fb8-138c-31c6-754554fc3c00",
  "kind": "theorem",
  "lexical_name": "FP_drop_subset_FP",
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
  "slug": "fp-drop-subset-fp--676666a0b2a41592c8aff0c7",
  "source": {
    "blob": "98ae06fd9e57ec6ba1a45c2da36442ec32bb7c2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 220,
    "path": "GRWTSK/Topology/GeneralTopology/Hindman/Variant9c3327b9ebedd8b4d3442caf61877b9c7c25d17b572a5268c369f96b775d0370.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:676666a0b2a41592c8aff0c727f33128581a617d3ada9d2c2afc7c1381b56c82",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Hindman/Variant9c3327b9ebedd8b4d3442caf61877b9c7c25d17b572a5268c369f96b775d0370.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f22ee929-6fb8-138c-31c6-754554fc3c00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FP_drop_subset_FP {M} [Semigroup M] (a : Stream' M) (n : ℕ) :
    ∀ ⦃m⦄, FP (a.drop n) m → FP a m := by
  induction n with
  | zero => exact fun m hm ↦ hm
  | succ n ih =>
    rw [← Stream'.drop_drop]
    exact fun m hm ↦ ih (FP.of_tail _ _ hm)

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Hindman/Variant9c3327b9ebedd8b4d3442caf61877b9c7c25d17b572a5268c369f96b775d0370.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Hindman/Variant9c3327b9ebedd8b4d3442caf61877b9c7c25d17b572a5268c369f96b775d0370.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98ae06fd9e57ec6ba1a45c2da36442ec32bb7c2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
