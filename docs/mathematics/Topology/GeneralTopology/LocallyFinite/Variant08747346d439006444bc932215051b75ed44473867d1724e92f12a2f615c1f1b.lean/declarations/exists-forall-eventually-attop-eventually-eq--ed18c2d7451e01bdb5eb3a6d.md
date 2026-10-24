# exists_forall_eventually_atTop_eventually_eq'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:082b7fa2-61b6-137e-3e6a-6b136bb2dc53",
  "kind": "theorem",
  "lexical_name": "exists_forall_eventually_atTop_eventually_eq'",
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
  "slug": "exists-forall-eventually-attop-eventually-eq--ed18c2d7451e01bdb5eb3a6d",
  "source": {
    "blob": "4e42360a4fc044a5334a3c51083cbafd27ab75c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 164,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyFinite/Variant08747346d439006444bc932215051b75ed44473867d1724e92f12a2f615c1f1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed18c2d7451e01bdb5eb3a6dc9d32c3f2d51948b378dc11177c46511a14e89a9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocallyFinite/Variant08747346d439006444bc932215051b75ed44473867d1724e92f12a2f615c1f1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:082b7fa2-61b6-137e-3e6a-6b136bb2dc53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_forall_eventually_atTop_eventually_eq' {π : X → Sort*} {f : ℕ → ∀ x : X, π x}
    (hf : LocallyFinite fun n => { x | f (n + 1) x ≠ f n x }) :
    ∃ F : ∀ x : X, π x, ∀ x, ∀ᶠ n : ℕ in atTop, ∀ᶠ y : X in 𝓝 x, f n y = F y :=
  hf.exists_forall_eventually_eq_prod.imp fun _F hF x => (hF x).curry

/-- Let `f : ℕ → α → β` be a sequence of functions on a topological space. Suppose
that the family of sets `s n = {x | f (n + 1) x ≠ f n x}` is locally finite. Then there exists a
function `F :  α → β` such that for any `x`, for sufficiently large values of `n`, we have
`f n =ᶠ[𝓝 x] F`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyFinite/Variant08747346d439006444bc932215051b75ed44473867d1724e92f12a2f615c1f1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyFinite/Variant08747346d439006444bc932215051b75ed44473867d1724e92f12a2f615c1f1b.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e42360a4fc044a5334a3c51083cbafd27ab75c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
