# Filter.Tendsto.units

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f393c1207ffaf58a9902de5792857855fe6d8d429bf751ddad8bcebfd95e3408",
  "kind": "def",
  "lexical_name": "Filter.Tendsto.units",
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
  "slug": "filter-tendsto-units--e615e70ab67c8afbdc9f2c49",
  "source": {
    "blob": "6d3a2f72e89d6df1d74beea5a30ac4ed2e079201",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 162,
    "path": "GRWTSK/Topology/GeneralTopology/Monoid/Variantb44d211a64598f89b5448d8bcb1d6dd24234a52cb6bcb5143d8a7c720a4475db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e615e70ab67c8afbdc9f2c49b8e69ceeca17a90d98977158bc021d9b3e5fe6fe",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Monoid/Variantb44d211a64598f89b5448d8bcb1d6dd24234a52cb6bcb5143d8a7c720a4475db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f393c1207ffaf58a9902de5792857855fe6d8d429bf751ddad8bcebfd95e3408`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Filter.Tendsto.units [TopologicalSpace N] [Monoid N] [ContinuousMul N] [T2Space N]
    {f : ι → Nˣ} {r₁ r₂ : N} {l : Filter ι} [l.NeBot] (h₁ : Tendsto (fun x => ↑(f x)) l (𝓝 r₁))
    (h₂ : Tendsto (fun x => ↑(f x)⁻¹) l (𝓝 r₂)) : Nˣ where
  val := r₁
  inv := r₂
  val_inv := by
    symm
    simpa using h₁.mul h₂
  inv_val := by
    symm
    simpa using h₂.mul h₁

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Monoid/Variantb44d211a64598f89b5448d8bcb1d6dd24234a52cb6bcb5143d8a7c720a4475db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Monoid/Variantb44d211a64598f89b5448d8bcb1d6dd24234a52cb6bcb5143d8a7c720a4475db.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d3a2f72e89d6df1d74beea5a30ac4ed2e079201` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
