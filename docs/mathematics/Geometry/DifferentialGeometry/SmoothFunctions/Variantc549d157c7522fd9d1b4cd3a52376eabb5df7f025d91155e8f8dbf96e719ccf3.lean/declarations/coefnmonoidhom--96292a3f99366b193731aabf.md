# coeFnMonoidHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:53dd0b37223a4788a507447fdeb29bcb0189e7ad8e0660a6ee3c1a9ba90bd87b",
  "kind": "def",
  "lexical_name": "coeFnMonoidHom",
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
  "slug": "coefnmonoidhom--96292a3f99366b193731aabf",
  "source": {
    "blob": "fa50aeb1bd9d06f3baac27589adf30c1791f6c46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 102,
    "path": "GRWTSK/Geometry/DifferentialGeometry/SmoothFunctions/Variantc549d157c7522fd9d1b4cd3a52376eabb5df7f025d91155e8f8dbf96e719ccf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:96292a3f99366b193731aabfe3e382a35ed6bdbbf38199b556a850822f4fd806",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/SmoothFunctions/Variantc549d157c7522fd9d1b4cd3a52376eabb5df7f025d91155e8f8dbf96e719ccf3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:53dd0b37223a4788a507447fdeb29bcb0189e7ad8e0660a6ee3c1a9ba90bd87b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coeFnMonoidHom {G : Type*} [Monoid G] [TopologicalSpace G] [ChartedSpace H' G]
    [ContMDiffMul I' n G] : C^n⟮I, N; I', G⟯ →* N → G where
  toFun := DFunLike.coe
  map_one' := coe_one
  map_mul' := coe_mul

variable (I N)

/-- For a manifold `N` and a `C^n` homomorphism `φ` between Lie groups `G'`, `G''`, the
'left-composition-by-`φ`' group homomorphism from `C^n⟮I, N; I', G'⟯` to `C^n⟮I, N; I'', G''⟯`. -/
@[to_additive "For a manifold `N` and a `C^n` homomorphism `φ` between additive Lie groups `G'`,
`G''`, the 'left-composition-by-`φ`' group homomorphism from `C^n⟮I, N; I', G'⟯` to
`C^n⟮I, N; I'', G''⟯`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/SmoothFunctions/Variantc549d157c7522fd9d1b4cd3a52376eabb5df7f025d91155e8f8dbf96e719ccf3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/SmoothFunctions/Variantc549d157c7522fd9d1b4cd3a52376eabb5df7f025d91155e8f8dbf96e719ccf3.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa50aeb1bd9d06f3baac27589adf30c1791f6c46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
