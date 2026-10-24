# restrictOrderMonoidHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:91d62c2e296b79a552381f298c65bdfc146119668e9cad1d01acf936d71497fe",
  "kind": "def",
  "lexical_name": "restrictOrderMonoidHom",
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
  "slug": "restrictordermonoidhom--ef6ef30f7af359a72e3a674d",
  "source": {
    "blob": "c5394dffe84e46308403f7c1aa4a3de9343beb42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 663,
    "line": 650,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyFinsupp/Variant102023a809373c83ca5c20e8e551d98aa7fdb24ce0fe65385d13fcce1e4394ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ef6ef30f7af359a72e3a674d4937c8ecfcf4122dae18bff940a5c6ddfdbb9535",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocallyFinsupp/Variant102023a809373c83ca5c20e8e551d98aa7fdb24ce0fe65385d13fcce1e4394ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:91d62c2e296b79a552381f298c65bdfc146119668e9cad1d01acf936d71497fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 650–663.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def restrictOrderMonoidHom [AddCommGroup Y] [LinearOrder Y] {V : Set X} (h : V ⊆ U) :
    locallyFinsuppWithin U Y →+o locallyFinsuppWithin V Y where
  toFun D := D.restrict h
  map_zero' := by
    ext x
    simp
  map_add' D₁ D₂ := by
    ext x
    by_cases hx : x ∈ V
    <;> simp [restrict_apply, hx]
  monotone' _ _ hAB z := by
    apply restrict_mono h hAB

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyFinsupp/Variant102023a809373c83ca5c20e8e551d98aa7fdb24ce0fe65385d13fcce1e4394ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyFinsupp/Variant102023a809373c83ca5c20e8e551d98aa7fdb24ce0fe65385d13fcce1e4394ca.lean#L650).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5394dffe84e46308403f7c1aa4a3de9343beb42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
