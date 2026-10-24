# filter_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:af4b7b89-b4a2-2bf0-01cf-1ce9388e0d46",
  "kind": "theorem",
  "lexical_name": "filter_smul",
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
  "slug": "filter-smul--e03e99eb6f2dd20b0ad1fdbb",
  "source": {
    "blob": "9a9be9787b94e99ef09097d789b372dd638cb380",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 101,
    "path": "GRWTSK/Topology/GeneralTopology/Module/Variantfa2aae7bbb4c875d7ebee212e6d34155a694a5d93594a4e1d3aee3cb2a93c20a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e03e99eb6f2dd20b0ad1fdbbb2856cf044e53b4b1ca17a9daf8ce3fd3dbf75e4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Module/Variantfa2aae7bbb4c875d7ebee212e6d34155a694a5d93594a4e1d3aee3cb2a93c20a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af4b7b89-b4a2-2bf0-01cf-1ce9388e0d46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem filter_smul [∀ i, Zero (β i)] [∀ i, SMulZeroClass γ (β i)] (p : ι → Prop)
    [DecidablePred p] (r : γ) (f : Π₀ i, β i) : (r • f).filter p = r • f.filter p := by
  ext
  simp [smul_apply, smul_ite]

variable (γ β)

/-- `DFinsupp.filter` as a `LinearMap`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Module/Variantfa2aae7bbb4c875d7ebee212e6d34155a694a5d93594a4e1d3aee3cb2a93c20a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Module/Variantfa2aae7bbb4c875d7ebee212e6d34155a694a5d93594a4e1d3aee3cb2a93c20a.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a9be9787b94e99ef09097d789b372dd638cb380` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
